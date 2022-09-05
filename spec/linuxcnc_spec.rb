# frozen_string_literal: true

RSpec.describe Linuxcnc do
  it "has a version number" do
    expect(Linuxcnc::VERSION).not_to be nil
  end
end
