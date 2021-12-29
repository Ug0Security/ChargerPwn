cat iplist | while read line
do
echo $line
torify timeout 5 sshpass -p orange_zone ssh -n -o "StrictHostKeyChecking no" root@$line -p 23 id
echo ""
echo ""
done
