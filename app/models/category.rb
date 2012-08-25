class Category < ActiveRecord::Base
    has_many :images, :order => 'created_at DESC'
    
end
