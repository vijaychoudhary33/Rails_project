class Article < ApplicationRecord
  before_save :update_book_name
  def update_book_name
    self.title =title.downcase
  end
  # after_initialize do |user|
    # puts "You have initialized an object!"
  # end
  after_find do |user|
    puts "You have found an object!"
  end

  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
