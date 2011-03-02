
require 'rubygems'
require 'treetop'
Treetop.load 'my_grammar'

describe "My perfect grammar" do
  
  parser = MyGrammarParser.new

  it "Josh" do
    parser.parse('Josh').should_not == nil
  end
  
  it "Josh&Jenny" do
    parser.parse('Josh&Jenny').should_not == nil
  end

  it "Josh&(Jenny)" do
    parser.parse('Josh&(Jenny)').should_not == nil
  end

  it "(Josh)&(Jenny)" do
    parser.parse('(Josh)&(Jenny)').should_not == nil
  end

  it "((Josh)&(Jenny))" do
    parser.parse('((Josh)&(Jenny))').should_not == nil
  end

end
