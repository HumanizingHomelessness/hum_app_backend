class CreateWishlistItems < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlist_items do |t|
      t.references :wishlist, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
