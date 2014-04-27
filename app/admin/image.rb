ActiveAdmin.register Image do
    config.sort_order = "weight_desc"
    index do
        column :thumb do |image|
            link_to(image_tag(image.thumb.url.to_s), admin_image_path(image))
        end
        column :title do |image|
            link_to image.title, admin_image_path(image)
        end
        column 'order', :weight
        column :description
    end
    show do |image|
        attributes_table do
            row :id
            row :title
            row 'Order' do
                image.weight
            end
            row 'preview' do
                image_tag(image.thumb.url.to_s)
            end
            row :thumb
            row :fullsize
            row :description
        end
        active_admin_comments
    end
end
