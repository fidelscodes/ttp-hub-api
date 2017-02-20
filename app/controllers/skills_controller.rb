class SkillsController < ApplicationController
  def index
    render json: Skill.all
  end

  def create
    @skill = Skill.find_or_initialize_by(skill_params)
    # binding.pry

    if @skill.save
      if params[:applicant_id]
        @applicant = Applicant.find(params[:applicant_id])
        @applicant.skills << @skill unless @applicant.skills.exists?(@skill)
      end
      render json: @skill, status: :created
    else
      render json: @skill.errors, status: :unprocessable_entity
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:name)
  end

end
