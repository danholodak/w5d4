class CreateShortenedUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.integer :user_id, null: false, index: {}
      t.text :received_url, null: false
      t.text :shortened_url, null: false, index: {unique: true}


      t.timestamps
    end
    # didn't work
    # add_index :user_id
    # add_index :shortened_url, unique: true
  end
end
