class Skill < ApplicationRecord
  validates :name, uniqueness: true

  has_many :profile_skills
  has_many :profiles, through: :profile_skills
end
