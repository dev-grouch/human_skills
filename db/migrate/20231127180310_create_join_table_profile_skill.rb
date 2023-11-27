class CreateJoinTableProfileSkill < ActiveRecord::Migration[7.0]
  def change
    create_join_table :profiles, :skills do |t|
      t.index [:profile_id, :skill_id]
      t.index [:skill_id, :profile_id]
    end
  end
end
