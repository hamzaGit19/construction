class AssessmentsController < ApplicationController
  def index
    @data = Question.includes(:options)
  end
end
