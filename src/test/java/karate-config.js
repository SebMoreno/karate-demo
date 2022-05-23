function karateConfig() {
  const env = karate.env ?? 'dev';
  karate.log('karate.env system property was:', env);
  return {
    env: env,
    guruURL: 'https://demo.guru99.com/V4/'
  };
}
