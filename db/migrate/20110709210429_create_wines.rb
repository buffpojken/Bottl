class CreateWines < ActiveRecord::Migration
  def self.up
    create_table :wines do |t|
      t.string    :name
      t.integer   :producer_id
      t.text      :description
      t.integer   :year
      t.string    :label_file_name
      t.string    :label_content_type
      t.integer   :label_file_size
      t.timestamps
    end
  end

  def self.down
    drop_table :wines
  end
end
