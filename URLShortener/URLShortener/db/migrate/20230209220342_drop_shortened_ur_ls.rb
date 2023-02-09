class DropShortenedUrLs < ActiveRecord::Migration[7.0]
  def change
    drop_table :shortened_ur_ls
  end
end
