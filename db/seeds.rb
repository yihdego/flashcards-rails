# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

d1 = Deck.create(title: "Seahawks Facts", description: "Questions about the Seattle Seahawks football team.")

d2 = Deck.create(title: "Seattle Attractions", description: "Name the neighborhood of various Seattle attractions.")

d3 = Deck.create(title: "Famous people from Seattle", description: "Celebrities who claim Seattle as their home.")

d1.cards << Card.create(question: "Who's the 12th Man?", answer: "the fans")
d1.cards << Card.create(question: "What day did the Beast Quake happen?", answer: "January 8, 2011")
d1.cards << Card.create(question: "Name the coach who took the Seahawks to their first Super Bowl", answer: "Mike Holmgren")

d2.cards << Card.create(question: "Which neighborhood does the troll reside in?", answer: "Fremont")
d2.cards << Card.create(question: "This is Seattle's origin neighborhood", answer: "Pioneer Square")
d2.cards << Card.create(question: "Where the settlers of Seattle originally landed", answer: "Alki Beach")

d3.cards << Card.create(question: "Who's the richest man in the world?", answer: "Bill Gates")
d3.cards << Card.create(question: "This man invented Jeet Kune Do.", answer: "Bruce Lee")
d3.cards << Card.create(question: "He played his guitar upside-down because he was left-handed.", answer: "Jimi Hendrix")
