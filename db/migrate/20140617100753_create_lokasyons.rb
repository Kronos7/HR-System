class CreateLokasyons < ActiveRecord::Migration
  def change
    create_table :lokasyons do |t|
      t.string :icerik

      t.timestamps
    end
  end
end
