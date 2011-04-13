AC_PREREQ([2.67])
AC_INIT([glib-examples], [0.1], [adb1413@rit.edu])
AC_CONFIG_SRCDIR([src/hello-world.h])

# Checks for programs
AC_PROG_CC
AC_PROG_INSTALL

# Checks for headers
AC_CHECK_HEADERS([stdlib.h])

# Checks for libraries
error_no_glib() {
    echo "----------------------------------------"
    echo " No glib-2.0!"
    echo "----------------------------------------"
    (exit 1); exit 1
}
PKG_CHECK_EXISTS([glib-2.0], , [error_no_glib])

# Finish
PKG_CHECK_MODULES([DEPS], [glib-2.0])
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
