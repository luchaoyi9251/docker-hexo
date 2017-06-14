if  [ "$(ls -A ./)" ]; then
    echo "Starting server..."
    hexo server
  else
    hexo init /blog
    npm install --save hexo-generator-sitemap
    npm install --save hexo-generator-index
    npm install --save hexo-generator-archive
    npm install --save hexo-generator-category
    npm install --save hexo-generator-tag
    npm install --save hexo-hey
    echo "Template built."
fi
