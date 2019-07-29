#! /bin/bash -e
if [[ $# -lt 1 ]] || [[ "$1" == "-"* ]]; then

    if [ -n "${JENKINS_ENV_HOST_IP}" ]; then
        export JENKINS_IP_FOR_SLAVES="${JENKINS_ENV_HOST_IP}"
        unset JENKINS_ENV_HOST_IP
    elif [ -n "${JENKINS_ENV_HOST_IP_CMD}" ]; then
        export JENKINS_IP_FOR_SLAVES="$(eval ${JENKINS_ENV_HOST_IP_CMD})" || true
        unset JENKINS_ENV_HOST_IP_CMD
    fi
    echo "JENKINS_IP_FOR_SLAVES = ${JENKINS_IP_FOR_SLAVES}"

    set -- gosu jenkins /usr/local/bin/jenkins.sh "$@"
fi
exec "$@"