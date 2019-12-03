class Flat < ApplicationRecord
	belongs_to :user
	mount_uploader :photo, PhotoUploader

	geocoded_by :address
	after_validation :geocode, if: :will_save_change_to_address?

	include PgSearch::Model
		pg_search_scope :search_by_name_and_description_and_address,
		against: [ :name, :description, :address ], using: {
		tsearch: { prefix: true }
	}
end
