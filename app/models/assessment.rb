class Assessment < ApplicationRecord
  validates_presence_of :report_data

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
      option_id = obj.report_data[question[:id].to_s]
      option = Option.find(option_id)
      answers[question[:text]] = { text: option.text, hazards: option.hazards, image: option.image, question_id: question[:id] }
    end

    answers
  end
end
