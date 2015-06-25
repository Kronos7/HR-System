class CreateUnvans < ActiveRecord::Migration
  def change
    create_table :unvans do |t|
      t.string :icerik

      t.timestamps
    end
  end
end
