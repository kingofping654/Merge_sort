#A method that takes an array of numbers and sorts them recursively
def merge_sort(arr)
#If the array has less than 2 numbers it is already sorted so it is returned immediately(basecase)
  return arr if arr.length < 2

#The given array is split into to halves (b,c) if the amount of numbers is odd b gets less numbers. We also create the empty array a whch will be used later.
b = merge_sort(arr.slice(0, arr.length/2))
c = merge_sort(arr.slice(arr.length/2,(arr.length-1)))
a = []

#The first number of both b and c are compared if b is lower than it is added to a if not c[0] is added to a. whichever number is chosen is removed from either b or c and the loop continues till b or c is empty. Once the loop ends the remander of b and c are combined into a. The method ends by returning a fully sorted.
until b.empty? || c.empty?

  if b[0] < c[0]
    a.append(b.shift)
  elsif b[0] > c[0]
    a.append(c.shift)
  end
end
a.concat(b, c)
end




 print merge_sort([1,4,6,2,7,3,9]) #=>[1,2,3,4,6,7,9]

 print merge_sort([0,7,25,1997,4,30,1]) #=>[0,4,7,25,30,1983,1997]
 print merge_sort([2,4,3,1,20,100,10]) #=> [1,2,3,4,10,20,100]


