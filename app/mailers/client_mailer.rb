class ClientMailer < ApplicationMailer
  def welcome_tenant_email
    @client = params[:client]
    @url = 'https://www.google.com/search?q=google+immobiliere+francosuisse&oq=google+immobiliere+francosuisse&aqs=chrome..69i57j69i64l2j69i60.4654j0j4&sourceid=chrome&ie=UTF-8#lrd=0x47f4ea2e24e7d317:0xb72c1bf3b90f226,3,,,,'
    mail(
      # from: 'Service Location <service-location@example.com>',
      to: @client.mail,
      # cc:,
      # bcc:,
      subject: 'Bienvenue chez Immobiliere Francosuisse',
    )
  end

  def welcome_owner_email
    @client = params[:client]
    @url = 'https://www.google.com/search?q=google+immobiliere+francosuisse&oq=google+immobiliere+francosuisse&aqs=chrome..69i57j69i64l2j69i60.4654j0j4&sourceid=chrome&ie=UTF-8#lrd=0x47f4ea2e24e7d317:0xb72c1bf3b90f226,3,,,,'
    mail(
      # from: 'Service Location <service-location@example.com>',
      to: @client.mail,
      # cc:,
      # bcc:,
      subject: 'Bienvenue chez Immobiliere Francosuisse',
    )
  end

  def satisfaction_tenant_email
    @client = params[:client]
    @url = 'https://www.google.com/search?q=l%27immobiliere+francosuisse+google&oq=l%27immobiliere+francosuisse+google&aqs=chrome..69i57j33i10i160l4.9452j0j7&sourceid=chrome&ie=UTF-8#lrd=0x47f4ea2e24e7d317:0xb72c1bf3b90f226,3,,,,'
    mail(
      # from: 'Service Location <service-location@example.com>',
      to: @client.mail,
      # cc:,
      # bcc:,
      subject: 'Bénéficiez de notre offre de parrainage'
    )
  end

  def satisfaction_owner_email
    @client = params[:client]
    @url = 'https://www.google.com/search?q=l%27immobiliere+francosuisse+google&oq=l%27immobiliere+francosuisse+google&aqs=chrome..69i57j33i10i160l4.9452j0j7&sourceid=chrome&ie=UTF-8#lrd=0x47f4ea2e24e7d317:0xb72c1bf3b90f226,3,,,,'
    mail(
      # from: 'Service Location <service-location@example.com>',
      to: @client.mail,
      # cc:,
      # bcc:,
      subject: 'Bénéficiez de notre offre de parrainage'
    )
  end
end
