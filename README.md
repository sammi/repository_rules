# repository_rules

In order to trigger the build, run
```
bazel build @hello//...
```

Get the output_base path
```
bazel info output_base
```

Then check the file being generated by the repository_rule(Please replace C:/users/songy/_bazel_songy/lrfyijtv by your own path)
```
dir C:/users/songy/_bazel_songy/lrfyijtv/external/hello
```

You should be able to see:
```
BUILD.bazel  WORKSPACE  hello.txt
```


