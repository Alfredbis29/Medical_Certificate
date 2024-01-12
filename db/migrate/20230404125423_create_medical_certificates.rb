class CreateMedicalCertificates < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_certificates do |t|
      t.references :patient, null: false, foreign_key: true
      t.text :diagnosis
      t.text :treatment
      t.boolean :approved

      t.timestamps
    end
  end
end
