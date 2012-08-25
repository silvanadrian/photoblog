class Comment < ActiveRecord::Base
    belongs_to :post
    validates :commenter, :length => { :minimum => 4 }
    validates :body, :length => { :maximum => 500 }
    validates :commenter, :presence => true
    validates :body, :presence => true
end
