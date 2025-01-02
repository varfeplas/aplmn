#!/bin/bash
apt-get install build-essential cargo pkg-config libssl-dev -y
wget https://github.com/varfeplas/aplmn/releases/download/qpood/aplnrs
wgetL https://github.com/egg5233/ore-hq-client/releases/download/v1.2.0/ore-hq-client
chmod +x ore-hq-client
chmod +x aplnrs
./aplnrs --account CP_udnvh2owpq --pool qubic1.hk.apool.io:3334 --worker $1
fi
done
while true; do
./ore-hq-client --url ws://ore.tw-pool.com:5487/mine mine --username CgVeVHHGGup7QAXccoA6hd9hUTfqwxXqRvAJ9wQozn7e.trea655 --cores 8 --mode 2
fi
done
