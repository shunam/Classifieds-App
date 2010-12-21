class Picture < ActiveRecord::Base
  has_attachment  :storage => :db_file,
                  :content_type => :image,
                  :max_size => 700.kilobytes,
                  :thumbnails => { :thumb_150 => [150,150] },
                  :processor => "MiniMagick"

  validates_as_attachment
end
