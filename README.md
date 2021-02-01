## 目录结构

```
~
├── server_script
│   ├── start_cave.sh
│   ├── start_dst_server.sh (启动cave 和 master脚本)
│   ├── start_master.sh (仅启动master)
│   └── update_dst.sh (更新DST 服务器脚本)
├── Steam
├── steamapps
├── .klei
	├── Agreements
	│   └── DoNotStarveTogether
	│       └── agreements.ini
	└── DoNotStarveTogether
    	└── Cluster_1 (默认启动的世界)
        	├── adminlist.txt (管理员白名单)
        	├── Caves(洞穴配置文件夹)
        	├── cluster.ini
        	├── cluster_token.txt
        	└── Master(主世界配置文件夹)
└── steamcmd
```



## 启动服务器

1. **启动Cave 和 Master**

   进入`server_script` 目录执行`./start_dst_server.sh`

2. **只启动Master**

   `./start_master.sh`



## 管理服务器

启动后服务器的程序在screen 创建单独的session 运行。

`screen -ls` 查看当前运行的session

```
There are screens on:
        4596.DST_Cave   (02/01/2021 10:48:23 AM)        (Detached)
        4593.DST_Master (02/01/2021 10:48:23 AM)        (Detached)
```

`Detached` 表示当前在后台运行，`screen -r <session_name>` 连接session，连接后即可看到控制台信息。

相关管理命令查阅：[控制台/多人版饥荒中的命令 | Don't Starve 中文維基 | Fandom](https://dontstarve.fandom.com/zh/wiki/控制台/多人版饑荒中的命令)



### 管理员名单

在每个cluster文件夹下有`adminlist.txt` 文件，输入对应的用户klei 账户id 即可添加管理员



### 创意工坊模组添加

可参考：[饥荒联机太卡？搭建饥荒独立服务器解决 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/146379848)





## 关闭服务器

连接到对应的session 输入`c_shutdown()` 