ActiveAdmin.register Image do
    config.sort_order = "weight_desc"
    index do
        column :thumb do |image|
            #link_to(image_tag(image.thumb.url.to_s), admin_image_path(image))
        end
        column :title do |image|
            link_to image.title, admin_image_path(image)
        end
        column 'order', :weight
        column :description
        default_actions
    end
    show do |image|
        attributes_table do
            row :id
            row :title
            row 'Order' do
                image.weight
            end
            row 'thumb' do
                image_tag image.file.thumb
            end
        end
        active_admin_comments
    end
    form do |f|
        f.semantic_errors *f.object.errors.keys
        f.inputs 'General' do
            f.input :title
            f.input :file, :as => :file
            #f.form_buffers.last << '<span class="action_item"><a>recrop</a></span>'.html_safe
            if f.object.file.url
                f.form_buffers.last << f.template.content_tag(:li, :class => 'file input required') do
                    f.template.content_tag(:label, "Thumbnail", :class=>:label, :for=>:thumb) +
                    f.template.tag(:input, type: :hidden, name: "bar[]", value: "baz") +
                    f.template.tag(:p, :class => 'inline-hints') +
                    f.template.tag(:a, :href=>'#') do
                        f.template.image_tag(f.object.file.url(:thumb))
                    end
                end
            end
            f.input :weight, :label => 'Order'
            f.input :description, :as => :text
        end
        f.actions
    end
end
