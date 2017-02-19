class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :applicant_id
      t.string :title
      t.string :description
      t.string :skills
      t.string :url

      t.timestamps
    end
  end
end
