# Directories
srcdir   = src
builddir = build

# Tools
CC       = gcc
MKDIR    = mkdir -p

# Interface
.PHONY: all init clean
.DEFAULT: all
all: init
init:
	@echo "  MKDIR $(builddir)"
	@$(MKDIR) $(builddir)
clean:
	@echo "  RM    $(builddir)"
	@$(RM) -r $(builddir)
