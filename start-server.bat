@echo off
chcp 65001 >nul
title B2B销售协同工作台 本地运行环境
echo ===================================================
echo   正在启动 B2B销售协同工作台 本地Web服务...
echo ===================================================
echo.
echo 访问地址: http://localhost:8080
echo 提示: 请在浏览器中打开上方网址。按 Ctrl+C 可停止服务。
echo.

where python >nul 2>nul
if %errorlevel% equ 0 (
    python -m http.server 8080
    pause
    exit /b
)

where node >nul 2>nul
if %errorlevel% equ 0 (
    node -e "const http=require('http'),fs=require('fs'),path=require('path');http.createServer((req,res)=>{let f=req.url==='/'?'index.html':req.url.slice(1).split('?')[0];f=path.join('.',f);if(fs.existsSync(f)&&fs.statSync(f).isFile()){const ext=path.extname(f);const mime={'.html':'text/html','.js':'application/javascript','.css':'text/css','.json':'application/json','.png':'image/png','.jpg':'image/jpeg','.svg':'image/svg+xml'}[ext]||'application/octet-stream';res.writeHead(200,{'Content-Type':mime});fs.createReadStream(f).pipe(res);}else{res.writeHead(404);res.end('Not Found');}}).listen(8080,()=>console.log('Server running at http://localhost:8080/'));"
    pause
    exit /b
)

echo 未检测到 Python 或 Node.js，正在尝试直接用浏览器打开 index.html...
start "" "index.html"
pause
