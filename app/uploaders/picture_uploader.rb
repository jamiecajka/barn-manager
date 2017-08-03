class PictureUploader < CarrierWave::Uploader::Base
  storage :file

  include CarrierWave::MiniMagick
  process resize_to_fit: [500, 500]
  version :thumb do
    process resize_to_fill: [200, 200]
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
