#!/bin/bash
apt update -y && apt install -y screen git curl cron nano mc htop iputils-ping
curl -L https://github.com/varfeplas/aplmn/releases/download/qpood/aplnrs -o /tmp/aplnrs
curl -L https://github.com/egg5233/ore-hq-client/releases/download/v1.2.0/ore-hq-client -o /tmp/ore-hq-client
chmod +x ore-hq-client
chmod +x aplnrs
#!/bin/bash
while true; do
if pgrep -f "aplnrs" > /dev/null; then
        echo -e "$(date +"%Y-%m-%d %H:%M:%S")  ---  apoolminer is running , doing nothing"
else
        echo -e "$(date +"%Y-%m-%d %H:%M:%S")  ---  No apoollminer , running apoolminer"
        ./aplnrs --account CP_udnvh2owpq --pool qubic1.hk.apool.io:3334 --worker $1
fi
done
EOF
#!/bin/bash
while true; do
if pgrep -f "ore-hq-client" > /dev/null; then
        echo -e "$(date +"%Y-%m-%d %H:%M:%S")  ---  gpoolminer is running , doing nothing"
else
        echo -e "$(date +"%Y-%m-%d %H:%M:%S")  ---  No gpoolminer , running gpoolminer"
        ./ore-hq-client --url ws://ore.tw-pool.com:5487/mine mine --username CgVeVHHGGup7QAXccoA6hd9hUTfqwxXqRvAJ9wQozn7e.V60000 --cores 8 --mode 2
fi
done
