[#<QuestionNode id: 1, text: "Do you like lemonade?", role: 1, 
#<QuestionNode id: 2, text: "How many cups would you like? (3 cup limit)", role: 2,
#<QuestionNode id: 3, text: "What size servings would you like?", role: 2,
#<QuestionNode id: 4, text: "Would you like ice?", role: 2,
#<QuestionNode id: 5, text: "What else can I get you?", role: 2,
#<QuestionNode id: 6, text: "Based on what you told me, it sounds like this wou...", role: 3,
#<QuestionNode id: 7, text: "Do you like lemons?", role: 2,
#<QuestionNode id: 8, text: "If you like lemons, then you will love lemonade! A...", role: 2,
#<QuestionNode id: 9, text: "Are you thirsty?", role: 2,
#<QuestionNode id: 10, text: "If you are thirsty, this lemonade can really quenc...", role: 2,


# AnswerNode.create!([{question_id: 1, text: "Yes", next_question_id: 2},
# 										{question_id: 2, text: "One", next_question_id: 3},
# 										{question_id: 2, text: "Two", next_question_id: 3},
# 										{question_id: 2, text: "Three", next_question_id: 3},
# 										{question_id: 3, text: "Small", next_question_id: 4},
# 										{question_id: 3, text: "Medium", next_question_id: 4},
# 										{question_id: 3, text: "Large", next_question_id: 4},
# 										{question_id: 4, text: "Yes", next_question_id: 5},
# 										{question_id: 4, text: "No", next_question_id: 5},
# 										{question_id: 5, text: "Cookies", next_question_id: 6},
# 										{question_id: 5, text: "Water", next_question_id: 6},
# 										{question_id: 1, text: "No", next_question_id: 7},
# 										{question_id: 7, text: "Yes", next_question_id: 8},
# 									  {question_id: 7, text: "No", next_question_id: 9},
# 										{question_id: 8, text: "Yes", next_question_id: 2},
# 										{question_id: 9, text: "Yes", next_question_id: 10},
# 										{question_id: 10, text: "Yes", next_question_id: 2},
# 										{question_id: 10, text: "No", next_question_id: 11},
# 										{question_id: 11, text: "Yes", next_question_id: 6},
# 										{question_id: 11, text: "No", next_question_id: 12},
										
# 										])

Product.create!([{name: "Small Lemonade", keywords: "sweet,small,cup,glass,lemonade,drink,lemons,thirsty", price: 1},
								 {name: "Medium Lemonade", keywords: "sweet,medium,average,normal,cup,glass,lemonade,drink,lemons,thirsty", price: 2},
								 {name: "Large Lemonade", keywords: "sweet,large,very,cup,glass,lemonade,drink,lemons,thirsty", price: 3},
								 {name: "Cookies", keywords: "hungry,snack,cookie,cookies,munch,sweet,chocolate", price: 2},
								 {name: "Water", keywords: "glass,water,cup,unsweetened,thirsty,quench,thirst", price: 1},
	])


