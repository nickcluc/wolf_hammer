class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.date :match_date, null: false
      t.string :course_name

      t.timestamps
    end
  end
end
