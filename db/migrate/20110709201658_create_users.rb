class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table "users" do |t|
      t.column :login,                      :string, :limit => 40
      t.column :name,                       :string, :limit => 100, :default => '', :null => true
      t.column :email,                      :string, :limit => 100
      t.column :crypted_password,           :string, :limit => 40
      t.column :salt,                       :string, :limit => 40
      t.column :created_at,                 :datetime
      t.column :updated_at,                 :datetime
      t.column :avatar_file_name,           :string
      t.column :avatar_content_type,        :string
      t.column :avatar_file_size,           :integer
    end
    add_index :users, :login, :unique => true
  end

  def self.down
    drop_table "users"
  end
end
