FROM alpine:3.14 as base-alpine

RUN mkdir 'new-file'
WORKDIR /docker/app
ENV `ASPNETCORE_ENVIRONMENT_FIRST=TEST`
COPY './sonar-scanner-msbuild-5.3.2.38712-net5.0' ./sonar-folder
COPY './sonar-scanner-msbuild-5.3.2.38712-net5.0' ./sonar-folder1
COPY './sonar-scanner-msbuild-5.3.2.38712-net5.0' ./sonar-folder2
RUN echo "TEST Echo from docker image"

FROM base-alpine
ENV `ASPNETCORE_ENVIRONMENT_SECOND=TEST`

RUN echo "Test echo form other image"