require 'spec_helper'

describe PaymentHistory do
  it { is_expected.to have_db_column(:student_id).of_type(:integer) }
  it { is_expected.to have_db_column(:payment_id).of_type(:integer) }
  it { is_expected.to have_db_column(:total).of_type(:float) }
  it { is_expected.to have_db_column(:paid_at).of_type(:datetime) }
  it { is_expected.to have_db_column(:user_id).of_type(:integer) }

  it { is_expected.to belong_to(:student) }
  it { is_expected.to belong_to(:payment) }
  it { is_expected.to belong_to(:user) }

  it { is_expected.to validate_presence_of :student_id }
  it { is_expected.to validate_presence_of :payment_id }
  it { is_expected.to validate_presence_of :user_id }
  it { is_expected.to validate_presence_of :total }
end
