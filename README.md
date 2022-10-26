# qqmusik

This is about make modifications to the qqmusic app from Tencent ( https://y.qq.com/ )

The Makefile can unpack the apk, inject modifications and repack it as a new one.

You need to have qqmusic_2005000180.apk in the root folder as a starting point.

First step is "make decompile"; this prepares everything for making modifications.

The repo already includes modifications:
  - personalized logo
  - no ads on startup
  - everything you listen to gets saved to /storage/emulated/0/Download/qq

When everything is in place, type "make fromsource"

