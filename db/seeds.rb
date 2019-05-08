# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.destroy_all
Reflection.destroy_all
@leila = Student.create(
  firstname: 'Leila',
  lastname: 'Mirghaderi'
)

@mehrdad = Student.create(
  firstname: 'Mehrdad',
  lastname: 'Sheikholeslami'
)

@one = Reflection.create(week: 12, title: 'Globalization of China', reaction: 'The economic globalization of China has transformed the nature of its national policy preferences, calling into question for the rest of the world what their true intentions might very well be.', related_links: 'https://asiasociety.org/policy-institute?gclid=Cj0KCQjwkoDmBRCcARIsAG3xzl8oJj3umCuVSccqEpvv4XBOvWuJiGDSWDQzVgZDH-4xWmCI7atnbigaAtyDEALw_wcB', student: @leila)

@two = Reflection.create(week: 14, title: 'Globalization and Religion', reaction: 'The twenty-first century is witnessing a resurgence and globalization of religion.', related_links:  'https://bahaiteachings.org/such-thing-worlds-best-religion?utm_source=adwords&gclid=Cj0KCQjwkoDmBRCcARIsAG3xzl-JVWvle7rlBki42XbwQpqdkXGr0ZkehobwfkGBrNw2IUz7A5ml2mQaAq2FEALw_wcB', student: @mehrdad)
