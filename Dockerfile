

# Etapa 1: build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copia o arquivo csproj e restaura dependências
COPY UserApi.csproj .
RUN dotnet restore UserApi.csproj

# Copia o restante do código e compila
COPY . .
RUN dotnet publish UserApi.csproj -c Release -o /app/publish

# Etapa 2: runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app
COPY --from=build /app/publish .

# Expõe a porta que o Render vai usar
EXPOSE 8080
ENV ASPNETCORE_URLS=http://+:8080

ENTRYPOINT ["dotnet", "UserApi.dll"]
