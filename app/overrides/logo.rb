Deface::Override.new(:virtual_path => "spree/shared/_header", 
                     :name => "logo",
                     :replace_contents => "#logo",
                     :text => "<%= link_to  'OnlineSeller', spree.root_path , class: 'logo_link' %>")
