require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "RubySeasons" do
  context "Date objects" do
    it "should return 'spring' for my birthday" do
      my_birthday = Date.parse('28th May 1980')
      my_birthday.season.should == 'spring'
    end
    it "should parse my brother's birthday and return 'winter'" do
      Date.get_season('28th December 1977').should == 'winter'
    end
  end

  context "DateTime objects" do
    it "should return 'summer' for my mum's birthday" do
      my_birthday = DateTime.parse('12th September 1946 12:27PM')
      my_birthday.season.should == 'summer'
    end
    it "should parse my dad's birthday and return 'autumn'" do
      DateTime.get_season('5th November 1944 13:42PM').should == 'autumn'
    end
  end
end
