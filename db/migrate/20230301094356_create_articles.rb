class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.text :title
      t.text :subtitle1
      t.text :paragraph1
      t.text :subtitle2
      t.text :paragraph2
      t.text :subtitle3
      t.text :paragraph3
      t.text :conclusion

      t.timestamps
    end
  end
end
