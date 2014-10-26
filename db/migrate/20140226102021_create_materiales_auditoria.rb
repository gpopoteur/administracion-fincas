class CreateMaterialesAuditoria < ActiveRecord::Migration
  def change
    create_table :materiales_auditoria do |t|
      t.integer :visitum_id
      t.integer :autorium_id

      t.timestamps
    end
  end
end
