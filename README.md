# Scott Neaves' Personal Blog

This blog is generated from markdown by a static site generator written by an [Alexander Teinum](https://github.com/alexanderte), which can be found here: [https://github.com/alexanderte/simple-website] (https://github.com/alexanderte/simple-website).

The only files committed to source control are the markdown files, which are all contained in the `_pages`, `_posts`, and `_sections` directories. When the static site generator is run, the following built artifacts are added to this directory:

- index.html
- all-posts.html
- pages/
- posts/

## Run the generator

To run the generator, just do `./generate.sh`

## Build the `generate-blog` image

By default, the `generate.sh` script uses a `sneav/generate-blog` image that I've already created. If you want to create your own (so that you can indepdently host the image in your own registry, or to update the image to use a newer version of Alexander's static site generator), you can do the following: `docker build -t <your-dockerhub-username>/generate-blog .`. This will create an image with a fresh copy of the latest static site generator source code from https://github.com/alexanderte/simple-website.

## Publish the site to S3

To publish the site to S3, you can just do `./publish.sh`. You'll have to go into `publish.sh` and change the target bucket to a bucket that you own. Make sure that that bucket is publicly readable and is configured for static website hosting. You'll also need to install the aws cli and supply `aws configure` with your AWS Access Key ID and AWS Secret Access Key.
