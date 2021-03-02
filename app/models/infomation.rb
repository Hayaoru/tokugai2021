class Infomation < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  with_options presence: true do
  validates :title,:main,:category_id,:url
  end 

  has_one_attached :image
  belongs_to :user
  
end
