# repository_rules

In order to trigger the build, run
```
bazel build @hello//...
```

The file can be found under output_base
```
bazel info output_base
```

Please replace C:/users/songy/_bazel_songy/lrfyijtv by your own path
```
ls ls C:/users/songy/_bazel_songy/lrfyijtv/external/hello
```

You should be able to see:
```
BUILD.bazel  WORKSPACE  hello.txt
```


