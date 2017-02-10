class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
