class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate

  belongs_to :kind #PERTENCE A UM TIPO
  has_many :phones #TEM MUITOS TELEFONES
  has_one :address #POSSUI UM ENDEREÇO

  def attributes(*args)
  h = super(*args)
  # pt-BR ---> h[:birthdate] = (I18n.l(object.birthdate) unless object.birthdate.blank?)
  h[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
  h
  end
end
