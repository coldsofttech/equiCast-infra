@echo off
setlocal

cd equiCast

echo ===========================================================
echo Running Terraform Formatting...
echo ===========================================================

terraform fmt -recursive
if %errorlevel% neq 0 (
    echo "Terraform fmt failed. Please fix the formatting issues."
    exit /b %errorlevel%
)

terraform fmt -check
if %errorlevel% neq 0 (
    echo "Terraform fmt check failed. Please fix the formatting issues."
    exit /b %errorlevel%
)

echo ===========================================================
echo Initialising Terraform (backend disabled)...
echo ===========================================================

terraform init -backend=false -input=false
if %errorlevel% neq 0 (
    echo "Terraform init failed."
    exit /b %errorlevel%
)

echo ===========================================================
echo Validating Terraform...
echo ===========================================================

terraform validate -json
if %errorlevel% neq 0 (
    echo "Terraform validate failed."
    exit /b %errorlevel%
)

echo ===========================================================
echo Running Infracost Breakdown...
echo ===========================================================

infracost breakdown --path . --format table --project-name "equiCast"
if %errorlevel% neq 0 (
    echo "Infracost breakdown failed."
    exit /b %errorlevel%
)

echo ===========================================================
echo ✅ All checks completed successfully
echo ===========================================================

endlocal