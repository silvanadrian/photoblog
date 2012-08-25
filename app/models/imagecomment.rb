class Imagecomment < ActiveRecord::Base
    belongs_to :image
    validates :commenter, :presence => true
    validates :body, :presence => true
end
