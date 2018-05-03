class SingularizeColumnNamesInDots < ActiveRecord::Migration[5.2]
  def change
     rename_column :dots, :players_id, :player_id
     rename_column :dots, :matches_id, :match_id
  end
end
