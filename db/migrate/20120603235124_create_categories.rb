class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :id
      t.string :integer,
      t.string :name
      t.string :string,
      t.string :parent_id
      t.string :integer,
      t.string :lft
      t.string :integer,
      t.string :rgt
      t.string :integer

      t.timestamps
    end
  end
end
