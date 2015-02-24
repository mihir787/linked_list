gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'linked_list'

class RecursiveLinkedListTest < Minitest::Test

  def test_can_create_a_node_initialized_with_an_element_of_data
    node = Node.new(20)
    assert node
  end

  def test_node_has_an_assigned_data_value
    node = Node.new(20)
    assert_equal 20, node.data
  end

  def test_node_is_unlinked_by_default
    node = Node.new(20)
    assert_equal nil, node.link
  end

  def test_can_create_an_iterative_list_object
    iter_list = IterativeLinkedList.new
    assert iter_list
  end

  def test_default_header_of_iterative_list
    iter_list = IterativeLinkedList.new
    assert_equal nil, iter_list.head
  end

  def test_iterative_list_can_assign_a_head_node_with_a_value_of_20
    iter_list = IterativeLinkedList.new
    head_node = Node.new(20)
    iter_list.assign_head_node(head_node)
    assert_equal 20, iter_list.head.data
  end

  def test_head_node_can_be_linked_to_other_node
    iter_list = IterativeLinkedList.new
    head_node = Node.new(20)
    second_node = Node.new(21)
    iter_list.assign_head_node(head_node)
    iter_list.append(second_node)
    assert_equal 21, head_node.link.data
  end

  def test_current_node_assignment_after_a_node_is_linked_to_the_head
    iter_list = IterativeLinkedList.new
    head_node = Node.new(20)
    second_node = Node.new(21)
    iter_list.assign_head_node(head_node)
    iter_list.append(second_node)
    assert_equal 21, iter_list.access_tail
  end

  def test_3_nodes_are_linked_together
    iter_list = IterativeLinkedList.new
    head_node = Node.new(20)
    second_node = Node.new(21)
    third_node = Node.new(22)
    iter_list.assign_head_node(head_node)
    iter_list.append(second_node)
    iter_list.append(third_node)
    assert_equal 3, iter_list.count
  end

  def test_gives_lenght_of_linked_list
    iter_list = IterativeLinkedList.new
    head_node = Node.new(20)
    second_node = Node.new(21)
    third_node = Node.new(22)
    iter_list.assign_head_node(head_node)
    iter_list.append(second_node)
    iter_list.append(third_node)
    assert_equal 3, iter_list.count
  end

  def test_access_tail
    iter_list = IterativeLinkedList.new
    head_node = Node.new(20)
    second_node = Node.new(21)
    third_node = Node.new(22)
    iter_list.assign_head_node(head_node)
    iter_list.append(second_node)
    iter_list.append(third_node)
    assert_equal 22, iter_list.access_tail
  end

  def test_pop
    iter_list = IterativeLinkedList.new
    head_node = Node.new(20)
    second_node = Node.new(21)
    third_node = Node.new(22)
    iter_list.assign_head_node(head_node)
    iter_list.append(second_node)
    iter_list.append(third_node)
    iter_list.pop
    assert_equal 21, iter_list.access_tail
  end

  def test_current_node_or_tail_node_does_not_have_a_link
    iter_list = IterativeLinkedList.new
    head_node = Node.new(20)
    second_node = Node.new(21)
    third_node = Node.new(22)
    fourth_node = Node.new(23)
    iter_list.assign_head_node(head_node)
    iter_list.append(second_node)
    iter_list.append(third_node)
    iter_list.pop
    iter_list.append(fourth_node)
    assert_equal 23, iter_list.access_tail
  end

  def test_can_access_node_data_by_index_position
    iter_list = IterativeLinkedList.new
    head_node = Node.new(20)
    second_node = Node.new(21)
    third_node = Node.new(22)
    fourth_node = Node.new(23)
    iter_list.assign_head_node(head_node)
    iter_list.append(second_node)
    iter_list.append(third_node)
    iter_list.append(fourth_node)
    assert_equal 22, iter_list.access(2)
  end
end

class RecursiveLinkedListTest < Minitest::Test
  def test_can_create_an_iterative_list_object
    recur_list = RecursiveLinkedList.new
    assert recur_list
  end

  def test_default_header_of_recursive_list
    recur_list = RecursiveLinkedList.new
    assert_equal nil, recur_list.head
  end

  def test_recursive_list_can_assign_a_head_node_with_a_value_of_20
    recur_list = RecursiveLinkedList.new
    head_node = Node.new(20)
    recur_list.assign_head_node(head_node)
    assert_equal 20, recur_list.head.data
  end

  def test_head_node_can_be_linked_to_other_node
    recur_list = RecursiveLinkedList.new
    head_node = Node.new(20)
    second_node = Node.new(21)
    third_node = Node.new(22)
    recur_list.assign_head_node(head_node)
    recur_list.append(second_node)
    recur_list.append(third_node)
    assert_equal 22, head_node.link.link.data
  end

  def test_current_node_assignment_after_a_node_is_linked_to_the_head
    recur_list = RecursiveLinkedList.new
    head_node = Node.new(20)
    second_node = Node.new(21)
    recur_list.assign_head_node(head_node)
    recur_list.append(second_node)
    assert_equal 21, recur_list.tail_node
  end

  def test_gives_lenght_of_recurvsie_linked_list
     recur_list = RecursiveLinkedList.new
     head_node = Node.new(20)
     second_node = Node.new(21)
     third_node = Node.new(22)
     recur_list.assign_head_node(head_node)
     recur_list.append(second_node)
     recur_list.append(third_node)
     assert_equal 3, recur_list.count
  end

  def test_pop
     recur_list = RecursiveLinkedList.new
     head_node = Node.new(20)
     second_node = Node.new(21)
     third_node = Node.new(22)
     recur_list.assign_head_node(head_node)
     recur_list.append(second_node)
     recur_list.append(third_node)
     recur_list.pop
     assert_equal 21, recur_list.tail_node
  end

  def test_can_access_node_data_by_index_position
    recur_list = RecursiveLinkedList.new
    head_node = Node.new(20)
    second_node = Node.new(21)
    third_node = Node.new(22)
    fourth_node = Node.new(23)
    recur_list.assign_head_node(head_node)
    recur_list.append(second_node)
    recur_list.append(third_node)
    recur_list.append(fourth_node)
    assert_equal 22, recur_list.access(2)
  end

end
