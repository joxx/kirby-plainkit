import scss from 'rollup-plugin-scss';
import terser from '@rollup/plugin-terser';

export default {
  input: 'src/js/main.js',
  output: [
    {
      file: 'assets/bundle.js',
      format: 'iife'
    },
    {
      file: 'assets/bundle.min.js',
      format: 'iife'
    },
  ],
  plugins: [
    scss({
      fileName: 'main.css',
      outputStyle: 'compressed'
    }),
    terser()
  ]
};
