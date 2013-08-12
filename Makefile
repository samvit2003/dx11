CXX     = g++
#DEFINES = -DUNICODE
DEFINES= -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_SCL_SECURE_NO_WARNINGS -DTIXML_USE_STL -DWIN32 -D_LIB -DDEBUG -D_DEBUG
CFLAGS  = -m32 -g

DX_SDK_BASE= "C:/Program Files (x86)/Microsoft DirectX SDK (June 2010)"
IFLAGS=    \
	   -I $(DX_SDK_BASE)/Include

LFLAGS=  \
	 -L $(DX_SDK_BASE)/Lib/x86

LIBS=   \
	-ld3d11 \
	-ld3dx11 \
	-ld3dx10

main.exe : main.cpp
	$(CXX) $(CFLAGS) $(DEFINES) $(IFLAGS) $< -o $@ $(LFLAGS) $(LIBS)
