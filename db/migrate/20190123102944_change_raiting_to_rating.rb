class ChangeRaitingToRating < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :raiting, :rating
  end
end
