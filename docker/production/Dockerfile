FROM mcr.microsoft.com/dotnet/core/sdk:2.1 AS builder

WORKDIR /app
COPY . /app

WORKDIR /app/project
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/core/aspnet:2.1

ENV ASPNETCORE_ENVRONMENT Production

COPY --from=builder /app/project/out /app
WORKDIR /app

EXPOSE 80

ENTRYPOINT ["dotnet", "project.dll"]
