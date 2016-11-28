# def my_select(collection)
#   if self.instance_of?(collection)
#     i = 0
#     while i < self.size
#       yield(self[i])
#         i += 1
#   end
#     self
#   elsif self.instance_of?(Hash)
#     i = 0
#     arr = self.to_a
#     while i < arr.size
#       yield(arr[i][0], arr[i][1])
#         i += 1
#   end
#     self
#   end
# end

def my_select(array)
  i = 0
  select = []
  while i < array.length
    if (yield(array[i]))
      select << array[i]
    end
    i+=1
  end
  select
end
