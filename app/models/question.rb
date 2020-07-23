class Question < ApplicationRecord
  has_many :options, dependent: :delete_all
  accepts_nested_attributes_for :options, allow_destroy: true

  def self.hash_with_options
    data = all.includes(:options)

    options_hash = {}

    data.map { |question| options_hash[question.text] = {type: question.view_type, options: question.options.map { |option| [option.text] }.flatten} }

    options_hash
  end
end