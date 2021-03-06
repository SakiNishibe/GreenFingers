class Blog < ApplicationRecord

	default_scope -> { order(updated_at: :DESC) }

	belongs_to :user
	belongs_to :plant
	has_many :blog_comments, dependent: :destroy
	has_many :stamps, dependent: :destroy

	validates :title, length: {minimum: 1, maximum: 100}
	validates :body, length: {minimum: 9}

	attachment :eyecatch_img
	acts_as_taggable

	scope :is_published, -> { where(status: true) }
	scope :is_draft, -> { where(status: false) }
end
