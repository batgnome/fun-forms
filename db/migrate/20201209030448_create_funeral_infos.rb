class CreateFuneralInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :funeral_infos do |t|
      t.string :fun_home
      t.string :fun_dir
      t.string :fun_title
      t.string :fun_dir_email
      t.timestamp :current_date_and_time

      t.timestamps
    end
  end
end
