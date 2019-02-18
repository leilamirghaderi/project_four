# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@student = Student.create(
  firstname: 'Leila',
  lastname: 'Mirghaderi'
)

@reflection = Reflection.create(
  week: 1,
  title: 'Globalization of China',
  reaction: 'The economic globalization of China has transformed the nature of its national policy preferences, calling into question for the rest of the world what their true intentions might very well be.'
  interesting_key_words: 'Capitalism'
)
