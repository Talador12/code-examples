# Definition

def combine_val(li, k):
  """
  Helper function that returns tuple combinations from 'li' that add up to 'k'

  Arguments:
      li - list - list of values to combine
      k - int - the value to compare combined sums to

  Return:
      filtered_list - list - list of tuples that combine to k
  """
  dict = {}
  for val in li:
    dict[abs(k-val)] = val

  filtered_list = []
  for key, val in dict.items():
    if (val, key) not in filtered_list:
      filtered_list.append((key, val))

  return filtered_list

# Usage

value_list = [1,2,3,4,5,6,7,8,9]
combined_value_matches = 10
print(f'{value_list = }')
print(f'{combined_value_matches = }')
print(combine_val(value_list, combined_value_matches))
