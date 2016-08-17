require 'spec_helper'

describe Student do
  it { is_expected.to have_db_column(:nis).of_type(:string) }
  it { is_expected.to have_db_column(:full_name).of_type(:string) }
  it { is_expected.to have_db_column(:gender).of_type(:string) }
  it { is_expected.to have_db_column(:payment_status_id).of_type(:integer) }

  it { is_expected.to belong_to(:payment_status) }
  it { is_expected.to have_many(:payment_histories) }

  it { is_expected.to validate_presence_of :nis }
  it { is_expected.to validate_presence_of :full_name }
  it { is_expected.to validate_presence_of :gender }
end
