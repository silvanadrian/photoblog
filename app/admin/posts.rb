ActiveAdmin.register Post do
    menu :label => "Blog"
    
    index do
        
        column :title
        column :content
        column :created_at
        column :updated_at
        default_actions
    end
end
