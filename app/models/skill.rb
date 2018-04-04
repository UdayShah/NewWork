class Skill < ApplicationRecord
  before_save :downcase_skill_name
  validates :skill_name, presence: true

  def downcase_skill_name
      self.skill_name = skill_name.downcase
  end
end
