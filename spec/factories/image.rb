
FactoryGirl.define do
imagesource = '/spec/support/images'
images = Dir[imagesource]
  factory :image do
    title Faker::Lorem.word
    description Faker::Lorem.paragraph
    file {
        Rails.logger.info imagesource
        File.open(File.join(Rails.root, "/#{imagesource}/#{images.sample}")) 
    }
  end
end
