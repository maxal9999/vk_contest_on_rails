module.exports = {
   to: '/dist/style.css',
   plugins: {
      'autoprefixer': {
         cascade: true,
         browsers: 'last 3 versions'
      },
      'cssnano': {}
   }
};