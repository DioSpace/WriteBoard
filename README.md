# WriteBoard
把这个库放到cocoapods上去

1.在github创建仓库

2.创建Pod账号
通过终端指令来操作: pod trunk register xxx@live.cn  'username'  -verbose
可以使用 pod trunk me 来查看自己的账号信息，如果没有账号的话需要先注册一下

3.创建podspec文件
使用终端进入到工程文件的目录中，在README.md文件所在的位置创建一个podspec 文件，使用pod spec create repositoryDemo

4.编辑podspec文件
s.name         = "WriteBoard"    #存储库名称
s.version      = "0.0.1"      #版本号，与tag值一致
s.summary      = "a repository demo"  #简介
s.description  = "a repository demo"  #描述
s.homepage     = "https://github.com/DioSpace/WriteBoard"      #项目主页，不是git地址
s.license      = { :type => "MIT", :file => "LICENSE" }   #开源协议
s.author             = { "Dio" => "zhendong2011@live.cn" }  #作者
s.platform     = :ios, "11.0"                  #支持的平台和版本号
s.source       = { :git => "https://github.com/DioSpace/WriteBoard.git", :tag => "#{spec.version}" }         #存储库的git地址，以及tag值
s.source_files  =  "RepositoryDemonstration/Other/**/*.{h,m}" #需要托管的源代码路径
s.requires_arc = true #是否支持ARC
s.dependency "Masonry", "~> 1.0.0"    #所依赖的第三方库，没有就不用写
注意：
s.source_files中描述的为相对路径，但在pod lib lint 与 pod spec lint 时，所用的参照不一样。pod lib lint 时，以podspec文件所在位置为参照；pod spec lint 时，以Git仓库的根目录为参照。
1、不同的验证方案，使用不同的s.source_files 描述。
pod lib lint 时：
s.source_files  = "MWBase/BaseModule/**/*.{h,m}"
pod spec lint 时：
s.source_files  = "WriteBoard/writeboard/*.{swift,h,m}"


所以，在pod lib lint 时，该s.source_files的描述为源码相对于podspec文件的相对路径，该描述正确；在pod spec lint 时，该s.source_files的描述应为源码相对于Git根目录的相对路径，该描述错误，所以报错。
————————————————
版权声明：本文为CSDN博主「overstep1024」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/overstep1024/article/details/84543770

5.设置tag的值，并上传到GitHub上
(1) git add * (将代码添加到暂存区)
(2) git commit -m '提交内容' (将代码提交到本地库，并写上简述)
(3) git tag 'xxx'（设置本地分支的版本,xxx必须是你在 .podspec 文件中的 version(版本号)）
(4) git tag (使用此命令查看tag的值是否设置成功)
(5) git push origin master (将本地主干提交到远程服务端)
(6) git push origin xxx（将本地XXX版本上传到GitHub服务器上并设置origin为XXX）

