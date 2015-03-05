# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.create(name: 'Bahia', state: 'Bahia', city: 'Salvador')
Team.create(name: 'Corinthians', state: 'São Paulo', city: 'São Paulo')
Team.create(name: 'Internacional', state: 'Rio Grande do Sul', city: 'Porto Alegre')
Team.create(name: 'Sport', state: 'Pernambuco', city: 'Recife')

# Bahia
bahia_id = Team.find_by_name('Bahia').id
douglas_picture = File.open 'app/assets/images/bahia/douglas.jpg'
Player.create(name: 'Douglas Pires', position: 'Goleiro', age: 24, picture: douglas_picture, team_id: bahia_id)

adriano_picture = File.open 'app/assets/images/bahia/adriano.jpg'
Player.create(name: 'Adriano Alves', position: 'Zagueiro', age: 29, picture: adriano_picture, team_id: bahia_id)

raul_picture = File.open 'app/assets/images/bahia/raul.jpg'
Player.create(name: 'Raul', position: 'Zagueiro', age: 29, picture: raul_picture, team_id: bahia_id)

titi_picture = File.open 'app/assets/images/bahia/titi.jpg'
Player.create(name: 'Titi', position: 'Zagueiro', age: 26, picture: titi_picture, team_id: bahia_id)

bruno_picture = File.open 'app/assets/images/bahia/bruno.jpg'
Player.create(name: 'Bruno Paulista', position: 'Meia', age: 24, picture: bruno_picture, team_id: bahia_id)

lenine_picture = File.open 'app/assets/images/bahia/lenine.jpg'
Player.create(name: 'Lenine', position: 'Meia', age: 23, picture: lenine_picture, team_id: bahia_id)

romulo_picture = File.open 'app/assets/images/bahia/romulo.jpg'
Player.create(name: 'Rômulo', position: 'Meia', age: 19, picture: romulo_picture, team_id: bahia_id)

souza_picture = File.open 'app/assets/images/bahia/souza.jpg'
Player.create(name: 'Souza', position: 'Meia', age: 26, picture: souza_picture, team_id: bahia_id)

jeam_picture = File.open 'app/assets/images/bahia/jeam.jpg'
Player.create(name: 'Jeam', position: 'Atacante', age: 20, picture: jeam_picture, team_id: bahia_id)

leo_picture = File.open 'app/assets/images/bahia/leo.jpg'
Player.create(name: 'Léo Gamalho', position: 'Atacante', age: 28, picture: leo_picture, team_id: bahia_id)

maxi_picture = File.open 'app/assets/images/bahia/maxi.jpg'
Player.create(name: 'Maxi Biancucchi', position: 'Atacante', age: 30, picture: maxi_picture, team_id: bahia_id)

# Sport
sport_id = Team.find_by_name('Sport').id
danilo_picture = File.open 'app/assets/images/sport/danilo.jpg'
Player.create(name: 'Danilo Fernandes', position: 'Goleiro', age: 26, picture: danilo_picture, team_id: sport_id)

alex_picture = File.open 'app/assets/images/sport/alex.jpg'
Player.create(name: 'Alex Silva', position: 'Zagueiro', age: 20, picture: alex_picture, team_id: sport_id)

durval_picture = File.open 'app/assets/images/sport/durval.jpg'
Player.create(name: 'Durval', position: 'Zagueiro', age: 20, picture: durval_picture, team_id: sport_id)

oswaldo_picture = File.open 'app/assets/images/sport/oswaldo.jpg'
Player.create(name: 'Oswaldo', position: 'Zagueiro', age: 22, picture: oswaldo_picture, team_id: sport_id)

naldinho_picture = File.open 'app/assets/images/sport/naldinho.jpg'
Player.create(name: 'Naldinho', position: 'Meia', age: 24, picture: naldinho_picture, team_id: sport_id)

rodrigo_picture = File.open 'app/assets/images/sport/rodrigo.jpg'
Player.create(name: 'Rodrigo Mancha', position: 'Meia', age: 38, picture: rodrigo_picture, team_id: sport_id)

regis_picture = File.open 'app/assets/images/sport/regis.jpg'
Player.create(name: 'Regis', position: 'Meia', age: 22, picture: regis_picture, team_id: sport_id)

wendel_picture = File.open 'app/assets/images/sport/wendel.jpg'
Player.create(name: 'Wendel', position: 'Meia', age: 32, picture: wendel_picture, team_id: sport_id)

felipe_picture = File.open 'app/assets/images/sport/felipe.jpg'
Player.create(name: 'Felipe Azevedo', position: 'Atacante', age: 28, picture: felipe_picture, team_id: sport_id)

mike_picture = File.open 'app/assets/images/sport/mike.jpg'
Player.create(name: 'Mike', position: 'Atacante', age: 21, picture: mike_picture, team_id: sport_id)

samuel_picture = File.open 'app/assets/images/sport/samuel.jpg'
Player.create(name: 'Samuel', position: 'Atacante', age: 24, picture: samuel_picture, team_id: sport_id)
