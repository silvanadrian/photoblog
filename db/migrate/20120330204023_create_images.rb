class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
        t.string :title
        t.text :content
        t.references :category
        t.timestamps
    end
      add_index :images, :category_id
  end
end
