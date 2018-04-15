aws s3 cp all-posts.html s3://scottneaves
aws s3 cp index.html s3://scottneaves
aws s3 cp --recursive posts/ s3://scottneaves/posts/
aws s3 cp --recursive pages/ s3://scottneaves/pages/
