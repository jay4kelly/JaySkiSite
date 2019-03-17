class AddMountainToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :mountain, foreign_key: true
  end
end
