param(
  [Parameter(Mandatory = $true)]
  [string]$BucketName
)

$ErrorActionPreference = 'Stop'

Write-Host "===> Sincronizando aplicacion web con s3://$BucketName..." -ForegroundColor Cyan
aws s3 sync . "s3://$BucketName" `
  --exclude "*" `
  --include "index.html" `
  --include "css/*" `
  --include "js/*" `
  --include "assets/*" `
  --delete

Write-Host "`n===> Archivos en el bucket S3:" -ForegroundColor Green
aws s3 ls "s3://$BucketName" --recursive

Write-Host "`n[OK] Despliegue de aplicacion finalizado con exito." -ForegroundColor Green