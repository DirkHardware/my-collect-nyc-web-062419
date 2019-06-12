Lang_collect = []
Student_collect = []
New_collect = []

def my_collect(array)
  i = 0
  if array.length == 0
    "Sorry, collection is empty!"
  end

  while i < array.length
    yield array[i]
    i += 1
  end
  New_collect
end

languages = ['ruby', 'javascript', 'python', 'objective-c']
students = ["Tim Jones", "Tom Smith", "Jim Campagno"]

# my_collect(students) do |element|
#   New_collect << element.split(" ").first
# end

my_collect(languages) do |element|
  Lang_collect << element.upcase
end

# What's probably happening with this last failure is that both the language and the student collections are getting passed to the same array
