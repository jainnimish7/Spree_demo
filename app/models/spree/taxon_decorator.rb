Spree::Taxon.class_eval do

  def applicable_filters
    fs = []
    # fs << ProductFilters.taxons_below(self)
    ## unless it's a root taxon? left open for demo purposes

    fs << Spree::Core::ProductFilters.price_filter if Spree::Core::ProductFilters.respond_to?(:price_filter)
    fs << Spree::Core::ProductFilters.selective_brand_filter(self) if Spree::Core::ProductFilters.respond_to?(:selective_brand_filter)
    fs
  end

end