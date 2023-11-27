class Profile < ApplicationRecord
  belongs_to :user, optional: true

  has_many :profile_skills
  has_many :skills, through: :profile_skills
end
