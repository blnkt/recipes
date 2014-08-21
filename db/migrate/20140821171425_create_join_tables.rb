class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :ratings_recipes do |t|
      t.belongs_to :ratings
      t.belongs_to :recipes
    end

    create_table :recipes_tags do |t|
      t.belongs_to :recipes
      t.belongs_to :tags
    end
  end
end
