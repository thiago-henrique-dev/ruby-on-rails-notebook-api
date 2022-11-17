class AddressSerializer < ActiveModel::Serializer
    attributes :id, :street, :city

    belongs_to :contact do
        link(:related) { contact_kind_url(object.id) }
    end
end
