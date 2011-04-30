class CreateWorks < ActiveRecord::Migration
  def self.up
    create_table :works do |t|
      t.string :name
      t.date :created
      t.string :preview_img_url
      t.string :full_img_url
      t.string :note
      t.boolean :visible

      t.timestamps
    end
  end

  def self.down
    drop_table :works
  end
end
