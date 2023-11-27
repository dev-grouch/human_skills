class SkillsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_skill, only: %i[ show edit update destroy ]
  before_action :set_skills, only: %i[ index create ]

  def index
    if turbo_frame_request?
      render partial: "skills/skills_list", locals: { skills: @skills }
    else
      render :index
    end
  end

  def show
  end

  def new
    @skill = Skill.new
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def create
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to skill_url(@skill), notice: "Skill was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end

      format.turbo_stream
    end
  end

  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to skill_url(@skill), notice: "Skill was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end

      format.turbo_stream
    end
  end

  def destroy
    @skill.destroy

    respond_to do |format|
      format.turbo_stream
    end
  end

  private
    def set_skill
      @skill = Skill.find(params[:id])
    end

    def set_skills
      if params[:query].present?
        @skills = Skill.where("name ILIKE ?", "%#{params[:query]}%").order(:updated_at)
      else
        @skills = Skill.order(:name)
      end
    end

    def skill_params
      params.require(:skill).permit(:name, :query)
    end
end
