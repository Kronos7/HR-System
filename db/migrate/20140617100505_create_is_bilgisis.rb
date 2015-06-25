class CreateIsBilgisis < ActiveRecord::Migration
  def change
    create_table :is_bilgisis do |t|
      t.integer :personel_id
      t.string :calisma_sekli
      t.integer :haftalik_saat
      t.string :unvan
      t.string :birim
      t.string :lokasyon

      t.timestamps
    end
  end
end
