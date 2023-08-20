class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :mail
      t.string :address
      t.integer :zip
      t.string :type_of_client
      t.string :roomate
      t.date :begin_relation
      t.date :last_call
      t.date :next_call

      t.timestamps
    end
  end
end
