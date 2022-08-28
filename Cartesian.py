input_1 = input("\nEnter the string:\n")
print("\nOriginal String:\n" + input_1)
word_counter = {}

words = input_1.split(" ")
string = []
for word in words:
    output_string = string.insert(0, word)
    output_string = (" ".join(string))
print("\nReversed String:")
print(output_string.capitalize())

for text in input_1.split(" "):
  if len(text) > 0:
    if text not in word_counter:
      word_counter[text] = 1
    else:
      word_counter[text] += 1

for i,text in enumerate(sorted(word_counter, key=word_counter.get, reverse=True)[:2]):
  print("\n%s: %s - %s"%(i+1, text, word_counter[text]))