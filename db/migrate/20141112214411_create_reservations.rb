class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :party_size
      t.datetime :when
      t.text :note

      t.timestamps
    end
  end
end
