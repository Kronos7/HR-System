class CreatePersonels < ActiveRecord::Migration
  def change
    create_table :personels do |t|

      t.timestamps
    end
  end
end
