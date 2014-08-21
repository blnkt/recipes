class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

     create_table :tags do |t|
      t.string :description
      t.timestamps
    end

     create_table :ratings do |t|
      t.integer :stars
    end
  end
end
