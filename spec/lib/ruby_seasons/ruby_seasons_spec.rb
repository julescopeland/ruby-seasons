require "spec_helper"

class DummyClass
  include RubySeasons
end

describe RubySeasons do
  it "have a lookup table for London Seasons" do
    table = DummyClass.season_lookup_table
    table.should be_a Hash
    table['1900'][:spring_start].should == DateTime.parse('1900 Mar-21 1:39 AM GMT')
  end
end