import terser from '@rollup/plugin-terser';

export default {
  input: 'src/js/main.js',
  output: [
    {
      file: 'public/js/bundle.js',
      format: 'es'
    },
    {
      file: 'public/js/bundle.min.js',
      format: 'es',
      plugins: [terser()]
    }
  ]
};