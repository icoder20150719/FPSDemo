# FPSDemo
一个检测app的内存、cpu占用、帧率的iOS工具，使用oc


## 一、效果
<p align="center" >
<img src="Video/1529650813572968.gif" alt="FPSDemo" title="FPSDemo">
</p>

## 二、使用方法
```
 pod "ICFPS"
 
 ```
```
- (void)applicationDidBecomeActive:(UIApplication *)application {
#ifdef DEBUG
[ICMemoryWave show];
#endif
}
```
## 三、感谢
 获取内存使用情况和获取cpu使用情况代码来自网络；
