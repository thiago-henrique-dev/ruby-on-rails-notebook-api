class Contact < ApplicationRecord
    belongs_to :kind #optional: true
    has_many :phones

    accepts_nested_attributes_for :phones

    def as_json(options={})
    h = super(options)
    h[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
    h
    end

    #def author 
    #   "Thiago"
    #end

    #def kind_description
    #   self.kind.description
    #end    
    #def as_json(options={})
    #        super(methods: [:author], 
    #          root: true, 
    #          include: { kind: { only: :description }})
    #end

    #def hello
    #   I18n.t('hello')
    #end

    #def i18n
    #   I18n.default_locale
    #end
end
