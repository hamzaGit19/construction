class Question < ApplicationRecord
  has_many :options, dependent: :delete_all

  def self.hash_with_options
    data = all.includes(:options)

    options_hash = {}

    data.map { |question| options_hash[question.text.to_sym] = question.options.map { |option| [option.text] }.flatten if question.view_type == 'dropdown' }

    options_hash
  end
end
