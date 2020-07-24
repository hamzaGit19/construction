class Assessment < ApplicationRecord
  def category_answers_hash
    question_categories = Question.questions_category_hash
    categories = {}

    question_categories.keys.each do |category|
      categories[category] = answers_hash(question_categories[category], self)
    end

    categories
  end

  private 

  def answers_hash(questions, obj)
    answers = {}

    questions.each do |question|
      question_id = obj.report_data[question[:id].to_s]
      if question_id == "true" || question_id == "false"
        answers[question[:text]] = { text: question_id == "true" ? "Yes" : "No" }
      else
        option = Option.find(question_id)
        answers[question[:text]] = { text: option.text }
      end
    end

    answers
  end
end
