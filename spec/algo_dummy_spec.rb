require 'rspec'
require_relative '../src/algo_dummy'

describe AlgoDummy do
  before :each do
    @algo = AlgoDummy.new
  end

  it 'should support next_xy returning x,y' do
    @algo.next_xy[0].should be_a_kind_of Fixnum
    @algo.next_xy[1].class.should == Fixnum
    @algo.next_xy.should be_an_instance_of Array
    @algo.next_xy.length.should == 2
    1.upto(100).each {
      @algo.next_xy[0].should < 2
    }
    1.upto(100).each {
      @algo.next_xy[1].should <3
    }
    true.should == true
  end

  it 'should be constructed the right way 1' do

    lambda { AlgoDummy.new 'oneparam' }.should raise_error(ArgumentError)
    lambda { AlgoDummy.new }.should_not raise_error(Exception)
    lambda {AlgoDummy.new 'oneparam','twoparam'}.should raise_error(ArgumentError)

  end

  it 'should return different x-es for some calls at least to be _random_' do
    results = 1.upto(100).collect{@algo.next_xy}
    results.should be_an_instance_of(Array)
    r = results.collect{|e|e[0]}.uniq
    r.should be_an_instance_of(Array)
    r.length.should == 2

    r = results.collect{|e|e[1]}.uniq
    r.should be_an_instance_of(Array)
    r.length.should == 3
  end

end