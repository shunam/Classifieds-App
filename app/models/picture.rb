class Picture < ActiveRecord::Base
  belongs_to :classified

  has_attachment  :storage => :file_system,
                  :content_type => :image,
                  :max_size => 4.megabytes,
                  :thumbnails => { :thumb_150 => [150,150] },
                  :processor => "MiniMagick"

  validates_as_attachment
end
