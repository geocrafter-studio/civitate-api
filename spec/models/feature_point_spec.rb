require 'spec_helper'

describe FeaturePoint do
  
  describe "validations" do
    describe "the_geom" do
      context "when absent" do
        attr_accessor :point
        
        before do
          @point = new_feature_point :the_geom => nil
        end
        
        it "is invalid" do
          @point.should_not be_valid
        end
      end
    end
  end
  
  describe "associations" do
    attr_accessor :point
    
    before do
      pending "spatial_adapter not working in specs"
      
      @point = create_feature_point
    end
    
    context "votes" do
      attr_accessor :vote
      
      before do
        @vote = create_vote :supportable => point
      end
      
      it "has_many" do
        point.votes.should include(vote)
      end
    end
  end
  
  # instance methods
  describe "a point" do
    attr_accessor :point
    
    before do
      pending "spatial_adapter not working in specs"
      
      @point = create_feature_point
    end
    
    context "with the_geom" do
      before do
        @point.the_geom.should be
      end
      
      it "has an x" do
        @point.x.should be
      end
      
      it "has a y" do
        @point.y.should be
      end
    end
  end
end
