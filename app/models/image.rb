class Image < ActiveRecord::Base
    belongs_to :category
    has_many :imagecomments, :order => 'created_at DESC'
    has_attached_file :photo, :styles => { :small => "150x150>", :big => "800x130#", :category => "800x" },
    :url => "/assets/images/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"
    validates_attachment_presence :photo
    validates_attachment_size :photo, :less_than => 5.megabytes
    validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
    
end
