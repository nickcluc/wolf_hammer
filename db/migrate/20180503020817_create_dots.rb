class CreateDots < ActiveRecord::Migration[5.2]
  def change
    create_table :dots do |t|
      t.references :matches, index: true
      t.references :players, index: true
    end
  end
end
