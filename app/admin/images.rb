ActiveAdmin.register Image do
    form do |f|
        f.inputs "Image Details" do
            f.input :category
            f.input :title
            f.input :content
            f.input :photo
        end
        f.buttons
    end
end
