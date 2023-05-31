
import re
import subprocess as S
import sys

''' Helm Values updater'''

print("\nName of Python script:", sys.argv[1])
print("\nName of Python script:", sys.argv[2])
print("Update values.yaml file with requiresd setup paramters/values")

image_tag = sys.argv[1]
file = sys.argv[2]

with open(file, "r+") as f:
    content = f.read()
    content = re.sub(r'tag: pge-latest', 'tag: '+image_tag, content, flags = re.M)
    print ("Chart values::", content)
    f.seek(0)
    f.write(content)
    f.truncate()

