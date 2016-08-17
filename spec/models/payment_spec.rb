require 'spec_helper'

describe Payment do
  it { is_expected.to have_db_column(:description).of_type(:text) }
  it { is_expected.to have_db_column(:total).of_type(:float) }

  it { is_expected.to have_many(:payment_histories) }

  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :total }
end
