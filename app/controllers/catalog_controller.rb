# frozen_string_literal: true
class CatalogController < ApplicationController
  include Blacklight::Catalog

  configure_blacklight do |config|
    config.document_model = ::SolrDocument

    ## Class for converting Blacklight's url parameters to into request parameters for the search index
    config.search_builder_class = ::SearchBuilder

    ## Default parameters to send to solr for all search-like requests. See also SearchBuilder#processed_parameters
    config.default_solr_params = {
      rows: 10
    }

    # solr field configuration for search results/index views
    config.index.title_field = 'title_tesi'
    config.index.partials = [:index_header, :thumbnail, :index]

    # disable default blacklight features
    config.index.document_actions.clear
    config.index.collection_actions.clear
    config.show.document_actions.clear
    config.navbar.partials.clear

    # solr fields to be displayed in the index (search results) view
    #   The ordering of the field names is the order of the display
    config.add_index_field 'subtitle_tesi', label: 'Subtitle'
    config.add_index_field 'author_ssim', label: 'Author'

    # solr fields to be displayed in the show (single result) view
    #   The ordering of the field names is the order of the display
    config.add_show_field 'subtitle_tesi', label: 'Subtitle'
    config.add_show_field 'author_ssim', label: 'Author'

    # solr fields to be displayed in the search facets
    #   The ordering of the field names is the order of the display
    config.add_facet_field 'author_ssim', label: 'Author'
    config.add_facet_field 'subject_topic_ssim', label: 'Subject'
    config.add_facet_field 'pub_date_ssim', label: 'Publication Date'
    config.add_facet_field 'language_ssim', label: 'Language'

    # Have BL send all facet field names to Solr, which has been the default
    # previously. Simply remove these lines if you'd rather use Solr request
    # handler defaults, or have no facets.
    config.add_facet_fields_to_solr_request!
  end
end
