class CreateCalismaSeklis < ActiveRecord::Migration
  def change
    create_table :calisma_seklis do |t|
      t.string :icerik

      t.timestamps
    end
  end
end
