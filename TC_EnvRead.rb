#! /usr/bin/ruby
 
require 'rubygems'
require 'test/unit'
require 'flexmock'
require 'env_read'
 
class TC_EnvRead < Test::Unit::TestCase
  include FlexMock::TestCase
 
  def test_env_read
    source = []
    result = { "name1" => "value1", "name2" => "value2" }
    result.each do |key, value|
      source << key + "=" + value + "\n"
    end
 
    flexstub(File) do |fileclass|
      fileclass.should_receive(:new).with('test.env', 'r').and_return do
        flexmock('file') do |fileobj|
          fileobj.should_receive(:readlines).with_no_args.and_return(source)
          fileobj.should_receive(:close).with_no_args.once
        end
      end
    end
 
    assert_equal(result, env_read('test.env'))
  end
 
end