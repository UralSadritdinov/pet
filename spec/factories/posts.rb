FactoryBot.define do
  factory :post do
    user
    title { FFaker::Lorem.word }
    content { FFaker::Lorem.sentence }
    status { "draft" }

    trait :published do
      status { "published" }
    end

    trait :archived do
      archived_at { 1.minute.ago }
    end
  end
end
