#! /bin/bash

# backup wallet
cp /root/waves/wallet/wallet.dat /root/waves/temp/wallet.dat
sudo aws s3 cp /root/waves/temp/wallet.dat s3://$1/ --sse
rm /root/waves/temp/wallet.dat

# backup blockchain
cp /root/waves/data/blockchain.dat /root/waves/temp/blockchain.dat
sudo aws s3 cp /root/waves/temp/blockchain.dat s3://$2/
rm /root/waves/temp/blockchain.dat

# backup waves logs
cp /var/log/supervisor/waves-out.log /root/waves/temp/waves-out.log
sudo aws s3 cp /root/waves/temp/waves-out.log s3://$2/
rm /root/waves/temp/waves-out.log

# update the OS
sudo yum -y update