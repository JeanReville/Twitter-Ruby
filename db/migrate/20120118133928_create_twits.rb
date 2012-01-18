class CreateTwits < ActiveRecord::Migration
  def change
    create_table :twits do |t|

      t.timestamps
    end
  end
end
