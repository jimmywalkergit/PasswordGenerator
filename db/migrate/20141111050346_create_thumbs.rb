class CreateThumbs < ActiveRecord::Migration
  def change
    create_table :thumbs do |t|
      t.boolean :up
      t.boolean :down

      t.timestamps
    end
  end
end
