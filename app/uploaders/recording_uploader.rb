class RecordingUploader < CarrierWave::Uploader::Base
  include CarrierWaveDirect::Uploader

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{model.id}"
  end

  # Add a white list of extensions which are allowed to be uploaded.
  def extension_whitelist
    %w(mov mpeg mpg mp4 avi mp3)
  end

end
