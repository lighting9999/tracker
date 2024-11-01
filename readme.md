# Trackerlist

每天更新！全网热门 Tracker 列表！
# Tracker是什么?

- 因为 **BT 下载文件**全都是**其他用户上传给你的**。
- 所以 **BT 下载速度**就等于**其他用户的上传速度**。
**链接到的做种上传用户越多**，你的下载速度就越快，而用户通过 **Peer、DHT、Tracker** 获得。  

|  |  |
| :---- | :---- |
| **Peer** | 在获得一个有效用户后才会起作用，该用户会把它知道的其他用户信息告诉你。 |
| **DHT** | Peer 加强版，分布式储存用户信息，获得用户的效率更高，但需要下载热门资源来养。 |
| **Tracker** | 记录所有正在上传/下载同一资源的用户信息并提供给你，帮助你与其他用户建立连接。 |

 > **以上三者的优缺点是互补的，不存在谁替代谁，只有互相搭配 一起使用 效果才最好**

****
\# **以下为完整列表 ` best.txt ` 示例（末尾文件名可自行修改，选择一个速度快的地址）：**  

### 如何使用?

#### Aria2:

<details>
<summary><strong><code>[点击展开] - 查看 Aria2 格式的 Tracker 列表</code></strong></summary>
</details>

复制 Aria2 格式 Tracker 文件中内容后，粘贴到配置文件 `aria2.conf` 中 `bt-tracker=` 的后面，示例如下：
``` ini
bt-tracker=http://aaa.aa:80/announce,udp://bbb.bb:80/announce
```
> **注意：** 粘贴前请先删除旧 Tracker 内容，避免格式错误！

****

#### BitComet (比特彗星):

- **工具 - 选项 - 任务设置 - BT下载 - Tracker**  
 **勾选下图红框内的选项** 并填写 Tracker URL 后点击 `立即更新` 上面就会显示获取的 Tracker 了。  
 
> <small>比特彗星的 **黄灯 绿灯** 对下载速度影响较小，主要影响上传速度，绿灯需要 **公网IP + 端口映射(UPnP)** 。</small>  

#### qBittorrent Enhanced Edition (增强版): 

> <small>在 qBittorrent 的基础上增加了很多功能，例如：**屏蔽迅雷、订阅 Tracker URL** ，可以很方便的配合本项目使用。</small>

- **选项[齿轮图标] - BitTorrent**  
 **勾选下图红框内的选项** 并填写 Tracker URL 后点击 `Apply` 保存，**然后重启 qBittorrentEE 。**  

#### qBittorrent
- **选项[齿轮图标] - BitTorrent**  
 **勾选下图红框内的选项** 并复制所有 Tracker 后粘贴到下方输入框中，然后点击 `Apply` 保存。  
 
#### Motrix:

- **选项(左下角) - 进阶设置 - Tracker 服务器 - ﹀**  
 **勾选任意一个选项（如 all.txt）** ，然后点击 `保存并应用` 保存。 
