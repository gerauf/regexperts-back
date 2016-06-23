FactoryGirl.define do
  factory :level do
    sequence :number do |n|
      n + 1
    end
  end
end
