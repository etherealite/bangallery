
FactoryGirl.define do
  imagesource = '/spec/support/images'
  imagesource = File.join(Rails.root, imagesource)
  imagesource = Dir.new(imagesource)
  images = []
  imagesource.each do |file|
      next if File.directory? file
      images.push(File.join(imagesource, file))
  end

  puts images
  factory :image do
    title Faker::Lorem.word
    description Faker::Lorem.paragraph
    file {
        File.open(images.sample)
    }
  end
end
