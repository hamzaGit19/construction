class AssessmentsController < ApplicationController
  before_action :set_options_hash, only: %i[new]
  before_action :set_assessment, only: %i[show]

  def index; end

  def new; end

  def create
    assessment = Assessment.create(report_data: params[:assessment][:report_data])

    return redirect_to assessment_path(assessment) if assessment.persisted?
    render :new
  end

  def show
    return redirect_to '/' unless @assessment

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
