class Blog < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre


  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :text
    validates :image
    validates :genre_id, numericality: { other_than: 1 } 
  end

  def was_attached?
    self.image.attached?
  end

  def self.search(search)
    if search != ""
      Blog.where('title LIKE(?)', "%#{search}%")
    else
      Blog.all
    end
  end

end
