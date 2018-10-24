#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/hanbin/ros_ws/src/learning_ros_external_pkgs_kinetic/baxter_examples"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/hanbin/ros_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/hanbin/ros_ws/install/lib/python2.7/dist-packages:/home/hanbin/ros_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/hanbin/ros_ws/build" \
    "/usr/bin/python" \
    "/home/hanbin/ros_ws/src/learning_ros_external_pkgs_kinetic/baxter_examples/setup.py" \
    build --build-base "/home/hanbin/ros_ws/build/learning_ros_external_pkgs_kinetic/baxter_examples" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/hanbin/ros_ws/install" --install-scripts="/home/hanbin/ros_ws/install/bin"
