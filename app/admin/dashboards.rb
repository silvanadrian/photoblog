ActiveAdmin::Dashboards.build do
    section "Recent Posts" do
        table_for Post.order("created_at desc").limit(5) do
            column :title
            column :content
            column :created_at
        end
        strong { link_to "View All Posts", admin_posts_path }
    end
    
    
    section "Recent Comments" do
        table_for Comment.order("created_at desc").limit(5) do
            column :commenter            
            column :body
            column :created_at
        end
        strong { link_to "View All Comments", admin_comments_path }
    end
    
  
end
