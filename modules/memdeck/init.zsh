
export MEMDECK_STACK_DIR=${MEMDECK_STACK_DIR:-/etc/memdeck/stacks}

if [ ! -d $MEMDECK_STACK_DIR ]; then
  mkdir -p $MEMDECK_STACK_DIR 2>/dev/null
  if [[ $? -gt 0 ]]; then
    >&2 echo "Error: Unable to build stack directory at ${MEMDECK_STACK_DIR}. Manually create it."
  fi
fi
