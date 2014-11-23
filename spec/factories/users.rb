# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string(100)      not null
#  last_name              :string(100)      not null
#  email                  :string(255)      not null
#  encrypted_password     :string(100)      not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(50)
#  last_sign_in_ip        :string(50)
#  failed_attempts        :integer          default(0), not null
#  locked_at              :datetime
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "John#{n}" }
    sequence(:last_name) { |n| "Smith#{n}" }
    email { "#{first_name}.#{last_name}@example.com" }
    password "pwd12345"
    encrypted_password "pwd12345"
  end
end
