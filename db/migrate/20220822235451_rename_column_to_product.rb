class RenameColumnToProduct < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :stickers, :sticker
  end
end
