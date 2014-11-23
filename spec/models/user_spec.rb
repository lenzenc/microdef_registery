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

require 'rails_helper'

RSpec.describe User, :type => :model do

  describe "Validations" do
    
    subject { create :user }

    it { should validate_presence_of :first_name }
    it { should ensure_length_of(:first_name).is_within(0..100) }
    
    it { should validate_presence_of :last_name }
    it { should ensure_length_of(:last_name).is_within(0..100) }     

  end

end
