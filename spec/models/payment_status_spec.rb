require 'spec_helper'

describe PaymentStatus do
  it { is_expected.to have_db_column(:name).of_type(:string) }

  it { is_expected.to have_many(:students) }
end
