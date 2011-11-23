require 'spec_helper'

module Codebreaker
  describe Marker do
    describe "#exact_match_count" do
      context "with no matches" do
        it "returns 0" do
          marker = Marker.new('1234', '5678')
          marker.exact_match_count.should == 0
        end
      end
      
      context "with one exact match" do
        it "returns 1" do
          marker = Marker.new('1234', '1678')
          marker.exact_match_count.should == 1
        end
      end
      
      context "with one inexact match" do
        it "returns 0" do
          marker = Marker.new('1234', '5178')
          marker.exact_match_count.should == 0
        end
      end
      
      context "with one exact match and one inexact match" do
        it "returns 1" do
          marker = Marker.new('1234', '1478')
          marker.exact_match_count.should == 1
        end
      end
    end

    describe "#inexact_match_count" do
      context "with no matches" do
        it "returns 0" do
          marker = Marker.new('1234', '5678')
          marker.inexact_match_count.should == 0
        end
      end
      
      context "with one exact match" do
        it "returns 0" do
          marker = Marker.new('1234', '1678')
          marker.inexact_match_count.should == 0
        end
      end
      
      context "with one inexact match" do
        it "returns 1" do
          marker = Marker.new('1234', '5178')
          marker.inexact_match_count.should == 1
        end
      end
      
      context "with one exact match and one inexact match" do
        it "returns 1" do
          marker = Marker.new('1234', '1478')
          marker.inexact_match_count.should == 1
        end
      end
    end

  end
end
