
# WNC-Coin（维恩币）

基于 Litecoin 分叉的虚拟币，支持挖矿、每四年减半，使用 Scrypt 算法。

## 启动主节点
```bash
./wncd -daemon
```

## 钱包命令
```bash
./wnc-cli getnewaddress
./wnc-cli getbalance
```

## 挖矿命令（本地测试）
```bash
./wnc-cli generatetoaddress 1 <你的地址>
```
