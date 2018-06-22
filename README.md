# FPSDemo
一个检测app的内存、cpu占用、帧率的iOS工具，使用oc


###一、效果

![Image text](Video/1529650813572968.mp4)

###二、使用方法

```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

#ifdef DEBUG
    [ICMemoryWave show];
#endif

return YES;
}
```
