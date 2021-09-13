# This file is part of MXE. See LICENSE.md for licensing information.

PKG             		 := nyancoin
$(PKG)_WEBSITE  		 := https://github.com/Nyancoins/nyancoin-client
$(PKG)_DESCR    		 := NyanCoin wallet and dameon
$(PKG)_IGNORE   		 :=
$(PKG)_VERSION  		 := 105242d
$(PKG)_CHECKSUM 		 := 62e056d8a6fa2974f421003a380371eb06b44cc20e7c940469c3d550cd071845
$(PKG)_GH_CONF  		 := Nyancoins/nyancoin-client/branches/metrics
$(PKG)_DEPS			     := zlib openssl qt5 miniupnpc

define $(PKG)_BUILD
		cd '$(SOURCE_DIR)' && \
			$(TARGET)-qmake-qt5 && \
			$(MAKE) -f Makefile.Release -j '$(JOBS)' && \
			$(MAKE) -f Makefile.Release install
endef
