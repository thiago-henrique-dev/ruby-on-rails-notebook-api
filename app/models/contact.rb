class Contact < ApplicationRecord
    belongs_to :kind
    
    def author 
        "Thiago"
    end

    def as_json(options={})
        super(methods: :author, root: true)
    end
end
