require "spec_helper"
require "b64/arg"

describe B64::Arg do
  context "unknown params" do
    it "gives params we don't understand" do
      args = B64::Arg.parse(["what"])
      args.help?.should == true
      args.encode?.should == false
      args.decode?.should == false
      args.fields.should == []
    end
  end

  context "encode" do
    it "when user says e" do
      args = B64::Arg.parse(["e"])
      args.help?.should == false
      args.encode?.should == true
      args.decode?.should == false
    end

    it "when user says enc" do
      args = B64::Arg.parse(["enc"])
      args.help?.should == false
      args.encode?.should == true
      args.decode?.should == false
    end

    it "when user says encode" do
      args = B64::Arg.parse(["encode"])
      args.help?.should == false
      args.encode?.should == true
      args.decode?.should == false
    end

    it "when no fields" do
      args = B64::Arg.parse(["enc"])
      args.fields.should == []
    end

    it "when one field" do
      args = B64::Arg.parse(["enc", "thing"])
      args.fields.should == ["thing"]
    end

    it "when two fields" do
      args = B64::Arg.parse(["enc", "two", "fields"])
      args.fields.should == ["two", "fields"]
    end
  end

  context "decode" do
    it "when user says d" do
      args = B64::Arg.parse(["d"])
      args.help?.should == false
      args.encode?.should == false
      args.decode?.should == true
    end

    it "when user says dec" do
      args = B64::Arg.parse(["dec"])
      args.help?.should == false
      args.encode?.should == false
      args.decode?.should == true
    end

    it "when user says decode" do
      args = B64::Arg.parse(["decode"])
      args.help?.should == false
      args.encode?.should == false
      args.decode?.should == true
    end

    it "when no fields" do
      args = B64::Arg.parse(["dec"])
      args.fields.should == []
    end

    it "when one field" do
      args = B64::Arg.parse(["dec", "thing"])
      args.fields.should == ["thing"]
    end

    it "when two fields" do
      args = B64::Arg.parse(["dec", "two", "fields"])
      args.fields.should == ["two", "fields"]
    end
  end

  context "help" do
    it "when ARGV is empty" do
      args = B64::Arg.parse([])
      args.type.should == :help
      args.help?.should == true
      args.encode?.should == false
      args.decode?.should == false
      args.fields.should == []
    end

    it "when user says ?" do
      args = B64::Arg.parse(["?"])
      args.help?.should == true
      args.encode?.should == false
      args.decode?.should == false
      args.fields.should == []
    end

    it "when user says h" do
      args = B64::Arg.parse(["h"])
      args.help?.should == true
      args.encode?.should == false
      args.decode?.should == false
      args.fields.should == []
    end

    it "when user says help" do
      args = B64::Arg.parse(["help"])
      args.help?.should == true
      args.encode?.should == false
      args.decode?.should == false
      args.fields.should == []
    end

    it "when user says help with any other stuff afterwards" do
      args = B64::Arg.parse(["help", "and", "some", "other", "stuff"])
      args.help?.should == true
      args.encode?.should == false
      args.decode?.should == false
      args.fields.should == []
    end
  end
end
