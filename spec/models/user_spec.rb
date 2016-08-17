require 'spec_helper'

describe User do
  it { is_expected.to have_db_column :email }
  it { is_expected.to have_db_column :first_name }
  it { is_expected.to have_db_column :last_name }

  it { is_expected.to have_many(:payment_histories) }
end
