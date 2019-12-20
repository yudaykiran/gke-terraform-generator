#!/bin/bash

function TagAndPushImage() {
  REPO="$1"
  TAG="$2"

  IMAGE_URI="${REPO}:${TAG}";
  sudo docker tag ${IMAGEID} ${IMAGE_URI};
  echo "push ${IMAGE_URI}";
  sudo docker push ${IMAGE_URI};
}

if [ ! -z "${COMMIT}" ];
then
  sudo docker login -u "${DNAME}" -p "${DPASS}";

  # Push COMMIT tagged image - :COMMIT
  TagAndPushImage "${IMAGE}" "${COMMIT}"
fi;
