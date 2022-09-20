# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
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

  describe "#say_hello" do
    before do
      subject.connect
      subject.say_hello
    end

    it "is enabled" do
      expect(subject).to be_enabled
    end
  end
end
# rubocop:enable Metrics/BlockLength
