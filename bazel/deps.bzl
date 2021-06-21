def _hello_repo_impl(repository_ctx):
    print(repository_ctx.attr.message)
    env = repository_ctx.os.environ
    print(dir(env))
    repository_ctx.file("hello.txt", repository_ctx.attr.message)
    repository_ctx.file("BUILD.bazel", 'exports_files(["hello.txt"])')

hello_repo = repository_rule(
    implementation = _hello_repo_impl,
    local = True,
    attrs = {
        "message": attr.string(
            mandatory = True,
        ),
    },
)
