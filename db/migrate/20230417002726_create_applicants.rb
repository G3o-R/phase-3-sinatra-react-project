class CreateApplicants < ActiveRecord::Migration[6.1]
  def change
    create_table :applicants do |t|
      t.string :applicant_name
      t.string :status
      t.integer :job_id
      t.timestamps
    end
  end
end
