require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/masker'
require 'json'
require 'pry'

class MaskerTest < Minitest::Test
    def setup
        @masker = Masker.new
    end

    def test_mask_strings
        assert_equal @masker.mask('4556364607935616'), '############5616'
        assert_equal @masker.mask('1'), '1'
        assert_equal @masker.mask('11111'), '#1111'
    end
end