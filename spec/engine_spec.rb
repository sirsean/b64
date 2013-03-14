require "spec_helper"
require "b64/engine"

describe B64::Engine do
  context "encode" do
    it "when nothing is given" do
      engine = B64::Engine.new
      enc = engine.encode
      enc.should == nil
    end

    it "when plain is given" do
      engine = B64::Engine.new(:plain => "AAA")
      enc = engine.encode
      enc.should == "QUFB"
    end

    it "when base64 is given" do
      engine = B64::Engine.new(:base64 => "AAA")
      enc = engine.encode
      enc.should == nil
    end
  end

  context "decode" do
    it "when nothing is given" do
      engine = B64::Engine.new
      engine.decode.should == nil
    end

    it "when plain is given" do
      engine = B64::Engine.new(:plain => "AAA")
      engine.decode.should == nil
    end

    it "when base64 is given" do
      engine = B64::Engine.new(:base64 => "QUFB")
      engine.decode.should == "AAA"
    end
  end
end
