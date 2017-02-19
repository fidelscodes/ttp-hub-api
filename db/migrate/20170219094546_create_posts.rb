class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :applicant_id
      t.integer :employer_id
      t.string :company_name
      t.string :position_title
      t.string :company_site
      t.string :location
      t.string :level
      t.text :description
      t.integer :compensation
      t.text :requirements
      t.text :skills
      t.text :responsibilities
      t.text :perks
      t.text :application_link

      t.timestamps
    end
  end
end
