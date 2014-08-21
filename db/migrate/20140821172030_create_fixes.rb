class CreateFixes < ActiveRecord::Migration
  def change
    change_table :ratings_recipes do |t|
      t.belongs_to :rating
      t.belongs_to :recipe
    end

    change_table :recipes_tags do |t|
      t.belongs_to :recipe
      t.belongs_to :tag
    end
  end
end
