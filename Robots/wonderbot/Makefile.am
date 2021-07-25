if NO_GRAPHICS
else
robotexecdir = $(RTB_DIR)/Robots
INCLUDES = \
	$(GTK_CFLAGS)\
	-I$(top_srcdir)/include
wonderbot_robot_LDADD =  \
	$(GTK_LIBS)
robotexec_PROGRAMS = wonderbot.robot
wonderbot_robot_SOURCES = wonderbot.cc
endif
wonderbotdir = $(RTB_DIR)/Robots/wonderbot
wonderbot_DATA = wonderbot.cc Makefile.am 

