class Recording < ApplicationRecord
  mount_uploader :recording, RecordingUploader
  validates :name, presence: true
end
