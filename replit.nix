{ pkgs }: {
    deps = [
        pkgs.zip
        pkgs.sqlite.bin
        pkgs.busybox
        pkgs.bashInteractive
    ];
}