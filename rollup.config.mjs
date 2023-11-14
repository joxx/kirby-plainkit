import scss from 'rollup-plugin-scss';
import terser from '@rollup/plugin-terser';

export default {
  input: 'src/js/main.js',
  output: [
    {
      file: 'assets/js/bundle.js',
      format: 'iife'
    },
    {
      file: 'assets/js/bundle.min.js',
      format: 'iife'
    },
  ],
  plugins: [
    scss({
      fileName: 'main.css'
    }),
    terser()
  ]
};
