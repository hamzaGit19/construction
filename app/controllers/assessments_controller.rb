class AssessmentsController < ApplicationController
  before_action :set_options_hash, only: %i[new]
  before_action :set_assessment, only: %i[show]

  def index; end

  def new; end

  def create
    assessment = Assessment.new(report_data: params[:assessment][:report_data])
    redirect_to '/' if assessment.save
  end

  def show
    return unless @assessment

    @answers_hash = @assessment.category_answers_hash
  end

  private

  def set_options_hash
    @options_hash = Question.hash_with_options
  end

  def set_assessment
    @assessment = Assessment.find_by(id: params[:id])
  end
end
