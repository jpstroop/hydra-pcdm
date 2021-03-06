module Hydra::PCDM
  class ObjectIndexer < ActiveFedora::IndexingService
    def generate_solr_document
      super.tap do |solr_doc|
        solr_doc["objects_ssim"]     = object.objects.map { |o| o.id }
      end
    end

  end
end
