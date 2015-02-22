class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.references :category, index: true
      t.text :content
      t.attachment :image

      t.timestamps
    end
  end
end
