class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :position
      t.string :job_description
      t.float :pay
      t.string :location
      t.integer :company_id
      t.timestamps
    end
  end
end
