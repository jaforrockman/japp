class DimensionsController < InheritedResources::Base

  private

    def dimension_params
      params.require(:dimension).permit(:title)
    end
end

