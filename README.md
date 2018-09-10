# rostacle

## Usage
roswell + portacle(portableなroswell環境 on windows).

#### 1, 適当な場所に置く。
#### 2, `ros-build.bat`をクリック。
#### 3, `ros-install.bat xxx`で使いたいライブラリをインストールもしくは、roswell/.roswell/lisp/quicklisp/local-projects以下に配置。
#### 4, rosファイルを作成。
#### 5, rosファイルを起動させるbatを作成。

rosファイル名がfoo.rosだった場合のbatファイルの中身
```
@echo off
 
if not "%~0"=="%~dp0.\%~nx0" (
     start /min cmd /c,"%~dp0.\%~nx0" %*
     exit
)


cd %~dp0
set ROSWELL_HOME=%~dp0\roswell\.roswell
%~dp0\roswell\ros.exe foo.ros
```

#### 6, 作成したbatファイルを起動し、必要なライブラリをダウンロードさせる。
#### 7, 必要に応じてコマンドプロンプト(DOS窓)を起動時に表示させない様なvbスクリプトを作成。

batファイルの名前がbar.batだった場合のvbsファイルの中身
```
Option Explicit
 
Const vbHide = 0             'ウィンドウを非表示
Const vbNormalFocus = 1      '通常のウィンドウ、かつ最前面のウィンドウ
Const vbMinimizedFocus = 2   '最小化、かつ最前面のウィンドウ
Const vbMaximizedFocus = 3   '最大化、かつ最前面のウィンドウ
Const vbNormalNoFocus = 4    '通常のウィンドウ、ただし、最前面にはならない
Const vbMinimizedNoFocus = 6 '最小化、ただし、最前面にはならない
 
Dim objWShell
Set objWShell = CreateObject("WScript.Shell")
objWShell.Run "cmd /c bar.bat", vbMinimizedNoFocus, False
 
Set objWShell = Nothing
```

#### 8, 完成！起動はvbsファイルもしくはbatファイルをクリック。
#### これでrostacleフォルダごと環境を持ち運べる。

#### 以上
