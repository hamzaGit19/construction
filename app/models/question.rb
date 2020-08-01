class Question < ApplicationRecord
  has_many :options, dependent: :delete_all
  accepts_nested_attributes_for :options, allow_destroy: true

  scope :by_category, -> (category) { where(category: category) }
  default_scope { order(created_at: :asc) }

  CATEGORIES = ["source", "pathway", "receptor"]

  def self.hash_with_options
    data = all.includes(:options)

    options_hash = {}

    data.map { |question| options_hash[question.text] = {id: question.id, type: question.view_type, options: question.options.map { |option| { id: option.id, text: option.text } }.flatten} }

    options_hash
  end

  def self.questions_category_hash
    hash = {}

    CATEGORIES.each do |category|
      hash[category] = Question.by_category(category).map{ |question| {id: question.id, text: question.text} }
    end

    hash
  end
end
