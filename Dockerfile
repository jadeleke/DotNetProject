# Use the official .NET image as a base image
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 5289
EXPOSE 7021

# Use the .NET SDK image for building the application
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /DotNetProject
COPY ["DotNetProject.csproj", "."]
RUN dotnet restore "DotNetProject.csproj"
COPY . .
WORKDIR "/DotNetProject"
RUN dotnet build "DotNetProject.csproj" -c Release -o /app/build

# Publish the application
FROM build AS publish
RUN dotnet publish "DotNetProject.csproj" -c Release -o /app/publish

# Use the base image to run the application
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .

EXPOSE 5289

ENTRYPOINT ["dotnet", "DotNetProject.dll"]