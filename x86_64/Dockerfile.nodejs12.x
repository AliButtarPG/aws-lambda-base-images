FROM scratch

ADD 057d8b8c0e15835d5f45d47fcada5a4988b07adc2bdf7e676a31d6a98700ff66.tar.xz /
ADD 07b31686e40e69488bf3dfb150a1004c8a6c59fb41645305ddeb01ac079fe9b4.tar.xz /
ADD 606806a0784a05f06dae1631951977b2af95edd7f174fb71a6e4c5de8977d7a2.tar.xz /
ADD 6c38eed2d2b6274c930a7bf92415fb16011daf1524eaa0c82a48816788db0852.tar.xz /
ADD a4161d230941efb11379c4b64a49f6c159dce55d85c2e816db7262461531c392.tar.xz /
ADD d62ffaac375113eb82f322af08c6d72d4f833b98c23fa649c320cb9569a8adfe.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
