require 'rspec'
require_relative 'prime_number.rb'
require_relative 'table.rb'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

describe 'PrimeNumber' do 
  before :each do 
    @prime = PrimeNumber.new
  end

  it "should be true if the number is 2" do
    expect(@prime.is_prime(2)).to be true
  end

  it "should be false if the number is 1" do
    expect(@prime.is_prime(1)).to be false
  end

  it "should be true if the number is 13" do
    expect(@prime.is_prime(3)).to be true
  end

  it "should tell if big numbers are prime" do
    expect(@prime.is_prime(7919)).to be true
  end

  it "should tell if big numbers are not prime" do
    expect(@prime.is_prime(987)).to be false
  end

  it "should return an array of prime numbers" do
    expect(@prime.get_data(10)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
  end

end

describe 'Table' do
  before :each do 
    @table = Table.new([3, 2, 22, 222])
  end
  it "if the number has one character, it should print the number and 4 spaces" do
    expect(@table.format_num(2)).to eq(" #{2}    ")
  end

  it "if the number has two characters, it should print the number and 3 spaces" do
    expect(@table.format_num(22)).to eq(" #{22}   ")
  end

   it "if the number has three characters, it should print the number and 2 spaces" do
    expect(@table.format_num(222)).to eq(" #{222}  ")
  end
end



  
