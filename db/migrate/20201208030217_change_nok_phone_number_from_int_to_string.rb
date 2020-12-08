class ChangeNokPhoneNumberFromIntToString < ActiveRecord::Migration[6.0]
  def change
  	change_column :master_forms, :nok_phone_number, :string
  end
end
