require 'minitest/autorun'
require_relative '../scheme.rb'

describe 'The Little Schemer' do
  describe 'Chapter 1: Toys' do
    it "'atom' should be an atom" do
      Scheme::Parser.parse('atom').must_be_kind_of Scheme::Atom
    end
  end
end
