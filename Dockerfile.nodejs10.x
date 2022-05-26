FROM scratch

ADD 07b31686e40e69488bf3dfb150a1004c8a6c59fb41645305ddeb01ac079fe9b4.tar.xz /
ADD 530ce9ed25cbefee32136e5aa4f1ce8296c488fdaedd9d4b61c156d96cdb2383.tar.xz /
ADD 6a19b106adfce84d82839e0a9cccde552adbaf94b2ea4ecdce8f8e6b8a49b53e.tar.xz /
ADD a96f67dd4bb2a2befd271b8c27e8b04c9a2b1d56a411cb37fb57fa1d518ccbdc.tar.xz /
ADD cc80ba1ade4d5f7af4ba363a1a0bf7cf6505325df85fea51ff216fa53b2082f4.tar.xz /
ADD e975ffb62a701fd0195bf5df24073396868e9d1ec9f9f79bb62010e0c22567dd.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
