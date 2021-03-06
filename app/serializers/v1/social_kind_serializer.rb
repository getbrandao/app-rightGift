module V1
  class SocialKindSerializer < ActiveModel::Serializer
    attributes :id, :name

    link(:self) { v1_contact_social_kind_url(object.id) }
  end
end
