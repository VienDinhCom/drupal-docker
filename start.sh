containerName=$(basename $PWD)

docker run --name $containerName -p 8080:80 -d \
  -v $(pwd)/modules:/var/www/html/modules \
  -v $(pwd)/profiles:/var/www/html/profiles \
  -v $(pwd)/sites:/var/www/html/sites \
  -v $(pwd)/themes:/var/www/html/themes \
  drupal
