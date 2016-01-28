# #!/usr/bin/env elixir

# ExUnit.start

# defmodule About_Lists do
#     use ExUnit.Case
#     use Koans

#     think "Create your first list" do
#         a_list = [1, 2, 3]
#         assert is_list(a_list)
#     end

#     think "Getting list length is a kernel feature" do
#         a_list = [1, 2, 3]
#         assert length(a_list) == 3
#     end

#     think "Elixir provide special operator to concatenate lists" do
#         a_list = [1, 2]
#         assert a_list ++ [3] == [1, 2, 3]
#     end

#     think "Elixir provide special operator to remove element from list" do
#         a_list = [1, 2, 3]
#         assert a_list -- [2] == [1, 3]
#     end

#     think "Only first element is removed with truncate operator" do
#         a_list = [:foo, :bar, :foo]
#         assert a_list -- [:foo] == [:bar, :foo]
#     end

#     think "Truncate operator do nothing when element not in list" do
#         a_list = [:foo, :bar]
#         assert a_list -- [:baz] == [:foo, :bar]
#     end

#     think "The in operator test if element is present inner an enum" do
#         a_list = [:foo, :bar]
#         assert :bar in a_list
#     end

# end
