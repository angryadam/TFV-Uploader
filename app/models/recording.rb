class Recording < ApplicationRecord
  mount_uploader :recording, RecordingUploader
  validates :name, presence: true, uniqueness: true
  validates :recording, presence: true
end
