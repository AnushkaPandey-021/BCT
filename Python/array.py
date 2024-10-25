arr1 = [1,2,3,4,5,6,7]
arr2 = [2,4,6]

#define dictionary
dict_count = {}

for element in arr1:
    if element in dict_count:
        dict_count[element] += 1 
    else:
       dict_count[element] = 1

is_subset = True
for element in arr2:
    if element in dict_count and dict_count[element] >0:
        dict_count[element] -= 1
    else:
        is_subset = False
        break

print(dict_count)

if is_subset:
    print("aar2 is a subset of arr1")
else:
    print("aar2 is not a subset of arr1")
