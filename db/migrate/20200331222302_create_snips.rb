class CreateSnips < ActiveRecord::Migration[6.0]
  def change
    create_table :snips do |t|
      t.text :description
      t.text :fragment
      t.integer :user_id
      t.integer :version

      t.timestamps
    end
  end
end
