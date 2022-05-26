FROM scratch

ADD 0e3821da1d19cb30dbfacac5bf82742d91315647b9dcfd11b55cf0b621d8fa1d.tar.xz /
ADD 436bcc24805b87999fb4c44a7ac6d4465b5c24b23c63e81f2a2ce9bf13527ce0.tar.xz /
ADD 8d994540d3ed8856c0c758fa2fc0c0ceca893b30861ddc90224776bb09ed4a5a.tar.xz /
ADD b67e3ab3936417b4cfad8bd27f9cc01c4156f9b19f8cd4018d5e1a35be019817.tar.xz /
ADD b9719ecd968e705fcfec552409c707b6da6b4a9f59303397cf1125bd4e787897.tar.xz /
ADD de5a9a72b8255974add65e9e28bb76d1ede00986cb81203cba30df612e360f7f.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
