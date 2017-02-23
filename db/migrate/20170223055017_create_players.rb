class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :Vorname
      t.string :Nachname
      t.integer :Jahrgang
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
