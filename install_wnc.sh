
#!/bin/bash
echo "=== 安装依赖 ==="
apt update && apt install -y libevent-dev libboost-system-dev libboost-filesystem-dev   libboost-chrono-dev libboost-test-dev libboost-thread-dev build-essential   libminiupnpc-dev libzmq3-dev

echo "=== 创建配置文件 ==="
mkdir -p ~/.wnc
echo "rpcuser=wncrpcuser" > ~/.wnc/wnc.conf
echo "rpcpassword=$(openssl rand -hex 16)" >> ~/.wnc/wnc.conf
echo "daemon=1" >> ~/.wnc/wnc.conf
echo "server=1" >> ~/.wnc/wnc.conf

echo "=== 启动节点 ==="
./wncd -daemon
