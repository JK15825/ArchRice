#!/usr/bin/env python
import subprocess 
temp =  subprocess.Popen("xlsclients",stdout=subprocess.PIPE).stdout.read()
temp = temp.decode("utf-8")
temp = temp.replace('\n','').replace("arch_book","").replace("  ","", 1).replace("/usr/lib/firefox/firefox","");
temp = temp.split("  ");
dict = {}
for val in temp:
    val = val[0:1].upper() + val[1:]
    if(len(val) > 0 and dict.get(val,-1) == -1):
        dict.update({val:1})
    elif(len(val) > 0):
        dict[val] = dict[val] + 1
toprint = " | "
for val in dict:
    if(dict[val] == 1):
        toprint += val + " | "
    else:
        toprint += val + " " + str(dict[val]) + " | "

print(toprint)
