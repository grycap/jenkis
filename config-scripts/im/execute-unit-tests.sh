#!/bin/bash
WORKSPACE=$1

cd $WORKSPACE
nosetests-2.7 test/unit/connectors/*.py test/unit/*.py test/functional/*.py -v --stop --with-xunit --with-timer --timer-no-color --with-coverage --cover-erase --cover-xml --cover-package=IM,contextualization
