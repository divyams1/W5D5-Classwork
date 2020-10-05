# == Schema Information
#
# Table name: responses
#
#  id               :integer          not null, primary key
#  answer_choice_id :integer          not null
#  user_id          :integer          not null
#
class Response < ApplicationRecord

    belongs_to :user,
        primary_key: :id, 
        foreign_key: :user_id, 
        class_name: :User 
    
    belongs_to :answer_choice,
        primary_key: :id,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice

    def not_duplicate_response
    end 

    def sibling_responses 
    end 

    def question
    end 
end 

# class Invoice < ApplicationRecord
#   # validate tells the class to run these methods at validation time.
#   validate :discount_cannot_be_greater_than_total_value

#   private
#   def discount_cannot_be_greater_than_total_value
#     if discount > total_value
#       errors[:discount] << 'can\'t be greater than total value'
#     end
#   end
# end
