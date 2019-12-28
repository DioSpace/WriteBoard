# WriteBoard
把这个库放到cocoapods上去

1.在github创建仓库

2.创建Pod账号
通过终端指令来操作: pod trunk register xxx@live.cn  'username'  -verbose
可以使用 pod trunk me 来查看自己的账号信息，如果没有账号的话需要先注册一下

3.创建podspec文件
使用终端进入到工程文件的目录中，在README.md文件所在的位置创建一个podspec 文件，使用pod spec create repositoryDemo

4.编辑podspec文件
spec.name         = "WriteBoard"    #存储库名称
spec.version      = "0.0.1"      #版本号，与tag值一致
spec.summary      = "a repository demo"  #简介
spec.description  = "a repository demo"  #描述
spec.homepage     = "https://github.com/DioSpace/WriteBoard"      #项目主页，不是git地址
spec.license      = { :type => "MIT", :file => "LICENSE" }   #开源协议
spec.author             = { "Dio" => "zhendong2011@live.cn" }  #作者
spec.platform     = :ios, "11.0"                  #支持的平台和版本号
spec.source       = { :git => "https://github.com/DioSpace/WriteBoard.git", :tag => "#{spec.version}" }         #存储库的git地址，以及tag值
spec.source_files  =  "WriteBoard/writeboard/*.{swift,h,m}" #需要托管的源代码路径
spec.requires_arc = true #是否支持ARC
spec.dependency "Masonry", "~> 1.0.0"    #所依赖的第三方库，没有就不用写
注意：
spec.source_files中描述的为相对路径，但在pod lib lint 与 pod spec lint 时，所用的参照不一样。pod lib lint 时，以podspec文件所在位置为参照；pod spec lint 时，以Git仓库的根目录为参照。
不同的验证方案，使用不同的s.source_files 描述。
pod lib lint 时：
spec.source_files  = "WriteBoard/writeboard/*.{swift,h,m}"
pod spec lint 时：
spec.source_files  = "WriteBoard/writeboard/*.{swift,h,m}"


5.设置tag的值，并上传到GitHub上
(1) git add * (将代码添加到暂存区)
(2) git commit -m '提交内容' (将代码提交到本地库，并写上简述)
(3) git tag 'xxx'（设置本地分支的版本,xxx必须是你在 .podspec 文件中的 version(版本号)）
(4) git tag (使用此命令查看tag的值是否设置成功)
(5) git push origin master (将本地主干提交到远程服务端)
(6) git push origin xxx（将本地XXX版本上传到GitHub服务器上并设置origin为XXX）

6.发布到cocoapods 上进行托管
(1) 使用 pod spec lint 或 pod lib lint  验证podspec 文件
如果出现warn获告,则在命令行后加--allow-warnings来忽略所有警告即可, 如: pod spec lint --allow-warnings
(2) 发布
输入 pod trunk push --allow-warnings命令来发布到cocoapods上
(3) 使用pod search 搜索自己的库
直接在终端输入 pod search WriteBoard 
如果搜不到可能是发布到pod远程库成功了，但是本地库没更新导致的，所以用了pod repo update 更新本地库
然后用 pod search WriteBoard --simple 再次搜索 (注:--simple是只搜索库名字)
