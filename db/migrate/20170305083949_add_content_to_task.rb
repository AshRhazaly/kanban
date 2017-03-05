class AddContentToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :content, :text
  end
end
