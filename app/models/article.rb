class Article < ApplicationRecord
  belongs_to :user

  has_many :article_tags

  has_many :tags,
    through: :article_tags

  validates :title,
    presence: true,
    length: { minimum: 6, maximum: 100 }

  validates :description,
    presence: true,
    length: { minimum: 10, maximum: 300 }
end
