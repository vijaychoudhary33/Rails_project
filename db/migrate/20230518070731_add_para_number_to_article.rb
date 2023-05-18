class AddParaNumberToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :para_numbers, :integer
  end
end
