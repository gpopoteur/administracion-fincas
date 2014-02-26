class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :nombre
      t.float :precio

      t.timestamps
    end
  end
end
