class CreatePartners < ActiveRecord::Migration[5.2]
  def self.up
    create_table :partners do |t|
    end
  end

  def self.down
    drop_table :partners
  end
end
