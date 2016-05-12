Deface::Override.new(:virtual_path => "spree/user_sessions/new",
  :name => "replace_link",
  :replace => 'div.text-center',
  :text => "<div class='text-center'>
            <%= Spree.t(:or) %> 
                <%= link_to Spree.t(:create_a_new_account), spree.signup_path,title: 'Press Shift+N to create new account', id: 'create_new_account' %> |
                <%= link_to Spree.t(:forgot_password), spree.recover_password_path, title:
                'Press Shift+F for forgotten password', id: 'forgot_password' %>
          </div>",
  :disabled => false,
)