ActiveAdmin.register Imagecomment do
    index do
        
        column :commenter
        column :body
        column :created_at
        column :updated_at
        default_actions
    end
end
