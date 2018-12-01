class AddUrlValidations < ActiveRecord::Migration[5.2]
  def change
    change_column :urls, :slug, :string, null: false
    change_column :urls, :original_url, :string, null: false
    add_index :urls, :slug, unique: true
  end
end
