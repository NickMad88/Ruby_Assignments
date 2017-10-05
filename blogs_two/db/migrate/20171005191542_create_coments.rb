class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.text :content
      t.references :commentable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
