class CreateShortenedUrLs < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_ur_ls do |t|
      t.integer :user_id, null: false#, index: {unique: true}
      t.text :received_url, null: false
      t.text :shortened_url, null: false


      t.timestamps
    end
    # add_index :user_id
    # add_index :shortened_url, unique: true
  end
end
