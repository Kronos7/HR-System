class CreateEtkinlikBilgisis < ActiveRecord::Migration
  def change
    create_table :etkinlik_bilgisis do |t|
      t.integer :personel_id
      t.date :baslangic
      t.date :bitis
      t.boolean :etkinlik

      t.timestamps
    end
  end
end
