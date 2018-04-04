class SkillsetsController < ApplicationController
  def new
    @skillset = Skillset.new
    @skill_level = SkillLevel.all
    @user = User.find_by(user_id: session[:userid])
  end

  def show
  end

  def create
    @skillset = Skillset.new(skillset_params)

    @newSkill = Skill.new(skill_params)

    if Skill.exists?(:skill_name => @newSkill.skill_name.downcase)
      @skill = Skill.find_by(skill_name: @newSkill.skill_name.downcase)
      @skillset.skill_id = @skill.id
    else
      if @newSkill.save
        @skillset.skill_id = @newSkill.id
      end
    end

    if Skillset.exists?(:user_id => session[:userid], :skill_id => @skillset.skill_id)
      flash[:notsaved] = "Skill already added"
      redirect_to skillsets_url
    else
      if @skillset.save
        flash[:saved] = "Skill Added"
        redirect_to skillsets_url
      else
        flash[:notsaved] = "Error. Please try again"
        redirect_to skillsets_url
      end
    end
  end

  def submit
    flash[:created] = "You account has been created. Please log in"
    redirect_to login_url
  end

  private
    def skillset_params
      params.require(:skillset).permit(:user_id, :skill_level)
    end

    def skill_params
      params.require(:skills).permit(:skill_name)
    end
end
