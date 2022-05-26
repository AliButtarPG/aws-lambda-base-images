FROM scratch

ADD 562d4dde1ad59951492e08861226e5d763fb3022c004b20df8db34e1c7b28c87.tar.xz /
ADD 95e1b030b419403248fe2553eb177508e57e6cab2602993d97277bc323f43d9f.tar.xz /
ADD adef7910f2faa6a6b3f3ad8867a2822d1f253083158f495197908a3f7d3dd592.tar.xz /
ADD b595a317765aad2d94ec89db8970c17847456d6054ce528273eb219b53b7dc7e.tar.xz /
ADD e5d5833543153836d1a291bc756b4063cf9d28442dea1aaf919e0d2a0d8eded2.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
