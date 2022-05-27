FROM public.ecr.aws/lambda/python:3.7

# Copy function code
COPY app.py ${LAMBDA_TASK_ROOT}

# Install the function's dependencies using file requirements.txt
# from your project folder.

COPY requirements.txt  .
RUN  pip3 install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"
# RUN  yum -y update
# RUN  yum install libgomp
RUN  yum install -y libquadmath
# RUN yum load-transaction /tmp/yum_save_tx.2022-05-27.04-24.TyTGy7.yumtx

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "app.handler" ]