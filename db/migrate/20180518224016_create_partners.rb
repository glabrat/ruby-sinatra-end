class CreatePartners < ActiveRecord::Migration[5.2]
  def self.up
    create_table :partners do |t|
      t.string :name
      t.string :last_name
      t.integer :rut, unique: true
      t.timestamps
    end
  end

  def self.down
    drop_table :partners
  end
end
