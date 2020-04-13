# z2z newsletter python script

This script is to be used with [zcashd](https://github.com/zcash/zcash) which is the full node version of Zcash.
All the files will need to be in the `/zcash/src/` folder. You probably could symlink it and have the files in another folder
and all neat and tidy, but I am new to python programming and shell scripting. This is why it will be all loose files within the `src` folder.

The main file is the `zcashdmailinglist.sh` file. Make sure that is executable by running `sudo chown u+x zcashdmailinglist.sh`. 

The top of this script splits up the maililinglist.txt file you have (all zaddrs with a coma after every address) into three different lists.
Currently I have it set up to split up every 40 lines. You can make it smaller by changing the number after the `l`. I split up my original list because some of my memos were not being picked up and mined (maybe because they were too big in size? (103,000kb for 108 ppl for one message)). 

Do note that in each of the `z2zmailinglist*.py` files you will need to change some items:
* change the amount you want to send to your receipients
`for a in file:
    outstring += '{\\"address\\": \\"'+a.replace(',','')+'\\",\\"amount\\": 0.00000200, \\"memo\\":\\"'+hextext+'\\"},'`
* change the address you will be sending the funds from
`outstring += './zcash-cli z_sendmany "zs..............................................." '`

I have included all you will need to send up to six memos to three different lists of 40 people per list. The first list uses the python scripts that end in `1` and an `a` letter. So for six memos it would be 1a-1f. Same thing for lists two and three (2a-2f and 3a-3f).

There are timers after each message is sent so that hopefully the memos will arrive in order to your subscribers. I have also added echos so that way if you run into problems you can see which memo the problem occured. 

I also have included a second group of text files so that way you can "prep" the next newsletter you want to send out. The program will automatically upload the text files on deck to go up to bat.

It will also print out all of your transactions from your memos and even give you just a file of the txids so that you can check on an explorer to make sure they got mined. 

**Important** All of your memos have to include quotation marks at the beginning and end. If you are going to "quote" something within the memo use single 'quotes' because the python script will read the wrong quote and things will get all messed up. It will send out the last message you successfully sent out instead of what you want to send out. 

Donations:
ZEC - z2z.to/shonondray