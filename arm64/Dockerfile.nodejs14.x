FROM scratch

ADD 07ae4459f1cc20da430d99971c2fa521e507f79f82c2ab3f6f54e1958f4ecf75.tar.xz /
ADD 0e3821da1d19cb30dbfacac5bf82742d91315647b9dcfd11b55cf0b621d8fa1d.tar.xz /
ADD 3a1759ab19163d30a43d3d0dc6a69161b3b7dcfc33a82136bc7c62e89e27ad34.tar.xz /
ADD 481dd981a59f509b49e4e49ad417e2ede456113aebd481a49fee6e0b4dcb74d2.tar.xz /
ADD aaf7dbbfe8f8847fc0becddaedfdc9bff6a299606fa4b6bae31553f4e2eacc2a.tar.xz /
ADD d5153c91374a9a316570b2a239765555da3defddcf10944a4c17c6a5e1d281c2.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
