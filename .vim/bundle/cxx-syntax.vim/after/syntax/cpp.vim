" Vim syntax file for C++11 and later
" Language: C++11
" Maintainer: Tres Walsh
" Version: 0.1
"
" Additional syntax highlighting for C++. Standard functions, types, etc.
" are all now highlighted. The entries are ordered by header, and the headers
" are ordered alphabetically. A large and gracious thanks to the editors
" of cppreference.com, without whom this file would not exist

" Do not read this file if C++11 is not enabled
if exists("cpp_no_cpp11")
  finish
endif

syntax match cCustomParen "(" contains=cParen contains=cCppParen
syntax match cCustomScope "::"
syntax match cCustomClass "\w\+\s*::" contains=cCustomScope
syntax match cCustomFunc  "\w\+\s*(\@=" contains=cCustomParen

hi def link cCustomFunc Function

" <cstddef>
syntax keyword cxx_stdlib_type max_align_t
syntax keyword cxx_stdlib_type nullptr_t

" <cinttypes>
syntax keyword cxx_stdlib_type imaxdiv_t

syntax keyword cxx_stdlib_function strtoimax
syntax keyword cxx_stdlib_function strtoumax
syntax keyword cxx_stdlib_function wcstroimax
syntax keyword cxx_stdlib_function wcstrtoumax

syntax keyword cxx_stdlib_macro PRId8
syntax keyword cxx_stdlib_macro PRId16
syntax keyword cxx_stdlib_macro PRId32
syntax keyword cxx_stdlib_macro PRId64
syntax keyword cxx_stdlib_macro PRIdLEAST8
syntax keyword cxx_stdlib_macro PRIdLEAST16
syntax keyword cxx_stdlib_macro PRIdLEAST32
syntax keyword cxx_stdlib_macro PRIdLEAST64
syntax keyword cxx_stdlib_macro PRIdFAST8
syntax keyword cxx_stdlib_macro PRIdFAST16
syntax keyword cxx_stdlib_macro PRIdFAST32
syntax keyword cxx_stdlib_macro PRIdFAST64
syntax keyword cxx_stdlib_macro PRIdMAX
syntax keyword cxx_stdlib_macro PRIdPTR

syntax keyword cxx_stdlib_macro PRIi8
syntax keyword cxx_stdlib_macro PRIi16
syntax keyword cxx_stdlib_macro PRIi32
syntax keyword cxx_stdlib_macro PRIi64
syntax keyword cxx_stdlib_macro PRIiLEAST8
syntax keyword cxx_stdlib_macro PRIiLEAST16
syntax keyword cxx_stdlib_macro PRIiLEAST32
syntax keyword cxx_stdlib_macro PRIiLEAST64
syntax keyword cxx_stdlib_macro PRIiFAST8
syntax keyword cxx_stdlib_macro PRIiFAST16
syntax keyword cxx_stdlib_macro PRIiFAST32
syntax keyword cxx_stdlib_macro PRIiFAST64
syntax keyword cxx_stdlib_macro PRIiMAX
syntax keyword cxx_stdlib_macro PRIiPTR

syntax keyword cxx_stdlib_macro PRIu8
syntax keyword cxx_stdlib_macro PRIu16
syntax keyword cxx_stdlib_macro PRIu32
syntax keyword cxx_stdlib_macro PRIu64
syntax keyword cxx_stdlib_macro PRIuLEAST8
syntax keyword cxx_stdlib_macro PRIuLEAST16
syntax keyword cxx_stdlib_macro PRIuLEAST32
syntax keyword cxx_stdlib_macro PRIuLEAST64
syntax keyword cxx_stdlib_macro PRIuFAST8
syntax keyword cxx_stdlib_macro PRIuFAST16
syntax keyword cxx_stdlib_macro PRIuFAST32
syntax keyword cxx_stdlib_macro PRIuFAST64
syntax keyword cxx_stdlib_macro PRIuMAX
syntax keyword cxx_stdlib_macro PRIuPTR

syntax keyword cxx_stdlib_macro PRIo8
syntax keyword cxx_stdlib_macro PRIo16
syntax keyword cxx_stdlib_macro PRIo32
syntax keyword cxx_stdlib_macro PRIo64
syntax keyword cxx_stdlib_macro PRIoLEAST8
syntax keyword cxx_stdlib_macro PRIoLEAST16
syntax keyword cxx_stdlib_macro PRIoLEAST32
syntax keyword cxx_stdlib_macro PRIoLEAST64
syntax keyword cxx_stdlib_macro PRIoFAST8
syntax keyword cxx_stdlib_macro PRIoFAST16
syntax keyword cxx_stdlib_macro PRIoFAST32
syntax keyword cxx_stdlib_macro PRIoFAST64
syntax keyword cxx_stdlib_macro PRIoMAX
syntax keyword cxx_stdlib_macro PRIoPTR

syntax keyword cxx_stdlib_macro PRIx8
syntax keyword cxx_stdlib_macro PRIx16
syntax keyword cxx_stdlib_macro PRIx32
syntax keyword cxx_stdlib_macro PRIx64
syntax keyword cxx_stdlib_macro PRIxLEAST8
syntax keyword cxx_stdlib_macro PRIxLEAST16
syntax keyword cxx_stdlib_macro PRIxLEAST32
syntax keyword cxx_stdlib_macro PRIxLEAST64
syntax keyword cxx_stdlib_macro PRIxFAST8
syntax keyword cxx_stdlib_macro PRIxFAST16
syntax keyword cxx_stdlib_macro PRIxFAST32
syntax keyword cxx_stdlib_macro PRIxFAST64
syntax keyword cxx_stdlib_macro PRIxMAX
syntax keyword cxx_stdlib_macro PRIxPTR

syntax keyword cxx_stdlib_macro PRIX8
syntax keyword cxx_stdlib_macro PRIX16
syntax keyword cxx_stdlib_macro PRIX32
syntax keyword cxx_stdlib_macro PRIX64
syntax keyword cxx_stdlib_macro PRIXLEAST8
syntax keyword cxx_stdlib_macro PRIXLEAST16
syntax keyword cxx_stdlib_macro PRIXLEAST32
syntax keyword cxx_stdlib_macro PRIXLEAST64
syntax keyword cxx_stdlib_macro PRIXFAST8
syntax keyword cxx_stdlib_macro PRIXFAST16
syntax keyword cxx_stdlib_macro PRIXFAST32
syntax keyword cxx_stdlib_macro PRIXFAST64
syntax keyword cxx_stdlib_macro PRIXMAX
syntax keyword cxx_stdlib_macro PRIXPTR

syntax keyword cxx_stdlib_macro SCNd8
syntax keyword cxx_stdlib_macro SCNd16
syntax keyword cxx_stdlib_macro SCNd32
syntax keyword cxx_stdlib_macro SCNd64
syntax keyword cxx_stdlib_macro SCNdLEAST8
syntax keyword cxx_stdlib_macro SCNdLEAST16
syntax keyword cxx_stdlib_macro SCNdLEAST32
syntax keyword cxx_stdlib_macro SCNdLEAST64
syntax keyword cxx_stdlib_macro SCNdFAST8
syntax keyword cxx_stdlib_macro SCNdFAST16
syntax keyword cxx_stdlib_macro SCNdFAST32
syntax keyword cxx_stdlib_macro SCNdFAST64
syntax keyword cxx_stdlib_macro SCNdMAX
syntax keyword cxx_stdlib_macro SCNdPTR

syntax keyword cxx_stdlib_macro SCNi8
syntax keyword cxx_stdlib_macro SCNi16
syntax keyword cxx_stdlib_macro SCNi32
syntax keyword cxx_stdlib_macro SCNi64
syntax keyword cxx_stdlib_macro SCNiLEAST8
syntax keyword cxx_stdlib_macro SCNiLEAST16
syntax keyword cxx_stdlib_macro SCNiLEAST32
syntax keyword cxx_stdlib_macro SCNiLEAST64
syntax keyword cxx_stdlib_macro SCNiFAST8
syntax keyword cxx_stdlib_macro SCNiFAST16
syntax keyword cxx_stdlib_macro SCNiFAST32
syntax keyword cxx_stdlib_macro SCNiFAST64
syntax keyword cxx_stdlib_macro SCNiMAX
syntax keyword cxx_stdlib_macro SCNiPTR

syntax keyword cxx_stdlib_macro SCNu8
syntax keyword cxx_stdlib_macro SCNu16
syntax keyword cxx_stdlib_macro SCNu32
syntax keyword cxx_stdlib_macro SCNu64
syntax keyword cxx_stdlib_macro SCNuLEAST8
syntax keyword cxx_stdlib_macro SCNuLEAST16
syntax keyword cxx_stdlib_macro SCNuLEAST32
syntax keyword cxx_stdlib_macro SCNuLEAST64
syntax keyword cxx_stdlib_macro SCNuFAST8
syntax keyword cxx_stdlib_macro SCNuFAST16
syntax keyword cxx_stdlib_macro SCNuFAST32
syntax keyword cxx_stdlib_macro SCNuFAST64
syntax keyword cxx_stdlib_macro SCNuMAX
syntax keyword cxx_stdlib_macro SCNuPTR

syntax keyword cxx_stdlib_macro SCNo8
syntax keyword cxx_stdlib_macro SCNo16
syntax keyword cxx_stdlib_macro SCNo32
syntax keyword cxx_stdlib_macro SCNo64
syntax keyword cxx_stdlib_macro SCNoLEAST8
syntax keyword cxx_stdlib_macro SCNoLEAST16
syntax keyword cxx_stdlib_macro SCNoLEAST32
syntax keyword cxx_stdlib_macro SCNoLEAST64
syntax keyword cxx_stdlib_macro SCNoFAST8
syntax keyword cxx_stdlib_macro SCNoFAST16
syntax keyword cxx_stdlib_macro SCNoFAST32
syntax keyword cxx_stdlib_macro SCNoFAST64
syntax keyword cxx_stdlib_macro SCNoMAX
syntax keyword cxx_stdlib_macro SCNoPTR

syntax keyword cxx_stdlib_macro SCNx8
syntax keyword cxx_stdlib_macro SCNx16
syntax keyword cxx_stdlib_macro SCNx32
syntax keyword cxx_stdlib_macro SCNx64
syntax keyword cxx_stdlib_macro SCNxLEAST8
syntax keyword cxx_stdlib_macro SCNxLEAST16
syntax keyword cxx_stdlib_macro SCNxLEAST32
syntax keyword cxx_stdlib_macro SCNxLEAST64
syntax keyword cxx_stdlib_macro SCNxFAST8
syntax keyword cxx_stdlib_macro SCNxFAST16
syntax keyword cxx_stdlib_macro SCNxFAST32
syntax keyword cxx_stdlib_macro SCNxFAST64
syntax keyword cxx_stdlib_macro SCNxMAX
syntax keyword cxx_stdlib_macro SCNxPTR

syntax keyword cxx_stdlib_macro SCNX8
syntax keyword cxx_stdlib_macro SCNX16
syntax keyword cxx_stdlib_macro SCNX32
syntax keyword cxx_stdlib_macro SCNX64
syntax keyword cxx_stdlib_macro SCNXLEAST8
syntax keyword cxx_stdlib_macro SCNXLEAST16
syntax keyword cxx_stdlib_macro SCNXLEAST32
syntax keyword cxx_stdlib_macro SCNXLEAST64
syntax keyword cxx_stdlib_macro SCNXFAST8
syntax keyword cxx_stdlib_macro SCNXFAST16
syntax keyword cxx_stdlib_macro SCNXFAST32
syntax keyword cxx_stdlib_macro SCNXFAST64
syntax keyword cxx_stdlib_macro SCNXMAX
syntax keyword cxx_stdlib_macro SCNXPTR

" <algorithm> non-modifying sequence operations
syntax keyword cxx_stdlib_function all_of
syntax keyword cxx_stdlib_function any_of
syntax keyword cxx_stdlib_function none_of
syntax keyword cxx_stdlib_function for_each
syntax keyword cxx_stdlib_function count
syntax keyword cxx_stdlib_function count_if
syntax keyword cxx_stdlib_function equal
syntax keyword cxx_stdlib_function find
syntax keyword cxx_stdlib_function find_if
syntax keyword cxx_stdlib_function find_if_not
syntax keyword cxx_stdlib_function find_end
syntax keyword cxx_stdlib_function find_first_of
syntax keyword cxx_stdlib_function adjacent_find
syntax keyword cxx_stdlib_function search
syntax keyword cxx_stdlib_function search_n

" <algorithm> modifying sequence operations
syntax keyword cxx_stdlib_function copy
syntax keyword cxx_stdlib_function copy_if
syntax keyword cxx_stdlib_function copy_n
syntax keyword cxx_stdlib_function copy_backward
syntax keyword cxx_stdlib_function move
syntax keyword cxx_stdlib_function move_backward
syntax keyword cxx_stdlib_function fill
syntax keyword cxx_stdlib_function fill_n
syntax keyword cxx_stdlib_function transform
syntax keyword cxx_stdlib_function generate
syntax keyword cxx_stdlib_function generate_n
syntax keyword cxx_stdlib_function remove
syntax keyword cxx_stdlib_function remove_if
syntax keyword cxx_stdlib_function remove_copy
syntax keyword cxx_stdlib_function remove_copy_if
syntax keyword cxx_stdlib_function replace
syntax keyword cxx_stdlib_function replace_if
syntax keyword cxx_stdlib_function replace_copy
syntax keyword cxx_stdlib_function replace_copy_if
syntax keyword cxx_stdlib_function swap
syntax keyword cxx_stdlib_function swap_ranges
syntax keyword cxx_stdlib_function iter_swap
syntax keyword cxx_stdlib_function reverse
syntax keyword cxx_stdlib_function reverse_copy
syntax keyword cxx_stdlib_function rotate
syntax keyword cxx_stdlib_function rotate_copy
syntax keyword cxx_stdlib_function random_shuffle
syntax keyword cxx_stdlib_function shuffle
syntax keyword cxx_stdlib_function unique
syntax keyword cxx_stdlib_function unique_copy

" <algorithm> partitioning operations
syntax keyword cxx_stdlib_function is_partitioned
syntax keyword cxx_stdlib_function partition
syntax keyword cxx_stdlib_function partition_copy
syntax keyword cxx_stdlib_function stable_partition
syntax keyword cxx_stdlib_function partition_point

" <algorithm> sorting operations
syntax keyword cxx_stdlib_function is_sorted
syntax keyword cxx_stdlib_function is_sorted_until
syntax keyword cxx_stdlib_function sort
syntax keyword cxx_stdlib_function partial_sort
syntax keyword cxx_stdlib_function partial_sort_copy
syntax keyword cxx_stdlib_function stable_sort
syntax keyword cxx_stdlib_function nth_element

" <algorithm> binary search operation (on sorted ranges)
syntax keyword cxx_stdlib_function lower_bound
syntax keyword cxx_stdlib_function upper_bound
syntax keyword cxx_stdlib_function binary_search
syntax keyword cxx_stdlib_function equal_range

" <algorithm> set operations (on sorted ranges)
syntax keyword cxx_stdlib_function merge
syntax keyword cxx_stdlib_function inplace_merge
syntax keyword cxx_stdlib_function includes
syntax keyword cxx_stdlib_function set_difference
syntax keyword cxx_stdlib_function set_intersection
syntax keyword cxx_stdlib_function set_symmetric_difference
syntax keyword cxx_stdlib_function set_union

" <algorithm> heap operations
syntax keyword cxx_stdlib_function is_heap
syntax keyword cxx_stdlib_function is_heap_until
syntax keyword cxx_stdlib_function make_heap
syntax keyword cxx_stdlib_function push_heap
syntax keyword cxx_stdlib_function pop_heap
syntax keyword cxx_stdlib_function sort_heap

" <algorithm> minimum/maximum operations
syntax keyword cxx_stdlib_function max
syntax keyword cxx_stdlib_function max_element
syntax keyword cxx_stdlib_function min
syntax keyword cxx_stdlib_function min_element
syntax keyword cxx_stdlib_function minmax
syntax keyword cxx_stdlib_function minmax_element
syntax keyword cxx_stdlib_function lexicographical_compare
syntax keyword cxx_stdlib_function is_permutation
syntax keyword cxx_stdlib_function next_permutation
syntax keyword cxx_stdlib_function prev_permutation

" <numeric> numeric operations
syntax keyword cxx_stdlib_function iota
syntax keyword cxx_stdlib_function accumulate
syntax keyword cxx_stdlib_function inner_product
syntax keyword cxx_stdlib_function adjacent_difference
syntax keyword cxx_stdlib_function partial_sum

" <memory> smart pointers
syntax keyword cxx_stdlib_type unique_ptr
syntax keyword cxx_stdlib_type shared_ptr
syntax keyword cxx_stdlib_type weak_ptr

" <memory> helper classes
syntax keyword cxx_stdlib_exception bad_weak_ptr
syntax keyword cxx_stdlib_type owner_less
syntax keyword cxx_stdlib_type enable_shared_from_this
syntax keyword cxx_stdlib_type default_delete

" <memory> allocators
syntax keyword cxx_stdlib_type allocator_traits
syntax keyword cxx_stdlib_type allocator_type
syntax keyword cxx_stdlib_type allocator_arg_t
syntax keyword cxx_stdlib_type uses_allocator

syntax keyword cxx_stdlib_constant allocator_arg

" <memory> uninitialized storage
syntax keyword cxx_stdlib_function uninitialized_copy
syntax keyword cxx_stdlib_function uninitialized_copy_n
syntax keyword cxx_stdlib_function uninitialized_fill
syntax keyword cxx_stdlib_function uninitialized_fill_n
syntax keyword cxx_stdlib_function get_temporary_buffer
syntax keyword cxx_stdlib_function return_temporary_buffer

syntax keyword cxx_stdlib_type raw_storage_iterator

" <memory> garbage collector support
syntax keyword cxx_stdlib_enum pointer_safety

syntax keyword cxx_stdlib_function declare_reachable
syntax keyword cxx_stdlib_function undeclare_reachable
syntax keyword cxx_stdlib_function declare_no_pointers
syntax keyword cxx_stdlib_function undeclare_no_pointers

" <memory> miscellanous
syntax keyword cxx_stdlib_type pointer_traits
syntax keyword cxx_stdlib_function addressof
syntax keyword cxx_stdlib_function align

" <memory> smart pointer non-member operations
syntax keyword cxx_stdlib_function make_shared
syntax keyword cxx_stdlib_function allocate_shared
syntax keyword cxx_stdlib_function static_pointer_cast
syntax keyword cxx_stdlib_function dynamic_pointer_cast
syntax keyword cxx_stdlib_function const_pointer_cast
syntax keyword cxx_stdlib_function get_deleter

" <typeindex>
syntax keyword cxx_stdlib_type type_index

" <type_traits>

" primary categories
syntax keyword cxx_stdlib_type is_void
syntax keyword cxx_stdlib_type is_integral
syntax keyword cxx_stdlib_type is_floating_point
syntax keyword cxx_stdlib_type is_array
syntax keyword cxx_stdlib_type is_enum
syntax keyword cxx_stdlib_type is_union
syntax keyword cxx_stdlib_type is_class
syntax keyword cxx_stdlib_type is_function
syntax keyword cxx_stdlib_type is_pointer
syntax keyword cxx_stdlib_type is_lvalue_reference
syntax keyword cxx_stdlib_type is_rvalue_reference
syntax keyword cxx_stdlib_type is_member_object_pointer
syntax keyword cxx_stdlib_type is_member_function_pointer

" composite categories
syntax keyword cxx_stdlib_type is_fundamental
syntax keyword cxx_stdlib_type is_arithmetic
syntax keyword cxx_stdlib_type is_scalar
syntax keyword cxx_stdlib_type is_object
syntax keyword cxx_stdlib_type is_compound
syntax keyword cxx_stdlib_type is_reference
syntax keyword cxx_stdlib_type is_member_pointer

" type properties
syntax keyword cxx_stdlib_type is_const
syntax keyword cxx_stdlib_type is_volatile
syntax keyword cxx_stdlib_type is_trivial
syntax keyword cxx_stdlib_type is_trivially_copyable
syntax keyword cxx_stdlib_type is_standard_layout
syntax keyword cxx_stdlib_type is_pod
syntax keyword cxx_stdlib_type is_literal_type
syntax keyword cxx_stdlib_type is_empty
syntax keyword cxx_stdlib_type is_polymorphic
syntax keyword cxx_stdlib_type is_abstract
syntax keyword cxx_stdlib_type is_signed
syntax keyword cxx_stdlib_type is_unsigned

" supported operations
syntax keyword cxx_stdlib_type is_constructible
syntax keyword cxx_stdlib_type is_trivially_constructible
syntax keyword cxx_stdlib_type is_nothrow_constructible
syntax keyword cxx_stdlib_type is_default_constructible
syntax keyword cxx_stdlib_type is_trivially_default_constructible
syntax keyword cxx_stdlib_type is_nothrow_default_constructible
syntax keyword cxx_stdlib_type is_copy_constructible
syntax keyword cxx_stdlib_type is_trivially_copy_constructible
syntax keyword cxx_stdlib_type is_nothrow_copy_constructible
syntax keyword cxx_stdlib_type is_move_constructible
syntax keyword cxx_stdlib_type is_trivially_move_constructible
syntax keyword cxx_stdlib_type is_nothrow_move_constructible
syntax keyword cxx_stdlib_type is_assignable
syntax keyword cxx_stdlib_type is_trivially_assignable
syntax keyword cxx_stdlib_type is_nothrow_assignable
syntax keyword cxx_stdlib_type is_copy_assignable
syntax keyword cxx_stdlib_type is_trivially_copy_assignable
syntax keyword cxx_stdlib_type is_nothrow_copy_assignable
syntax keyword cxx_stdlib_type is_move_assignable
syntax keyword cxx_stdlib_type is_trivially_move_assignable
syntax keyword cxx_stdlib_type is_nothrow_move_assignable
syntax keyword cxx_stdlib_type is_destructible
syntax keyword cxx_stdlib_type is_trivially_destructible
syntax keyword cxx_stdlib_type is_nothrow_destructible
syntax keyword cxx_stdlib_type has_virtual_destructor

" property queries
syntax keyword cxx_stdlib_type alignment_of
syntax keyword cxx_stdlib_type rank
syntax keyword cxx_stdlib_type extent

" type relationships
syntax keyword cxx_stdlib_type is_same
syntax keyword cxx_stdlib_type is_base_of
syntax keyword cxx_stdlib_type is_convertible

" type modifications

syntax keyword cxx_stdlib_type remove_cv
syntax keyword cxx_stdlib_type remove_const
syntax keyword cxx_stdlib_type remove_volatile
syntax keyword cxx_stdlib_type add_cv
syntax keyword cxx_stdlib_type add_const
syntax keyword cxx_stdlib_type add_volatile
syntax keyword cxx_stdlib_type remove_reference
syntax keyword cxx_stdlib_type add_lvalue_reference
syntax keyword cxx_stdlib_type add_rvalue_reference
syntax keyword cxx_stdlib_type remove_pointer
syntax keyword cxx_stdlib_type add_pointer
syntax keyword cxx_stdlib_type make_signed
syntax keyword cxx_stdlib_type make_unsigned
syntax keyword cxx_stdlib_type remove_extent
syntax keyword cxx_stdlib_type remove_all_extents

" miscellaneous transformations
syntax keyword cxx_stdlib_type aligned_storage
syntax keyword cxx_stdlib_type aligned_union
syntax keyword cxx_stdlib_type decay
syntax keyword cxx_stdlib_type enable_if
syntax keyword cxx_stdlib_type conditional
syntax keyword cxx_stdlib_type common_type
syntax keyword cxx_stdlib_type underlying_type
syntax keyword cxx_stdlib_type result_of

" helper classes
syntax keyword cxx_stdlib_type integral_constant
syntax keyword cxx_stdlib_type false_type
syntax keyword cxx_stdlib_type true_type

" link highlighting here
hi def link cxx_stdlib_function Function
hi def link cxx_stdlib_exception Type
hi def link cxx_stdlib_type Type

hi def link cxx_stdlib_macro Macro

hi def link cxx_stdlib_constant Constant
