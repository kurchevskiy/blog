namespace :fake do
  desc "Create fake:data"
  task seed: :environment do
    # require 'faker'
    user = User.create!(:email => FFaker::Internet.email,
                              :name => FFaker::NameRU.name)

    # Создаем посты
    5.times do
      user.posts.create!(title: FFaker::Book.title,
                                  body: FFaker::LoremRU.paragraph)

    end
  end

end
