class CreateTagToSnips < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_to_snips do |t|
      t.integer :tag_id
      t.integer :snip_id

      t.timestamps
    end
  end
end
