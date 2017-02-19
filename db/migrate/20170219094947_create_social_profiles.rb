class CreateSocialProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :social_profiles do |t|
      t.integer :applicant_id
      t.string :linkedin
      t.string :github
      t.string :twitter
      t.string :facebook
      t.string :slack

      t.timestamps
    end
  end
end
