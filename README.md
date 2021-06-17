# my-sqliteviz

[sqliteviz](https://github.com/lana-k/sqliteviz) をDocker containerにしたもの。  
テストデータは[この辺り](https://tm-webtools.com/Tools/TestData) で作ると良さそう。

# 使い方

```shell
$ git clone git@github.com:st1t/my-sqliteviz.git
$ cd my-sqliteviz/
$ docker build -t my-sqliteviz .
$ docker run --rm -it -p 8080:80 my-sqliteviz
$ open http://localhost:8080 
```
