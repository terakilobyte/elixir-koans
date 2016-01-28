# #!/usr/bin/env elixir

# ExUnit.start

# defmodule About_Numbers_and_booleans do
#     use ExUnit.Case
#     use Koans

#     think "Basics numbers types" do
#         an_integer = 1
#         a_float = 42.0

#         assert is_integer(an_integer)

#         assert is_float(a_float)

#         refute is_float(an_integer)

#         refute is_integer(a_float)
#     end

#     think "Is a hexadecimal number treated as an integer" do
#         assert is_integer(0x2A)
#     end

#     think "Answer to the Ultimate Question of Life, the Universe, and Everything" do
#         an_hex = 0x20
#         a_dec = 10
#         assert an_hex + a_dec == 42
#     end

#     think "You can use _ as separator in integer" do
#         an_integer = 100_000_000
#         assert is_integer(an_integer)
#     end

#     think "Value equality operator has an usual expectation" do
#         an_integer = 4
#         a_float = 4.0
#         assert an_integer == a_float
#     end

#     think "Value inequality operator has an usual expectation" do
#         an_integer = 4
#         a_float = 2.0
#         assert an_integer != a_float
#     end

#     think "Strict equality operator take care about types" do
#         an_integer = 4
#         a_float = 4.0
#         refute an_integer === a_float
#     end

#     think "Strict inequality operator take care about types" do
#         an_integer = 4
#         a_float = 4.0
#         assert an_integer !== a_float
#     end

#     think "Comparing two values considering type" do
#         an_integer = 4
#         a_float = 4.0
#         refute an_integer === a_float
#     end

#     think "Are booleans integers ?" do
#         refute is_integer(true)
#         refute is_boolean(0)
#     end

#     think "Booleans are atoms" do
#         assert is_atom(true)
#         assert :true == is_boolean(true)
#     end

#     think "That's true if a_boolean is true ortherwise b_boolean" do
#         a_boolean = false
#         b_boolean = true
#         assert a_boolean or b_boolean
#     end

#     think "Operator || is a relaxed boolean operator, that's true if a_variable or b_variable isn't nil" do
#         a_variable = 42
#         b_variable = nil
#         assert a_variable || b_variable
#     end

#     think "Operator && is a relaxed boolean operator, that's true if a_variable and b_variable isn't nil" do
#         a_variable = 42
#         b_variable = 5.0
#         assert a_variable && b_variable
#     end
# end
