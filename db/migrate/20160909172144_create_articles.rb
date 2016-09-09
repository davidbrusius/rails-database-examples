class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.references :user, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
