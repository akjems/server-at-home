import os
from pathlib import Path
path = '/mnt'


directory_contents = os.listdir(path)
for item in directory_contents:
    print(item)

