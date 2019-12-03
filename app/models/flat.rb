class Flat < ApplicationRecord
  belongs_to :host, class_name: 'User'
  mount_uploader :photo, PhotoUploader
end
