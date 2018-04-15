if [ -z $(docker images -q sneav/generate-blog) ]
then
  docker pull sneav/generate-blog
fi
echo "generating..."
docker run --rm -w="/root" -v `pwd`:/root sneav/generate-blog
echo "complete."
