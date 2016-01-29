# #!/usr/bin/env elixir

# ExUnit.start

# defmodule About_Tuples do
#     use ExUnit.Case
#     use Koans

#     think "Getting tuples size is a kernel feature" do
#         a_tuple = {:foo, :bar}
#         assert tuple_size(a_tuple) == 2
#     end

#     think "Can reach tuple element with index" do
#         a_tuple = {:foo, :bar}
#         assert elem(a_tuple, 0) == :foo
#     end

#     defmacrop erlang_elem(tuple, index) do
#         # Note: Elixir provides access to erlang primitives with atom :erlang
#         quote do: :erlang.element(unquote(index), unquote(tuple))
#     end

#     test "In erlang tuples and lists start at index 1, wich is different in elixir" do
#         a_tuple = {:foo, :bar}
#         foo_index = 0
#         assert elem(a_tuple, foo_index) == erlang_elem(a_tuple, foo_index + 1)
#     end

#     think "Can set a tuple element" do
#         a_tuple = {:foo, :bar}
#         baz_tuple = put_elem(a_tuple, 0, :baz)
#         # Note: think about immutability
#         assert elem(a_tuple, 0) == :foo
#         assert elem(baz_tuple, 0) == :baz
#     end

#     think "Setting a tuple element that not exists raise an argument error" do
#         a_tuple = {:foo, :bar}

#         assert_raise ArgumentError, fn -> put_elem(a_tuple, 3, :baz) end
#     end

#     think "Can insert a tuple element" do
#         a_tuple = {:foo, :bar}
#         baz_tuple = Tuple.insert_at(a_tuple, 2, :baz)
#         assert elem(baz_tuple, 2) == :baz
#     end

#     think "Inserting a tuple element raise an argument error if index is invalid" do
#         a_tuple = {:foo, :bar}
#         assert_raise ArgumentError, fn -> Tuple.insert_at(a_tuple, -2, :baz) end
#     end

#     think "The building blocks of Elixir are tuples of three elements" do
#         # Note: quote gives the representation of a block
#         quoted_block = quote do
#             a = 1 + 2
#             assert a == 3
#         end

#         assert is_tuple(quoted_block)
#         assert tuple_size(quoted_block) == 3
#     end

#     test "We can use tuples to define blocks" do
#         # Note: unquote is the reverse of quote
#         # It gives a block from its representation
#         unquoted_block = unquote {:"{}", [], [1, 2, 3]}
#         # Note: it's a hungarian notation
#         # the atom :"{}" represent the function
#         # the list [] contains metadatas like the line and module where code is defined
#         # the list [1, 2, 3] are arguments passed to the function
#         # For more infos see Macros and quote/unquote functions
#         assert unquoted_block == {1, 2, 3}
#     end

#     think "Are tuples enumerables ?" do
#         invalid_argument   = ArgumentError
#         undefined_protocol = Protocol.UndefinedError

#         assert_raise undefined_protocol, fn -> Enum.empty?({1, 2, 3}) end
#         # Note:
#         # Do you smell the underlying machinery that make list and tuple types differents ?
#     end

# end
