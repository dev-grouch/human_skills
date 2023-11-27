class SkillsController < ApplicationController
  before_action :set_skill, only: %i[ show edit update destroy ]

  def index
    if params[:query].present?
      @skills = Skill.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @skills = Skill.all
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

    def skill_params
      params.require(:skill).permit(:name, :query)
    end
end
