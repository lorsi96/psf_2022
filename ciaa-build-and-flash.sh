# Functions
print_help() {
    echo "Usage: $0 <directory>"
    echo ""
    echo "Note: 'undefined reference to main' erros are often due to not choosing a directory with a 'config.mk file'"
    exit 0
}

# Trigger help menu if used incorrectly or -h.
if [[ $# -eq 0 ]] ; then
    print_help
fi
while [[ $# -gt 0 ]]; do
  case $1 in
    -h|--help)
      print_help
      shift # past argument
      shift # past value
      ;;
  esac
done

# Run command
docker run \
  -it --rm \
  --privileged \
  --name lorsi-ciaa \
  -v $(pwd)/$1:/ciaa/examples/c/app  \
  -v /dev:/dev \
  --workdir /ciaa \
  lorsi/ciaa-development-environment:latest \
  /bin/bash -c "make all && make download"  
