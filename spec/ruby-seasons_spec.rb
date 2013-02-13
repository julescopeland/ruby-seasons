require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "RubySeasons" do
  context "Date objects" do
    it "should return 'spring' for my birthday" do
      my_birthday = Date.parse('28th May 1980')
      my_birthday.season.should == 'spring'
    end
  end
end
