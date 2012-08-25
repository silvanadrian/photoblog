class CreateImagecomments < ActiveRecord::Migration
  def change
    create_table :imagecomments do |t|
        t.string :commenter
        t.text :body
        t.references :image
      t.timestamps
    end
  end
end
