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

  it 'should match US zip codes' do
    Regulus.is_zip_code?("94941-3232").must_equal true
  end
 
  it 'shouldnt match as a US zip code' do
    Regulus.is_zip_code?("nope").wont_equal true
  end

  it 'should match US currency' do
    Regulus.is_currency?("20").must_equal true
  end

  it 'shouldn match as US currency' do
    Regulus.is_currency?("$.99").wont_equal true
  end
end
