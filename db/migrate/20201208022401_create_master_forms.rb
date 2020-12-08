class CreateMasterForms < ActiveRecord::Migration[6.0]
  def change
    create_table :master_forms do |t|
      t.string :dec_name
      t.string :nok_name
      t.integer :nok_phone_number

      t.timestamps
    end
  end
end
