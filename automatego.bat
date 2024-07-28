@echo off
REM CreateGoProj.bat

REM Get the project name from the first argument
SET ProjectName=%1

REM Check if the project name is provided
IF "%ProjectName%"=="" (
    echo Usage: automatego ^<project_name^>
    exit /b 1
)

REM Create the project directory
mkdir "%ProjectName%"
cd "%ProjectName%"

REM Initialize a Go module
go mod init "%ProjectName%"

REM Create directory structure
mkdir controllers database dto interfaces models repositories routes services test

REM Create a main.go file with initial content
echo package main > main.go
echo. >> main.go
echo import^( >> main.go
echo     "fmt" >> main.go
echo ^) >> main.go
echo. >> main.go
echo func main^(^){ >> main.go
echo     fmt.Println^("Hello from automatego"^) >> main.go
echo ^} >> main.go

REM Create a docker-compose.yml file with initial content
echo services: > docker-compose.yml
echo   dev-db: >> docker-compose.yml
echo     image: mysql:latest >> docker-compose.yml
echo     environment: >> docker-compose.yml
echo       MYSQL_DATABASE: ^${DB_NAME^} >> docker-compose.yml
echo       MYSQL_USER: ^${DB_USER^} >> docker-compose.yml
echo       MYSQL_PASSWORD: ^${DB_PASSWORD^} >> docker-compose.yml
echo       MYSQL_ROOT_PASSWORD: ^${DB_ROOT_PASSWORD^} >> docker-compose.yml
echo     ports: >> docker-compose.yml
echo       - '3308:3306' >> docker-compose.yml
echo     expose: >> docker-compose.yml
echo       - '3306' >> docker-compose.yml
echo     volumes: >> docker-compose.yml
echo       - my-db:/var/lib/mysql >> docker-compose.yml
echo volumes: >> docker-compose.yml
echo   my-db: >> docker-compose.yml

REM Create a .gitignore file
echo # Arquivos gerados > .gitignore
echo bin/ >> .gitignore
echo *.out >> .gitignore
echo # Dependências do Go >> .gitignore
echo vendor/ >> .gitignore
echo # Arquivos de cache >> .gitignore
echo *.log >> .gitignore
echo *.tmp >> .gitignore
echo .vscode/ >> .gitignore
echo # Variaveis de ambiente >> .gitignore
echo .env >> .gitignore

REM Create a .env file with environment variables
echo DB_USER=user > .env
echo DB_PASSWORD=password >> .env
echo DB_HOST=127.0.0.1 >> .env
echo DB_PORT=3308 >> .env
echo DB_NAME=name >> .env
echo DB_CHARSET=utf8mb4 >> .env
echo DB_PARSE_TIME=True >> .env
echo DB_LOC=Local >> .env

echo Project %ProjectName% created successfully!
