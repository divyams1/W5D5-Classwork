# == Schema Information
#
# Table name: questions
#
#  id      :integer          not null, primary key
#  poll_id :integer          not null
#  text    :string           not null
#
class Question < ApplicationRecord
    belongs_to :poll, 
        primary_key: :id, 
        foreign_key: :poll_id, 
        class_name: :Poll 

    has_many :answers,
        primary_key: :id,
        foreign_key: :question_id, 
        class_name: :AnswerChoice


    has_many :responses
        through: :answers
        source: :responses
    
end 
