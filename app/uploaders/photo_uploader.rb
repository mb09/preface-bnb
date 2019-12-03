class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def public_id
    return "preface-bnb-listing/" + Cloudinary::Utils.random_public_id;
  end
  
  def extension_white_list
    if document_type == 'image'
      %w(jpg jpeg gif png)
    end
  end
end
