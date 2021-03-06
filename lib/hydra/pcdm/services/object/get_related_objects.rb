module Hydra::PCDM
  class GetRelatedObjectsFromObject

    ##
    # Get related objects from an object.
    #
    # @param [Hydra::PCDM::Object] :parent_object to which the child objects are related
    #
    # @return [Array<Hydra::PCDM::Object>] all related objects

    def self.call( parent_object )
      raise ArgumentError, "parent_object must be a pcdm object" unless Hydra::PCDM.object? parent_object
      parent_object.related_objects.to_a
    end

  end
end
