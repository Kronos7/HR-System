class CreateBirims < ActiveRecord::Migration
  def change
    create_table :birims do |t|
      t.string :icerik

      t.timestamps
    end
  end
end
