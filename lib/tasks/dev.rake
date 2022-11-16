namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Cadastrando os contatos..."

    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email:Faker::Internet.email,
        birthdate: Faker::Date.between(from: 65.year.ago, to: 18.year.ago)
      )
    end

    puts "Contatos cadastrados com sucesso!"
    
    puts "Cadastrando os tipos de contato..."

    kinds = %w(Amigo Comercial Conhecido)

    kinds.each do |kind|
      Kind.create!(
        description: kind
      )
    end

    puts "Tipos Contato cadastrados com sucesso!"

  end

end