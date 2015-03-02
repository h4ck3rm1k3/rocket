import os.path

from walkdir import filtered_walk, dir_paths, all_paths, file_paths
files = file_paths(filtered_walk('.', 
                                 included_files=['*.go']))

packages = {}

for f in files:
    dirn= os.path.dirname(f)

    if dirn not in packages:
        packages[dirn]={}

    packages[dirn][f]=1

for n in  packages:
    print "{0}.o: {1}".format(n, " ".join(packages[n].keys()))
    print "\t$(GCCGO) -L . -I . -c -g -o $@ $^"



print "all_pkgs:" + " ".join(["{}.o".format(n) for n in  packages])
print "\teho"
