class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :genre
      t.string :comment
      t.text :image
      t.timestamps
    end
  end
end
