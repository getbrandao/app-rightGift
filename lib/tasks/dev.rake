namespace :dev do
  desc "Create some faker record in database."
  task setup: :environment do
    # then, whenever you need to clean the DB
    %x(rails db:drop db:create db:migrate)

    puts "Creating the records from SocialKind Model"

    social_kinds = %w(Linkedin Facebook Twitter Whatsapp)

    social_kinds.each do |kind|
      SocialKind::SocialKind.create!(
        name: kind
      )
    end

  end
end
