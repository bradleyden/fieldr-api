class EnableHstore < ActiveRecord::Migration[5.0]
  def change
    enable_extension "hstore"
    add_column :users, :preferences, :hstore
  end
end
