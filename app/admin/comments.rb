ActiveAdmin.register Comment , :as => "PostComment" do
    menu :label => "Blog comments"
    
    index do
        
        column :commenter
        column :body
        column :created_at
        column :updated_at
        default_actions
    end
  
end
