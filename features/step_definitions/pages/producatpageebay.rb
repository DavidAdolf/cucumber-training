require 'singleton'

class ProductCartPageEbay < SitePrism::Page
  include Singleton

  element :cart_button, "#isCartBtn_btn"



end

def product_cart_page_ebay
  ProductCartPageEbay.instance
end