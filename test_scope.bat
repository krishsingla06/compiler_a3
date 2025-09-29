@echo off

echo Building parser...
make clean && make

if %errorlevel% neq 0 (
    echo Build failed!
    exit /b 1
)

echo.
echo Testing scope management...
echo =========================================

for %%f in (test_cases\scope_test*.c) do (
    echo.
    echo Running test: %%f
    echo ----------------------------
    parser.exe "%%f"
    echo.
)