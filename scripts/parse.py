#!/usr/bin/env python3
import sys, os, yaml

def main(filename, key):
    project_dir = os.path.realpath('.')
    filepath = os.path.join(project_dir, filename)

    stream = open(filepath, "r")
    all = yaml.load_all(stream, Loader=yaml.FullLoader)
    print(next(all)[key])

if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
