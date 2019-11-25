# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ccp.destroy_all
Cat.destroy_all

one = Ccp.create(name: "Becky")
two = Ccp.create(name: "Mitch")

c1 = Cat.create(name: 'Mini Mitch', breed: 'Calico', ccp_id: two.id)
c2 = Cat.create(name: 'Bella', breed: 'Maine Coon', ccp_id: one.id)
