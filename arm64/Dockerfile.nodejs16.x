FROM scratch

ADD 0e3821da1d19cb30dbfacac5bf82742d91315647b9dcfd11b55cf0b621d8fa1d.tar.xz /
ADD 36d08b435e2ef64b0f6142032f7880b79ec1b3afecd78c0924e8b8cd42e0a998.tar.xz /
ADD 3e7665f24618b2c8f94b4b9dd7056adc60d48eca296dcfd2d1cd793226ab4148.tar.xz /
ADD 5d09b05b9c2f55f2489863136d681f5eade05ba2e6dd22a93da65296ffee39c3.tar.xz /
ADD 86b3c5628c702fa521214bdcca7809bcc7c419ce604c546ad1de114cd289f2dc.tar.xz /
ADD 8d83955ba3c3f9db0f64cd0ae0fdbe686697ce3c5a601b51a8f197c04d15cdde.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
