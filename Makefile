# Directories
srcdir   = src
builddir = build
VPATH    = $(srcdir) $(builddir)

# Files
sources  = ${wildcard $(srcdir)/*.c}
headers  = ${subst .c,.h,$(sources)}
programs = ${notdir ${subst .c,,$(sources)}}

# Tools
CC       = gcc
CFLAGS   = -g -I$(srcdir)
MKDIR    = mkdir -p

# Interface
.PHONY: all init clean
.DEFAULT: all
all: init programs
init: $(builddir)
	@echo "  MKDIR $(builddir)"
	@$(MKDIR) $(builddir)
clean:
	@echo "  RM    $(builddir)"
	@$(RM) -r $(builddir)

# Programs
.PHONY: programs
programs: $(programs)
%: %.c %.h
	@echo "  CC    $@"
	@$(CC) $(CFLAGS) $< -o $(builddir)/$@
