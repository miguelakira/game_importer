# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  if Console.all.empty?
    consoles = Console.create([
      {name: 'PS3'},
      {name: 'Xbox 360'},
      {name: 'Wii'},
      {name: 'Wii U'},
      {name: 'PS Vita'},
      {name: 'PSP'},
      {name: 'Nintendo DS'},
      {name: 'Nintendo 3DS'},
      {name: 'PS4'},
      {name: 'PC/Mac'}
      ])
  end

  if Product.all.empty?
    products = Product.create([
      {name: 'Uncharted 2', console_id: 1, cost: 30, price: 59, sales: 10 },
      {name: 'Uncharted 3', console_id: 1, cost: 40, price: 79, sales: 7 },
      {name: 'Far Cry 3', console_id: 1, cost: 20, price: 39, sales: 2 },
      {name: 'Battlefield 3', console_id: 1, cost: 45, price: 89, sales: 15 },
      {name: 'Call of Duty Modern Warfare 3', console_id: 1, cost: 30, price: 59, sales: 15 },
      {name: 'God of War 3', console_id: 1, cost: 30, price: 59, sales: 8 },
      {name: 'Killzone 3', console_id: 1, cost: 15, price: 29, sales: 3 },

      {name: 'Gears of War 2', console_id: 2, cost: 30, price: 59, sales: 10 },
      {name: 'Gears of War 3', console_id: 2, cost: 40, price: 79, sales: 7 },
      {name: 'Far Cry 3', console_id: 2, cost: 20, price: 39, sales: 2 },
      {name: 'Battlefield 3', console_id: 2, cost: 45, price: 89, sales: 15 },
      {name: 'Call of Duty Modern Warfare 3', console_id: 2, cost: 30, price: 59, sales: 15 },
      {name: 'Halo 3', console_id: 2, cost: 30, price: 59, sales: 8 },
      {name: 'Alan Wake', console_id: 2, cost: 15, price: 29, sales: 3 }
      ])
    end

