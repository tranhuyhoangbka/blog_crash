namespace :db do
  desc "remake sample data for app"
  task remake_data: :environment do
    Rake::Task["db:migrate:reset"].invoke
    puts "create 15 post"
    15.times{FactoryGirl.create :post}

    puts "create 45 comments"
    45.times{FactoryGirl.create :comment}
  end
end
