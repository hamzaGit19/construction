class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
      t.json :report_data, default: {}

      t.timestamps
    end
  end
end
