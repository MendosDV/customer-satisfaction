Client.destroy_all
User.destroy_all

User.create(email: 'service-location@immobiliere-francosuisse.fr', password: 'ben846jma')

puts 'Users created successfully.'

puts "Create all of the clients"

DAYS_TO_ADD = 180

Client.create(
  first_name: "Louis",
  last_name: "Renault",
  mail: "louis@doe.fr",
  address: "29 rue Guilloud",
  zip: "69003",
  type_of_client: "propriétaire",
  begin_relation: "2023-03-20",
  last_call: "2019-03-20",
  next_call: Date.parse("2023-03-20") + 6.month,
  roomate: "Louis Clermane"
)

Client.create(
  first_name: "Fabien",
  last_name: "Choinlin",
  mail: "fabien@doe.fr",
  address: "57 rue du Commandant Ayass",
  zip: "69007",
  type_of_client: "locataire",
  begin_relation: "2023-01-07",
  last_call: "2023-01-07",
  next_call: Date.parse("2023-01-07") + 6.month
)

Client.create(
  first_name: "Andy",
  last_name: "Delord",
  mail: "andy@doe.fr",
  address: "16 rue Maurice Bouchor",
  zip: "69007",
  type_of_client: "propriétaire",
  begin_relation: "2023-07-19",
  last_call: "2023-07-19",
  next_call: Date.parse("2023-07-19") + 6.month,
  roomate: "Lucie Reiger"
)

Client.create(
  first_name: "Manuel",
  last_name: "Ugarte",
  mail: "manuel@doe.fr",
  address: "25 rue Boileau",
  zip: "69006",
  type_of_client: "locataire",
  begin_relation: "2023-08-12",
  last_call: "2023-08-12",
  next_call: Date.parse("2023-08-12") + 6.month
)

Client.create(
  first_name: "John",
  last_name: "Luigi",
  mail: "john@doe.fr",
  address: "30 rue de la Chapelle.",
  zip: "69100",
  type_of_client: "propriétaire",
  begin_relation: "2023-03-10",
  last_call: "2023-03-10",
  next_call: Date.parse("2023-03-10") + 6.month,
  roomate: "Mathilde Augier"
)

Client.create(
  first_name: "Henry",
  last_name: "Beaudoin",
  mail: "henry@doe.fr",
  address: "4 rue de la Paix",
  zip: "69005",
  type_of_client: "locataire",
  begin_relation: "2023-05-27",
  last_call: "2023-05-27",
  next_call: Date.parse("2023-05-27") + 6.month
)

Client.create(
  first_name: "Lise",
  last_name: "Chouris",
  mail: "lise@doe.fr",
  address: "183 Boulevard de l'Europe",
  zip: "69100",
  type_of_client: "propriétaire",
  begin_relation: "2023-06-10",
  last_call: "2023-06-10",
  next_call: Date.parse("2023-06-10") + 6.month,
  roomate: "Laurie Chochan"
)

Client.create(
  first_name: "Damien",
  last_name: "Souris",
  mail: "damien@doe.fr",
  address: "35 rue Juliette Récamier",
  zip: "69006",
  type_of_client: "locataire",
  begin_relation: "2023-03-27",
  last_call: "2023-03-27",
  next_call: Date.parse("2023-03-27") + 6.month
)

puts "Clients created"
