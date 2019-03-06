class ChangeMoonroofCarTo < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars  :moonroof :sunroof
  end
end
