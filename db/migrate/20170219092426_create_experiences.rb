class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.integer :applicant_id
      t.string :company_name
      t.string :position_title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :volunteer, default: false

      t.timestamps
    end
  end
end
