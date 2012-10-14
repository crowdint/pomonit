class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name, :host, allow_nil: false
      t.string :state, default: 'enabled', allow_nil: false

      t.timestamps
    end

    add_index :stations, :host, unique: true
    add_index :stations, :state
  end
end
