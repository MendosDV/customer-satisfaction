class Client < ApplicationRecord
  validates :first_name, :last_name, :mail, :address, :zip, :type_of_client, :begin_relation, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["first_name", "last_name"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
