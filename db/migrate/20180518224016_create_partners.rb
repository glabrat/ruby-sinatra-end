class CreatePartners < ActiveRecord::Migration[5.2]
  def self.up
    create_table :partners do |t|
      t.string :name
      t.string :last_name
      t.integer :rut
      t.timestamps
    end
    add_index :partners, :rut, unique: true
  end

  def self.down
    drop_table :partners
  end
end
