class CreateCategories < ActiveRecord::Migration
  
  #Category(id: integer, name: string, parent_id: integer, lft: integer, rgt: integer,
  #         depth: integer, created_at: datetime, updated_at: datetime)
  
  def change
    create_table :categories do |t|
      t.integer :id
      t.string :name
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth
      
      t.datetime :created_at
      t.datetime :updated_at
      
      t.timestamps
    end
  end
end
