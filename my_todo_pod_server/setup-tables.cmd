@echo off

@REM Start docker
echo Starting docker
docker-compose up --build --detach

:LOOP
netstat -o -n -a | >nul findstr "8090" && (
    echo Waiting for Postgres...
    timeout /t 2 /nobreak > NUL
    goto :PORT_FOUND
)
echo Waiting for Postgres...
goto :LOOP

:PORT_FOUND
echo Postgres is ready
type .\generated\tables-serverpod.pgsql | docker-compose run -T postgres env PGPASSWORD="Pl8cBYYbZWxljMiaROmu8yXgaSkb6jE_" psql -h postgres -U postgres -d my_todo_pod
echo Stopping docker
docker-compose stop

exit /b
