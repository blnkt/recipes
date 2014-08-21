class ChangeMoreFixes < ActiveRecord::Migration
  def change
    change_table :ratings_recipes do |t|
    t.remove :ratings_id
    t.remove :recipes_id
    end
    change_table :recipes_tags do |t|
    t.remove :recipes_id
    t.remove :tags_id
    end
  end
end
