class CreateGrapes < ActiveRecord::Migration
  def self.up
    create_table :grapes do |t|
      t.string    :name      
      t.timestamps
    end
    
    create_table :grapes_wines, :id => false do |t|
      t.integer :wine_id
      t.integer :grape_id
    end
  end

  def self.down
    drop_table :grapes
    drop_table :grapes_wines
  end
end
