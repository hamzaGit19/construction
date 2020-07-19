class AssessmentsController < ApplicationController
  before_action :set_options_hash, only: %i[new]

  def index; end

  def new; end

  private

  def set_options_hash
    @options_hash = Question.hash_with_options
  end
end
