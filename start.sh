export UID=$(id -u)
export GID=$(id -g)
export SILNLP_ROOT=$HOME/silnlp
export SILNLP_DATA=$HOME/silnlp_data

mkdir -p ${HOME}/.silauto/db

if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
fi

echo "========== Starting SIL Auto Docker Build =========="
echo "SSH_CONTAINER_KEY: $SSH_CONTAINER_KEY"
echo "USFM2PDF_PATH:     $USFM2PDF_PATH"
echo "SILNLP_ROOT:       $SILNLP_ROOT"
echo "SILNLP_DATA:       $SILNLP_DATA"
echo "MAX_CONCURRENT_FILE_PROCESSING: $MAX_CONCURRENT_FILE_PROCESSING"
echo "Docker build is starting in 2 seconds..."
echo "===================================================="
sleep 2

docker compose up --build