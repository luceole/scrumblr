var argv = require('yargs')
  .usage('Usage: $0 [--port INTEGER [8080]] [--baseurl STRING ["/"]] [--redis STRING:INT [127.0.0.1:6379]]')
  .argv;

exports.server = {
  public: true,
  port: argv.port || 8080,
  baseurl: argv.baseurl || '/'
};

var redis_conf = argv.redis || '127.0.0.1:6379';
exports.database = {
  sock: argv['sock'] || false,
  type: 'redis',
  prefix: '#e_board#',
  host: redis_conf.split(':')[0] || '127.0.0.1',
  port: redis_conf.split(':')[1] || 6379
};
