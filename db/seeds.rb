# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# QuestionNode.create!([1{text: "Do you like lemonade?", role: 1},
# 											2{text: "How many cups would you like? (3 cup limit)", role: 2},
# 											3{text: "What size servings would you like?", role: 2},
# 											4{text: "Would you like ice?", role: 2},
# 											5{text: "What else can I get you?", role: 2},
# 											6{text: "Based on what you told me, it sounds like this would complete your order:", role: 3},
# 											7{text: "Do you like lemons?", role: 2},
# 											8{text: "If you like lemons, then you will love lemonade! Are you sure you don't want to give it another shot?", role: 2},
# 											9{text: "Are you thirsty?", role: 2},
# 											10{text: "If you are thirsty, this lemonade can really quench your thirst! Are you sure you don't want to give this lemonade another shot?", role: 2},
# 											11{text: "Are you hungry? We have Cookies! Interested?", role: 2},
# 											12{text: "You're really hard to please. Can you give me some feedback for what you would prefer to see at our lemonade stand?", role: 3}])


AnswerNode.create!([{question_id: 1, text: "Yes", next_question: 2},
										{question_id: 2, text: "One", next_question: 3},
										{question_id: 2, text: "Two", next_question: 3},
										{question_id: 2, text: "Three", next_question: 3},
										{question_id: 3, text: "Small", next_question: 4},
										{question_id: 3, text: "Medium", next_question: 4},
										{question_id: 3, text: "Large", next_question: 4},
										{question_id: 4, text: "Yes", next_question: 5},
										{question_id: 4, text: "No", next_question: 5},
										{question_id: 5, text: "Cookies", next_question: 6},
										{question_id: 5, text: "Water", next_question: 6},
										{question_id: 1, text: "No", next_question: 7},
										{question_id: 7, text: "Yes", next_question: 8},
										# {question_id: 7, text: "No", next_question: 8}, create a no route


										
										])
