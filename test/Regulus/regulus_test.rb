require 'helper'


describe Regulus do
  it 'should have a version' do
    Regulus::VERSION.wont_be_nil
  end

  it 'should match numbers between 0 to 999999' do
     Regulus.match_0_to_999999("4").wont_be_empty
  end

  it 'shouldnt match negative numbers' do
    Regulus.match_0_to_999999("-12").must_be_empty
  end
  
  it 'shouldnt match numebers bigger than 999999' do
    Regulus.match_0_to_999999("1000000").must_be_empty
  end
end
