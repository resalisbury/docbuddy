class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :color
      t.string :wish

      t.timestamps null: false
    end
  end
end
