class AddImageIdToOkadalists < ActiveRecord::Migration[5.2]
  def change
    add_column :okadalists, :image_id, :string
  end
end
