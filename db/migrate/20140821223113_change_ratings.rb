class ChangeRatings < ActiveRecord::Migration
  def change
    rename_column :ratings, :stars, :star
  end
end
