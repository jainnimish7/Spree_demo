// to click on signUp link
    shortcut.add("Ctrl+Shift+S",function() {
      //alert(document.URL);
      document.getElementById('sign_up_link').click();
    });
    // to click on search button
    shortcut.add("Shift+S",function() {
      document.getElementById('search_link').click();
    });
    // to click on my account
    shortcut.add("Ctrl+Shift+M",function() {
      document.getElementById('my_account').click();
    });
    // to create new account link
    shortcut.add("Shift+N",function() {
      document.getElementById('create_new_account').click();
    });
    // forgotten password link
    shortcut.add("Shift+F",function() {
      document.getElementById('forgot_password').click();
    });
    // add to cart link
    shortcut.add("Ctrl+Shift+up",function() {
      document.getElementById('add-to-cart-button').click();
    });
    // to empty the cart
    shortcut.add("Ctrl+delete",function() {
      document.getElementById('empty_cart').click();
    });
    // to got to checkout page
    shortcut.add("Ctrl+end",function() {
      document.getElementById('checkout-link').click();
    });
    // to update the cart
    shortcut.add("Ctrl+f3",function() {
      document.getElementById('update-button').click();
    });
