FROM python:3.7-alpine3.13

RUN apk --no-cache add git
RUN apk add gcc linux-headers musl-dev libffi-dev
WORKDIR /src/
RUN pip install git+https://github.com/jamieRowen/grumpy
ENTRYPOINT [ "grumpy" ]
CMD [ "about", "everything"]