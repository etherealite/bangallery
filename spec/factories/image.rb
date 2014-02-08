FactoryGirl.define do
  factory :image do
    title Faker::Lorem.word
    description Faker::Lorem.paragraph
    fullsize { File.open(File.join(Rails.root, '/spec/support/images/fullsize.jpg')) }
    thumb { File.open(File.join(Rails.root, '/spec/support/images/thumb.jpg')) }
  end
end
