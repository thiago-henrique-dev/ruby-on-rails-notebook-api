class Contact < ApplicationRecord
    belongs_to :kind #optional: true
    has_many :phones

    

    def to_br
   {
      name: self.name,
      email: self.email,
      birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?)
     }
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
