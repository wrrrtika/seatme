class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :user_type

      t.timestamps
    end
  end
end
