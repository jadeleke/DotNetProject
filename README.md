# DotNetProject

## Overview
DotNetProject is a .NET 8.0 web application designed to demonstrate modern web development practices using ASP.NET Core. The project includes features such as Swagger integration for API documentation and a simple weather forecast API.

## Features
- **Weather Forecast API**: Provides a sample endpoint to fetch weather forecasts.
- **Swagger/OpenAPI Integration**: Automatically generates API documentation and a user-friendly interface for testing endpoints.
- **Docker Support**: Includes a Dockerfile for containerizing the application.

## Prerequisites
- [.NET 8.0 SDK](https://dotnet.microsoft.com/download/dotnet/8.0)
- [Docker](https://www.docker.com/) (optional, for containerization)

## Getting Started

### Running Locally
1. Clone the repository:
   ```bash
   git clone https://github.com/jadeleke/DotNetProject.git
   cd DotNetProject
   ```
2. Build and run the application:
   ```bash
   dotnet build
   dotnet run
   ```
3. Open your browser and navigate to:
   - **Swagger UI**: `http://localhost:5289/swagger`
   - **Weather Forecast API**: `http://localhost:5289/weatherforecast`

### Running with Docker
1. Build the Docker image:
   ```bash
   docker build -t dotnetproject .
   ```
2. Run the Docker container:
   ```bash
   docker run -d -p 5289:5289 --name dotnetproject dotnetproject
   ```
3. Access the application:
   - **Swagger UI**: `http://localhost:5289/swagger`
   - **Weather Forecast API**: `http://localhost:5289/weatherforecast`

## Project Structure
- **Program.cs**: Entry point of the application.
- **appsettings.json**: Configuration file for the application.
- **Dockerfile**: Defines the steps to containerize the application.
- **launchSettings.json**: Contains settings for running the application locally.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests.
