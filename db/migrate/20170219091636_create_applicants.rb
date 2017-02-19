class CreateApplicants < ActiveRecord::Migration[5.0]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :title
      t.string :email
      t.string :location
      t.text :summary

      t.timestamps
    end
  end
end
