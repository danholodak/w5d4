class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :email, null: false, index: {unique: true}
      t.timestamps
    end

    # add_index: :email, unique: true
  end
end
