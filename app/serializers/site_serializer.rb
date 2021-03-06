class SiteSerializer < ActiveModel::Serializer
 
  def initialize(site_object)
    @site = site_object
  end

  def to_serialized_json
      options = {
        except: [:updated_at, :created_at]
      }
      @site.to_json(options)
  end
end
