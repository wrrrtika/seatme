class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :reservations, :when, :res_time
  end
end
