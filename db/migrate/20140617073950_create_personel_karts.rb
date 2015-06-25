class CreatePersonelKarts < ActiveRecord::Migration
  def change
    create_table :personel_karts do |t|
      t.integer :personel_id
      t.string :isim
      t.string :soyisim
      t.integer :tc_kimlik
      t.date :dogum_tarihi
      t.string :baba_adi
      t.string :anne_adi
      t.integer :ehliyet_no
      t.string :lise
      t.string :universite
      t.integer :cep_no
      t.integer :ev_no
      t.text :adres
      t.text :proje_bil
      t.text :sinav_bil
      t.text :bilgisayar_bil
      t.string :kan_gr
      t.timestamps
    end

    add_index(:personel_karts, [:tc_kimlik], :unique => true)
  end
end
