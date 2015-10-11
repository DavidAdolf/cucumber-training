require 'singleton'

class LandingPageEbay < SitePrism::Page
  include Singleton

  set_url "http://www.ebay.de/"

  element :search_input, "#gh-ac"
  element :search_button, "#gh-btn"



end

def landing_page_ebay
  LandingPageEbay.instance
end