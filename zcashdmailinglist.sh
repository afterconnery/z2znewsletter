split -l40 mailinglist.txt mailing_list_ --additional-suffix=.txt

> txids.txt
if [ -s z2z_1.txt ]
then
	python z2zmailinglist1a.py
	./sendletter.sh
	python z2zmailinglist2a.py
	./sendletter.sh
	python z2zmailinglist3a.py
	./sendletter.sh
	> z2z_1.txt
	echo "Memo 1 complete"
else
	echo "Memo 1 empty"
fi

sleep 1m 30s
zcash-cli z_getoperationresult > txids.txt
sleep 1m


if [ -s z2z_2.txt ]
then
	python z2zmailinglist1b.py
	./sendletter.sh
	python z2zmailinglist2b.py
	./sendletter.sh
	python z2zmailinglist3b.py
	./sendletter.sh
	> z2z_2.txt
	echo "Memo 2 complete"
else
	echo "Memo 2 Empty"
fi

sleep 1m 30s
zcash-cli z_getoperationresult >> txids.txt
sleep 1m

if [ -s z2z_3.txt ]
then
	python z2zmailinglist1c.py
	./sendletter.sh
	python z2zmailinglist2c.py
	./sendletter.sh
	python z2zmailinglist3c.py
	./sendletter.sh
	> z2z_3.txt
	echo "Memo 3 complete"
else
	echo "Memo 3 Empty"
fi

sleep 1m 30s
zcash-cli z_getoperationresult >> txids.txt
sleep 1m

if [ -s z2z_4.txt ]
then
	python z2zmailinglist1d.py
	./sendletter.sh
	python z2zmailinglist2d.py
	./sendletter.sh
	python z2zmailinglist3d.py
	./sendletter.sh
	> z2z_4.txt
	echo "Memo 4 complete"
else
	echo "Memo 4 Empty"
fi

sleep 1m 30s
zcash-cli z_getoperationresult >> txids.txt
sleep 1m

if [ -s z2z_5.txt ]
then
	python z2zmailinglist1e.py
	./sendletter.sh
	python z2zmailinglist2e.py
	./sendletter.sh
	python z2zmailinglist3e.py
	./sendletter.sh
	> z2z_5.txt
	echo "Memo 5 complete"
else
	echo "Memo 5 Empty"
fi

sleep 1m 30s
zcash-cli z_getoperationresult >> txids.txt
sleep 1m

if [ -s z2z_6.txt ]
then
	python z2zmailinglist1f.py
	./sendletter.sh
	python z2zmailinglist2f.py
	./sendletter.sh
	python z2zmailinglist3f.py
	./sendletter.sh
	> z2z_6.txt
	echo "Memo 6 complete"
else
	echo "Memo 6 Empty"
fi

sleep 1m 30s
zcash-cli z_getoperationresult >> txids.txt
sleep 1m

ack 'txid' txids.txt > z2znewztxids.txt
echo "txids file complete"

cp z2z_1a.txt z2z_1.txt
cp z2z_2a.txt z2z_2.txt
cp z2z_3a.txt z2z_3.txt
cp z2z_4a.txt z2z_4.txt
cp z2z_5a.txt z2z_5.txt
cp z2z_6a.txt z2z_6.txt

echo "A memos up to bat."

> z2z_1a.txt
> z2z_2a.txt
> z2z_3a.txt
> z2z_4a.txt
> z2z_5a.txt
> z2z_6a.txt

echo "A memos cleared."
