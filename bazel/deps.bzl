def _hello_repo_impl(repository_ctx):
    environ = repository_ctx.os.environ
    print(environ.get("Stable_Platform"))
    repository_ctx.file("hello.txt", repository_ctx.attr.message)
    repository_ctx.file("BUILD.bazel", 'exports_files(["hello.txt"])')

hello_repo = repository_rule(
    implementation = _hello_repo_impl,
    environ = ["Stable_Platform"],
    local = True,
    attrs = {
        "message": attr.string(
            mandatory = True,
        ),
    },
)
