class MaterialsController < InheritedResources::Base

  private

    def material_params
      params.require(:material).permit(:name, :category_id, :dimension_id, :description)
    end
end

