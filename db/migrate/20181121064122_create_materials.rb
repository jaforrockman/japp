class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :name
      t.string :category_id
      t.string :dimension_id
      t.string :description

      t.timestamps
    end
  end
end
