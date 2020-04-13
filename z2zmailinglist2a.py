file = open("mailing_list_ab.txt")
#memotext=open("z2z_2.txt") #input("Input Memo (IN QUOTES): ")
with open("z2z_1.txt", 'rb') as f:
    contents = f.read()
hextext=contents.encode("hex")
outstring=""
output = open("./sendletter.sh","w")
outstring += './zcash-cli z_sendmany "zs...................................." '
outstring += '"['
 
for a in file:
    outstring += '{\\"address\\": \\"'+a.replace(',','')+'\\",\\"amount\\": 0.00000200, \\"memo\\":\\"'+hextext+'\\"},'
   
 
outstring=outstring[:-1]
outstring+= ']"'
outstring = outstring.replace('\n', '')
output.write(outstring)
