class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :src_id, null: false
      t.string :src_filename, null: false
      t.string :src_size, null: false
      t.string :src_content_type, null: false
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
