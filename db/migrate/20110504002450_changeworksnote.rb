class Changeworksnote < ActiveRecord::Migration
  def self.up
    change_column(:works, :note, :text)
  end

  def self.down
    puts '8==========================D'
  end
end
