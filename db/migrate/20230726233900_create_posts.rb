class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :post_url
      t.string :post_title

      t.timestamps
    end
  end
end
