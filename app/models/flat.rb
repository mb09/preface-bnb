class Flat < ApplicationRecord
	belongs_to :user
	mount_uploader :photo, PhotoUploader

	include PgSearch::Model
		pg_search_scope :search_by_name_and_description_and_address,
		against: [ :name, :description, :address ], using: {
		tsearch: { prefix: true }
	}
end
