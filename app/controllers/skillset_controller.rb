class SkillsetController < ApplicationController
  def new
    @skillset = Skillset.new
    @skill_level = SkillLevel.all
    @user = User.find_by(user_id: session[:userid])
  end

  def create
    @skillset = Skillset.new(skillset_params)

    flash[:found] = "getting to create"

    @newSkill = Skill.new(skill_params)

    if Skill.exists?(:skill_name => @newSkill.skill_name)
      @skill = Skill.find_by(skill_name: @newSkill.skill_name.downcase)
      @skillset.skill_id = @skill.id
    else
      if @newSkill.save
        @skillset.skill_id = @newSkill.id
      end
    end

    if @skillset.save
      flash[:saved] = "You account has been created. Please log in"
      redirect_to login_url
    else
      flash[:notsaved] = "Error. Please try again"
      redirect_to skillsets_url
    end
  end

  private
    def skillset_params
      params.require(:skillset).permit(:user_id, :skill_level)
    end

    def skill_params
      params.require(:skills).permit(:skill_name)
    end
end
