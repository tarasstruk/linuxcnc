# frozen_string_literal: true

RSpec.describe Linuxcnc::Machine do

  describe "#connect" do
    before do
      subject.connect
    end

    it "is connected" do
      expect(subject).to be_connected
    end
  end

  describe "#disconnect" do
    before do
      subject.connect
      subject.disconnect
    end

    it "is not connected" do
      expect(subject).not_to be_connected
    end
  end

  describe "#hello" do
    before do
      subject.connect
      subject.hello
    end

    it "is not connected" do
      expect(subject).to be_enabled
    end
  end

end
