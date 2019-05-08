class AddRelatedLinksToReflection < ActiveRecord::Migration[5.2]
  def change
    add_column :reflections, :related_links, :string
  end
end
