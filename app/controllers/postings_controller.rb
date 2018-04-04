class PostingsController < ApplicationController
  def new
    @posting = Posting.new
    @user = User.find(session[:userid])
    @employer = Employer.find_by(user_id: @user.id)
  end

  def create
    @posting = Posting.new(posting_params)
    @posting.posting_id = Posting.last.posting_id + 1

    if @posting.save
      session[:isUser] = false
      session[:postingid] = @posting.posting_id
      redirect_to locations_url
    else
      render 'new'
  end
  end
  def show
    @user = User.find(session[:userid])
    @percent = 60

    @q1 = RequiredSkill.find_by_sql(
      "SELECT required_skills.posting_id
       FROM required_skills inner join skillsets on #{@user.id} = skillsets.user_id
       WHERE required_skills.skill_id = skillsets.skill_id and required_skills.skill_level = skillsets.skill_level").pluck(:posting_id)

    @q1.each do |sql|
      @q2 = Skillset.find_by_sql(
        "SELECT skillsets.skill_id
         FROM required_skills inner join skillsets on #{@user.id} = skillsets.user_id
         WHERE required_skills.skill_id = skillsets.skill_id and required_skills.skill_level <= skillsets.skill_level and required_skills.posting_id = #{@q1.first}").count

      @q3 = RequiredSkill.find_by_sql(
        "SELECT required_skills.skill_id
         FROM required_skills
         WHERE required_skills.posting_id = #{@q1.first}").count

      @queryPercent = ((@q2.to_f / @q3.to_f) * 100).round(0)

      if @queryPercent >= @percent
        @q4 = Posting.find_by_sql(
          "SELECT * FROM postings
           WHERE #{sql} = postings.id")
      end
    end
  end


    def posting_params
        params.require(:posting).permit(:job_name, :job_description, :employer_id, :location_id,
                                     :positions)
    end
end
