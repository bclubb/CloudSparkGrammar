
require 'rubygems'
require 'treetop'
Treetop.load 'my_grammar'

describe "My perfect grammar" do
  
  parser = MyGrammarParser.new

  it "Josh" do
    parser.parse('Josh').should_not == nil
  end
  
  it "Josh&Jenny" do
    parser.parse('age=28&name=Josh').should_not == nil
  end

  it "Josh&(Jenny)" do
    parser.parse('age=28&(name=Josh)').should_not == nil
  end

  it "(Josh)&(Jenny)" do
    parser.parse('(age=28)&(name=Josh)').should_not == nil
  end

  it "((Josh)&(Jenny))" do
    parser.parse('(age=28)&(name=Josh)').should_not == nil
  end

end
