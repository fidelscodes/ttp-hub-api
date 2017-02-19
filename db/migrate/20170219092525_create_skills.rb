class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.integer :applicant_id
      t.string :name

      t.timestamps
    end
  end
end
