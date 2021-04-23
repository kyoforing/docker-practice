# Build Stage
FROM mcr.microsoft.com/dotnet/sdk:5.0.103 AS build-env
WORKDIR /App

# Publish the web application
COPY HelloWorldDocker/ App/
RUN dotnet publish -o out App/HelloWorldDocker.csproj

# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /App
COPY --from=build-env /App/out .
ENTRYPOINT dotnet HelloWorldDocker.dll