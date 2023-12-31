ECHO OFF
  echo [2A[2M[1A
  if not exist upcdsys.bat goto NOT_CURRENT
  if "%1"=="" goto NOT_PATH1
  if not "%2"=="" goto NOT_PATH1

  chkpath %1
  if errorlevel 2 goto PATH_IS_ROOT
  if errorlevel 1 goto MSG_PATH_X1

  if not exist %1\NECCD.SYS goto NOT_EXIST_NECCDSYS

  echo.
  echo [2J%1 のNECCD.SYSをフォトCD(ﾏﾙﾁｾｯｼｮﾝ)対応ドライバにアップデートします。
  echo.
  echo.
  echo.
  echo.
  pause

  echo [2A[2M[1A
  echo [5m%1 のNECCD.SYSをアップデート中です。[m

  copy %1\NECCD.SYS %1\NECCD.OLD > NUL
  copy  NECCD.SYS %1 > NUL

  echo [2J
  echo 「インストールが終了しました。」
  echo 「システムの再起動をおこなってください。」
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:PATH_IS_ROOT
:UPDATE2
  if not exist %1NECCD.SYS goto NOT_EXIST_NECCDSYS

:UPDATE
  echo.
  echo [2J%1 のNECCD.SYSをフォトCD(ﾏﾙﾁｾｯｼｮﾝ)対応ドライバにアップデートします。
  echo.
  echo.
  echo.
  echo.
  pause

  echo [2A[2M[1A
  echo [5m%1 のNECCD.SYSをアップデート中です。[m

  copy %1NECCD.SYS %1NECCD.OLD > NUL
  copy  NECCD.SYS %1NECCD.SYS > NUL
:
  echo [2J
  echo 「インストールが終了しました。」
  echo 「システムの再起動をおこなってください。」
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:NOT_CURRENT
  echo 
  echo [2J
  echo カレントドライブ以外からUPCDSYSコマンドを起動しました。
  echo デバイスドライバディスクが入っているドライブをカレントドライブに
  echo 設定した後、UPCDSYSコマンドを実行してください。
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:MSG_PATH_X1
:NOT_PATH1
  echo 
  echo [2J
  echo インストールを行うドライブ・ディレクトリが正しく指定されていません。
  echo 日本語MS-DOS CD-ROM Extensions(Ver.2.2以上)がインストールしてある
  echo ドライブ・ディレクトリ指定してください。
  echo.
  echo 使用例: 
  echo    UPCDSYS A:\DOS
  echo    　　または
  echo    UPCDSYS A:\
  echo.
  echo     ('A:\DOS' 、'A:\' は日本語MS-DOS CD-ROM Extensionsがインストールされてある
  echo     ディレクトリです。また指定には絶対パスを用いてください。'A:DOS' の様に
  echo     相対パスの指定はしないでください。)
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:NOT_EXIST_NECCDSYS
  echo 
  echo [2J
  echo 指定したドライブ・ディレクトリに日本語MS-DOS CD-ROM Extensionsがセットアップ
  echo されていません。(NECCD.SYSが見つかりませんでした。)
  echo.
  echo 正しいドライブ・ディレクトリを指定するか、日本語MS-DOS CD-ROM Extensionsを
  echo インストールした後、再度UPCDSYSコマンドを実行してください。
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:EXIT
