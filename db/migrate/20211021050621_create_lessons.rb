class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :category
      t.string :shortcut
      t.string :description

      t.timestamps
    end
  end
end
