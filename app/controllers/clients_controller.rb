class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :destroy, :edit, :update]

  def index
    @last_mail = Client.order(last_call: :desc).limit(3)
    @next_mail = Client.order(last_call: :asc).limit(3)
    @sum_last_mail = sum_last_mail

    @q = Client.ransack(params[:q])
    sort_param = params[:sort] || 'created_at desc'
    @clients = @q.result(distinct: true).order(sort_param).paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.last_call = @client.begin_relation
    @client.next_call = @client.last_call + 6.month

    if @client.save
      if @client.type_of_client == "locataire"
        ClientMailer.with(client: @client).welcome_tenant_email.deliver_now
      else
        ClientMailer.with(client: @client).welcome_owner_email.deliver_now
      end
      redirect_to '/', notice: "Un mail de bienvenu a été envoyé à #{@client.first_name} #{@client.last_name}"
    else
      puts @client.errors.full_messages
      render :new
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.json do
        render json: {
          partial: render_to_string(
            partial: 'components/edit_form',
            locals: { client: @client },
            formats: :html
          )
        }
      end
    end
  end

  def update
    @client.update(client_params)
    redirect_to client_path(@client)
  end

  def destroy
    @client.destroy
    # Envoyer un message quand on supprime ?
    redirect_to clients_path, alert: "Votre client a bien été supprimé", status: :see_other
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :mail, :address, :zip, :type_of_client, :roomate, :begin_relation, :last_call, :next_call)
  end

  def set_client
    @client = Client.find(params[:id])
  end

  def sum_last_mail
    clients = Client.all
    sum_last_mail = 0
    date = (Date.today - 30.days)

    clients.each do |client|
      if client.last_call >= date
        sum_last_mail += 1
      end
    end

    sum_last_mail
  end

  def self.ask_satisfaction
    puts 'Hello from Ask Satisfaction'
    clients_to_notify = Client.where(next_call: Date.today).all
    if clients_to_notify.count > 0
      clients_to_notify.each do |client|
        puts "Client #{client.first_name} #{client.last_name} selected"
        if client.type_of_client == "locataire"
          ClientMailer.with(client: client).satisfaction_tenant_email.deliver_now
          puts "Mail send at #{client.mail}"
        else
          ClientMailer.with(client: client).satisfaction_owner_email.deliver_now
          puts "Mail send at #{client.mail}"
        end
        client.update(last_call: Date.today, next_call: Date.today + 180.days)
        puts "Last call updated at #{client.last_call} and next call updated at #{client.next_call}"
      end
    else
      puts "No clients to notify"
    end
  end
end
