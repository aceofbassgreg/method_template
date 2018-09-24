require 'minitest/autorun'
require 'minitest/spec'

require_relative '../lib/method_template'

class MethodTemplateTest < Minitest::Spec
  %w(hook_method hook_methods).each do |hook|
    describe hook do
      it 'defines arbitrary number of instance methods that raise exception' do
        method_names = %i(these are random sample methods)
        TestClass = Class.new do
          extend MethodTemplate
          hook_methods *method_names
        end
        test_instance = TestClass.new
        method_names.each do |method|
          assert_respond_to test_instance, method
          expected_msg = ":#{method} is a required method of MethodTemplateTest::TestClass!"
          e = assert_raises NotImplementedError do
            test_instance.send(method)
          end
          assert_equal expected_msg, e.message
        end
      end
    end
  end
end

