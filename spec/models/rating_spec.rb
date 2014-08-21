require 'rails_helper'

describe Rating do
  it {should have_and_belong_to_many :recipes}
end
