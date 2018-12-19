class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :title, blank: false
      t.string :body, blank: false
      t.datetime :publishdate, blank: false
      t.references :author, index: true, foreign_key: true
      t.timestamps
    end
  end
end
