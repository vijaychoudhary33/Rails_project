class RemoveParaNumbersFromArticle < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :para_numbers, :integer
  end
end
