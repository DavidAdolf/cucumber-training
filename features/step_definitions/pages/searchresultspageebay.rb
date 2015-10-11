require 'singleton'

class SearchResultsPageEbay < SitePrism::Page
  include Singleton

  elements :search_results, ".vip"

end

def search_results_page_ebay
  SearchResultsPageEbay.instance
end