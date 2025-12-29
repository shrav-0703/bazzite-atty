#!/usr/bin/env -S bash -euo pipefail

dnf install -y git rpmdevtools python3-wheel python3-cython
rpmdev-setuptree

git clone https://github.com/RonnyPfannschmidt/copr-specs-howdy.git /tmp/copr-specs-howdy
cd /tmp/copr-specs-howdy
git switch --detach d9ab260d01b2078391cd6b23d99d860a3cbe7fd1

cd howdy-beta

dnf builddep -y howdy.spec

spectool -g -R howdy.spec
install -Dm0644 ./howdy_profile.sh        /root/rpmbuild/SOURCES/howdy_profile.sh
install -Dm0644 ./howdy_profile.csh       /root/rpmbuild/SOURCES/howdy_profile.csh
install -Dm0644 ./howdy.te                /root/rpmbuild/SOURCES/howdy.te
install -Dm0644 ./99-howdy-video.rules    /root/rpmbuild/SOURCES/99-howdy-video.rules
install -Dm0644 ./0001-remove-exists-check.patch /root/rpmbuild/SOURCES/0001-remove-exists-check.patch

rpmbuild -ba howdy.spec

pushd deps/python-dlib
dnf builddep -y python-dlib.spec
spectool -g -R python-dlib.spec
rpmbuild -ba python-dlib.spec
popd

pushd deps/python-elevate
dnf builddep -y python-elevate.spec
spectool -g -R python-elevate.spec
rpmbuild -ba python-elevate.spec
popd

pushd deps/python-keyboard
dnf builddep -y python-keyboard.spec
spectool -g -R python-keyboard.spec
rpmbuild -ba python-keyboard.spec
popd

pushd deps/python-pyv4l2
dnf builddep -y python-pyv4l2.spec
spectool -g -R python-pyv4l2.spec
rpmbuild -ba python-pyv4l2.spec
popd

