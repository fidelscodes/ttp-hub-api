class CreateApplicantSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_skills do |t|
      t.integer :applicant_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
