class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :text
      t.string :category
      t.string :sub_category
      t.string :view_type

      t.timestamps
    end
  end
end
