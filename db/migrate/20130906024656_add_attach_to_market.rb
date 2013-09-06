class AddAttachToMarket < ActiveRecord::Migration
  def change
    add_column :markets, :attachment_file_name, :string
    add_column :markets, :attachment_content_type, :string
    add_column :markets, :attachment_file_size, :integer
    add_column :markets, :attachment_updated_at, :datetime
  end
end
