# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 

Response.destroy_all
AnswerChoice.destroy_all 
Question.destroy_all 
Poll.destroy_all 
User.destroy_all


user1= User.create!(username:'Bob')
user2= User.create!(username:'Jane')

poll1 = Poll.create!(user_id: user1.id, title: 'how to cook?')
poll2 = Poll.create!(user_id: user2.id, title: 'how to swim?')

question1= Question.create!(poll_id: poll1.id, text:'how to make eggs?')
question2= Question.create!(poll_id: poll1.id, text:'how to make toast?')
question3 = Question.create!(poll_id: poll2.id, text: 'how to float?')

answer1 = AnswerChoice.create!(text: 'scrambled',question_id: question1.id , user_id: user1.id )
answer2 = AnswerChoice.create!(text: 'boiled',question_id: question1.id , user_id: user2.id )
answer3 = AnswerChoice.create!(text: 'poached',question_id: question1.id , user_id: user1.id)
answer4 = AnswerChoice.create!(text: 'relax',question_id: question2.id , user_id: user2.id)
answer5 = AnswerChoice.create!(text: 'back',question_id: question2.id , user_id: user1.id)

response1 = Response.create!(answer_choice_id: answer1.id, user_id: user1.id)
response2 = Response.create!(answer_choice_id: answer2.id, user_id: user1.id)
response3 = Response.create!(answer_choice_id: answer3.id, user_id: user2.id)
response4 = Response.create!(answer_choice_id: answer4.id, user_id: user2.id)
response5 = Response.create!(answer_choice_id: answer5.id, user_id: user1.id)