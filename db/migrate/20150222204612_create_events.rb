class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.references :category, index: true
      t.text :content
      t.attachment :image
      t.datetime :start_date
      t.datetime :end_date
      t.string :place

      t.timestamps
    end
  end
end
