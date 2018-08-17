FactoryBot.define do
  factory :product do
    title { 'Product title' }
    description  { 'Product description' }
    image_url { '7apps.jpg' }
    price { 10 }
  end
end
