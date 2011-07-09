class CreateProducers < ActiveRecord::Migration
  def self.up
    create_table :producers do |t|
      t.string    :name
      t.string    :region
      t.string    :country
      t.text      :description
      t.timestamps
    end
  end

  def self.down
    drop_table :producers
  end
end
