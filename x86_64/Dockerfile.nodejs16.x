FROM scratch

ADD 07b31686e40e69488bf3dfb150a1004c8a6c59fb41645305ddeb01ac079fe9b4.tar.xz /
ADD 0bd3d367f4b77f93e6e2ab7031645338ad3637e0041ce037bdd7ac7ce8d03157.tar.xz /
ADD 3488c53d3fc5ca18460823bd11d48739a0d1d4dab2f634f354ef3c3e10d72f33.tar.xz /
ADD 57d33ef7e2223320f771d3d3534938f05c997e6a6df7672bf3ea8b1730a57727.tar.xz /
ADD 88833469de5ae391cb17c50d8d1fa886accac36c4f57ed7f80af0aaca26aab9b.tar.xz /
ADD ac32d8a71c807c74be312477017c97b8b150e6116d0068e5f8b15a8838014216.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
