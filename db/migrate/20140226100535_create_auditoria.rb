class CreateAuditoria < ActiveRecord::Migration
  def change
    create_table :auditoria do |t|
      t.integer :auditor_id

      t.timestamps
    end
  end
end
