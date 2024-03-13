
require 'minitest/autorun'
require './manifest'

class TestApp < Minitest::Test
  def test_run_manifest
    manifest = Manifest.new
    assert_equal 0, manifest.get_employees.length, "Manifest build failed"
  end
end
