class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :word
      t.text :definition

      t.timestamps
    end
  end
end
