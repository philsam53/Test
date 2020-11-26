FROM microsoft/dotnet-framework:4.7
ADD /src /app
WORKDIR /app
RUN ["dnu", "restore"]
EXPOSE 5004
ENTRYPOINT sleep 10000000 | dnx . kestrel