# -*- encoding : utf-8 -*-

require 'test_helper'

class ActiveRecordTest < MiniTest::Unit::TestCase

  class BaseTest < MiniTest::Unit::TestCase

    class IsolationLevelTest < MiniTest::Unit::TestCase

      def test_wraps_connection_isolation_level
        ActiveRecord::Base.isolation_level( :serializable ) do
          ActiveRecord::Base.transaction do
            assert_equal( :serializable, ActiveRecord::Base.connection.current_isolation_level )
          end
        end
      end

    end

  end

end
