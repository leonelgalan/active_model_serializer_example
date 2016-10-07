# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(title: 'First post: Welcome!',
            excerpt: 'The beginning of something great',
            content: <<-EOS)
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu porttitor odio, sed finibus turpis. Fusce placerat velit eget ante blandit tempor. Donec convallis iaculis lectus. Duis nec diam id quam ultrices mollis eget rhoncus purus. Morbi eget massa elit. Curabitur bibendum sit amet magna at rutrum. Donec tincidunt augue lorem, sit amet semper erat hendrerit at. Morbi et condimentum velit. Morbi eu nisi id lorem laoreet porttitor a eu ligula. Nulla sagittis justo eget convallis sodales. Ut id varius mauris, vel vestibulum odio.
EOS
