# This python script will open a file named "mailinglist.txt" that has a z-address on every line, and ask the user
# to input a memo. It will then assemble a z_sendmany transaction with a 200 zatoshi output and the memo for each recipient listed in
# mailinglist.txt .

file = open("mailing_list_aa.txt")
#memotext = 'z2z_1.txt' #input("Input Memo (IN QUOTES): ")
with open("z2z_6.txt", 'rb') as f:
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

