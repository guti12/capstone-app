# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

QuestionNode.create!([{text: "Do you like lemonade?", role: 1},
											{text: "How many cups would you like? (3 cup limit)", role: 2},
											{text: "What size servings would you like?", role: 2},
											{text: "Would you like ice?", role: 2},
											{text: "What else can I get you?", role: 2},
											{text: "Based on what you told me, it sounds like this would complete your order:", role: 3},
											{text: "Do you like lemons?", role: 2},
											{text: "If you like lemons, then you will love lemonade! Are you sure you don't want to give it another shot?", role: 2},
											{text: "Are you thirsty?", role: 2},
											{text: "If you are thirsty, this lemonade can really quench your thirst! Are you sure you don't want to give this lemonade another shot?", role: 2},
											{text: "Are you hungry? We have Cookies! Interested?", role: 2},
											{text: "You're really hard to please. Can you give me some feedback for what you would prefer to see at our lemonade stand?", role: 3}])



