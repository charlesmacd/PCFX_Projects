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
  echo [2J%1 ��NECCD.SYS���t�H�gCD(��������)�Ή��h���C�o�ɃA�b�v�f�[�g���܂��B
  echo.
  echo.
  echo.
  echo.
  pause

  echo [2A[2M[1A
  echo [5m%1 ��NECCD.SYS���A�b�v�f�[�g���ł��B[m

  copy %1\NECCD.SYS %1\NECCD.OLD > NUL
  copy  NECCD.SYS %1 > NUL

  echo [2J
  echo �u�C���X�g�[�����I�����܂����B�v
  echo �u�V�X�e���̍ċN���������Ȃ��Ă��������B�v
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
  echo [2J%1 ��NECCD.SYS���t�H�gCD(��������)�Ή��h���C�o�ɃA�b�v�f�[�g���܂��B
  echo.
  echo.
  echo.
  echo.
  pause

  echo [2A[2M[1A
  echo [5m%1 ��NECCD.SYS���A�b�v�f�[�g���ł��B[m

  copy %1NECCD.SYS %1NECCD.OLD > NUL
  copy  NECCD.SYS %1NECCD.SYS > NUL
:
  echo [2J
  echo �u�C���X�g�[�����I�����܂����B�v
  echo �u�V�X�e���̍ċN���������Ȃ��Ă��������B�v
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:NOT_CURRENT
  echo 
  echo [2J
  echo �J�����g�h���C�u�ȊO����UPCDSYS�R�}���h���N�����܂����B
  echo �f�o�C�X�h���C�o�f�B�X�N�������Ă���h���C�u���J�����g�h���C�u��
  echo �ݒ肵����AUPCDSYS�R�}���h�����s���Ă��������B
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:MSG_PATH_X1
:NOT_PATH1
  echo 
  echo [2J
  echo �C���X�g�[�����s���h���C�u�E�f�B���N�g�����������w�肳��Ă��܂���B
  echo ���{��MS-DOS CD-ROM Extensions(Ver.2.2�ȏ�)���C���X�g�[�����Ă���
  echo �h���C�u�E�f�B���N�g���w�肵�Ă��������B
  echo.
  echo �g�p��: 
  echo    UPCDSYS A:\DOS
  echo    �@�@�܂���
  echo    UPCDSYS A:\
  echo.
  echo     ('A:\DOS' �A'A:\' �͓��{��MS-DOS CD-ROM Extensions���C���X�g�[������Ă���
  echo     �f�B���N�g���ł��B�܂��w��ɂ͐�΃p�X��p���Ă��������B'A:DOS' �̗l��
  echo     ���΃p�X�̎w��͂��Ȃ��ł��������B)
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:NOT_EXIST_NECCDSYS
  echo 
  echo [2J
  echo �w�肵���h���C�u�E�f�B���N�g���ɓ��{��MS-DOS CD-ROM Extensions���Z�b�g�A�b�v
  echo ����Ă��܂���B(NECCD.SYS��������܂���ł����B)
  echo.
  echo �������h���C�u�E�f�B���N�g�����w�肷�邩�A���{��MS-DOS CD-ROM Extensions��
  echo �C���X�g�[��������A�ēxUPCDSYS�R�}���h�����s���Ă��������B
  echo.
  echo.
  echo.
  echo.
  goto EXIT

:EXIT
