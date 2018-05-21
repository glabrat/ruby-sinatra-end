class CreatePartners < ActiveRecord::Migration[5.2]
  def self.up
    create_table :partners do |t|
      t.string :name, null: false
      t.string :last_name, null: false
      t.integer :rut, null: false
      t.timestamps
    end
    add_index :partners, :rut, unique: true
  end

  def self.down
    drop_table :partners
  end
end
