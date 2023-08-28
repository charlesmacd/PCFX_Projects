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
  echo [2J%1 ‚ÌNECCD.SYS‚ðƒtƒHƒgCD(ÏÙÁ¾¯¼®Ý)‘Î‰žƒhƒ‰ƒCƒo‚ÉƒAƒbƒvƒf[ƒg‚µ‚Ü‚·B
  echo.
  echo.
  echo.
  echo.
  pause

  echo [2A[2M[1A
  echo [5m%1 ‚ÌNECCD.SYS‚ðƒAƒbƒvƒf[ƒg’†‚Å‚·B[m

  copy %1\NECCD.SYS %1\NECCD.OLD > NUL
  copy  NECCD.SYS %1 > NUL

  echo [2J
  echo uƒCƒ“ƒXƒg[ƒ‹‚ªI—¹‚µ‚Ü‚µ‚½Bv
  echo uƒVƒXƒeƒ€‚ÌÄ‹N“®‚ð‚¨‚±‚È‚Á‚Ä‚­‚¾‚³‚¢Bv
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
  echo [2J%1 ‚ÌNECCD.SYS‚ðƒtƒHƒgCD(ÏÙÁ¾¯¼®Ý)‘Î‰žƒhƒ‰ƒCƒo‚ÉƒAƒbƒvƒf[ƒg‚µ‚Ü‚·B
  echo.
  echo.
  echo.
  echo.
  pause

  echo [2A[2M[1A
  echo [5m%1 ‚ÌNECCD.SYS‚ðƒAƒbƒvƒf[ƒg’†‚Å‚·B[m

  copy %1NECCD.SYS %1NECCD.OLD > NUL
  copy  NECCD.SYS %1NECCD.SYS > NUL
:
  echo [2J
  echo uƒCƒ“ƒXƒg[ƒ‹‚ªI—¹‚µ‚Ü‚µ‚½Bv
  echo uƒVƒXƒeƒ€‚ÌÄ‹N“®‚ð‚¨‚±‚È‚Á‚Ä‚­‚¾‚³‚¢Bv
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:NOT_CURRENT
  echo 
  echo [2J
  echo ƒJƒŒƒ“ƒgƒhƒ‰ƒCƒuˆÈŠO‚©‚çUPCDSYSƒRƒ}ƒ“ƒh‚ð‹N“®‚µ‚Ü‚µ‚½B
  echo ƒfƒoƒCƒXƒhƒ‰ƒCƒoƒfƒBƒXƒN‚ª“ü‚Á‚Ä‚¢‚éƒhƒ‰ƒCƒu‚ðƒJƒŒƒ“ƒgƒhƒ‰ƒCƒu‚É
  echo Ý’è‚µ‚½ŒãAUPCDSYSƒRƒ}ƒ“ƒh‚ðŽÀs‚µ‚Ä‚­‚¾‚³‚¢B
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:MSG_PATH_X1
:NOT_PATH1
  echo 
  echo [2J
  echo ƒCƒ“ƒXƒg[ƒ‹‚ðs‚¤ƒhƒ‰ƒCƒuEƒfƒBƒŒƒNƒgƒŠ‚ª³‚µ‚­Žw’è‚³‚ê‚Ä‚¢‚Ü‚¹‚ñB
  echo “ú–{ŒêMS-DOS CD-ROM Extensions(Ver.2.2ˆÈã)‚ªƒCƒ“ƒXƒg[ƒ‹‚µ‚Ä‚ ‚é
  echo ƒhƒ‰ƒCƒuEƒfƒBƒŒƒNƒgƒŠŽw’è‚µ‚Ä‚­‚¾‚³‚¢B
  echo.
  echo Žg—p—á: 
  echo    UPCDSYS A:\DOS
  echo    @@‚Ü‚½‚Í
  echo    UPCDSYS A:\
  echo.
  echo     ('A:\DOS' A'A:\' ‚Í“ú–{ŒêMS-DOS CD-ROM Extensions‚ªƒCƒ“ƒXƒg[ƒ‹‚³‚ê‚Ä‚ ‚é
  echo     ƒfƒBƒŒƒNƒgƒŠ‚Å‚·B‚Ü‚½Žw’è‚É‚Íâ‘ÎƒpƒX‚ð—p‚¢‚Ä‚­‚¾‚³‚¢B'A:DOS' ‚Ì—l‚É
  echo     ‘Š‘ÎƒpƒX‚ÌŽw’è‚Í‚µ‚È‚¢‚Å‚­‚¾‚³‚¢B)
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:NOT_EXIST_NECCDSYS
  echo 
  echo [2J
  echo Žw’è‚µ‚½ƒhƒ‰ƒCƒuEƒfƒBƒŒƒNƒgƒŠ‚É“ú–{ŒêMS-DOS CD-ROM Extensions‚ªƒZƒbƒgƒAƒbƒv
  echo ‚³‚ê‚Ä‚¢‚Ü‚¹‚ñB(NECCD.SYS‚ªŒ©‚Â‚©‚è‚Ü‚¹‚ñ‚Å‚µ‚½B)
  echo.
  echo ³‚µ‚¢ƒhƒ‰ƒCƒuEƒfƒBƒŒƒNƒgƒŠ‚ðŽw’è‚·‚é‚©A“ú–{ŒêMS-DOS CD-ROM Extensions‚ð
  echo ƒCƒ“ƒXƒg[ƒ‹‚µ‚½ŒãAÄ“xUPCDSYSƒRƒ}ƒ“ƒh‚ðŽÀs‚µ‚Ä‚­‚¾‚³‚¢B
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:EXIT
