class AddMyStickerToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :my_stickers, foreign_key: { to_table: :products }
  end
end
