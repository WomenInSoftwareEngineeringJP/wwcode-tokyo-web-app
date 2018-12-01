class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.string :slug
      t.string :original_url

      t.timestamps
    end
  end
end
