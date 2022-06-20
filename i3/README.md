# i3wm 基础配置

i3wm是一个平铺式的窗口管理器，相较于各linux发行版使用的桌面环境更加轻量。参考 [i3wm官网](https://i3wm.org/)

## 写在前面

打开终端：`Alt + enter`

关闭窗口：`win + q`

程序启动器：`win + d`

## 安装软件

### 安装X窗口管理器

```
sudo pacman -S xorg-server
```

### 安装i3

首先介绍一下i3-gaps和i3wm，二者基本的用法是相同的。不同之处体现在窗口的展示风格上，i3-gaps在窗口之间会有间隙：

![image-20220503144810116](/home/klelee/.config/Typora/typora-user-images/image-20220503144810116.png)

而i3wm在窗口之间是闭合的，显得会比较混乱，所以推荐使用i3-gaps.

```
sudo pacman -S i3-gaps i3blocks i3status
```

## 启动i3

### 从命令行启动i3

安装xinit

```
sudo pacman -S xorg-xinit
```

配置

```
# 生成当前用户的xinitrc配置文件
cp /etc/X11/xinit/xinitrc ~/.xinitrc
# 编辑此文件做以下更改
sudo vim ~/.xinitrc
# 删除或注释以下五行
twm &
xclock -geometry 50x50-1+1 &
xterm -geometry 80x50+494+51 &
xterm -geometry 80x20+494-0 &
exec xterm -geometry 80x66+0+0 -name login
# 新增以下行
exec i3
```

启动i3

在tty界面输入`startx`就会启动i3wm

### 从登录管理器启动，这里使用sddm

安装sddm并设置开机启动

```
sudo pacman -S sddm
sudo systemctl enable sddm
```

重启之后会自动到登录管理器界面

## 配置i3

首次开机会进入i3引导模式，会让选择默认的mod键和config 的位置，默认即可！

### 安装需要的软件

```
sudo pacman -S rofi feh thunar xfce4-terminal xfce4-power-manager compton network-manager-applet
yay -S google-chrome        # 选择1
```

然后将本仓库i3目录下的文件拷贝进`~/.config/i3/`目录下即可。

### 壁纸配置

新建一个壁纸文件夹即可

```
mkdir -p ~/Pictures/DesktopBackground
```

然后将喜欢的图片放进新建的目录即可。可以联系可乐要一些4k的图片。

其他的请自己摸索吧！
