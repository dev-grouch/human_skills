class Profile < ApplicationRecord
  belongs_to :user, optional: true

  has_many :profiles_skills
  has_many :skills, through: :profiles_skills
end
