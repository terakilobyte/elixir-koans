#!/usr/bin/env elixir

# This should be replaced with the correct code to start the ExUnit server
Koans.About_testing.start_exUnit!

defmodule About_testing do
    use ExUnit.Case
    use Koans.About_testing

    think "We shall contemplate truth by testing reality, via asserts." do
        assert true == true
    end

    think "When reality lies, we shall refute truth" do
        refute true == false
    end

    think "Enlightenment may be more easily achieved with appropriate messages." do
        assert true == true, "This should be true"
    end

    think "To understand reality, we must compare our expectations against reality." do
        expected_value = 2
        actual_value = 1 + 1

        assert expected_value == actual_value
    end

    think "Assertions are smart" do
        is_1_equal_2? = fn -> assert 1 == 2 end
        is_1_greater_than_2? = fn -> assert 1 > 2 end

        message = "Assertion with " <> "==" <> " failed"
        assert_raise ExUnit.AssertionError, message, is_1_equal_2?

        message = "Assertion with " <> ">" <> " failed"
        assert_raise ExUnit.AssertionError, message, is_1_greater_than_2?
    end
end

