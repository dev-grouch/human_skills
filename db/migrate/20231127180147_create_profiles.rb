class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :link
      t.text :bio
      t.references :user, optional: true, foreign_key: true

      t.timestamps
    end
  end
end
