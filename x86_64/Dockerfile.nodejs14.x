FROM scratch

ADD 07b31686e40e69488bf3dfb150a1004c8a6c59fb41645305ddeb01ac079fe9b4.tar.xz /
ADD 460dbdd58ca50deb3cea2179358b36f329a13e9d59543246963ad5b7ef2459c4.tar.xz /
ADD 8538c91757dcc853858de0fb4920f7702d9712e42241e80797e90b311d944443.tar.xz /
ADD 9cc0c1eac634b85ca5383e479abf7497ac4f07f8b4f0d662f275396fd0226d25.tar.xz /
ADD aea469489241884ac9c88edf06d3ed597168b79692d7f87338e8aba11c1d5450.tar.xz /
ADD b0b620ea45315442924c51869ee0ccbad71408e88fa09f7db96a1bc4b8c82006.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
