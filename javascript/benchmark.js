// Require the module
var FitParser = require('./node_modules/fit-file-parser/dist/fit-parser.js').default;
var path = require('path');

// Read a .FIT file
var fs = require('fs');
var file = process.argv[2];

fs.readFile(file, function (err, content) {
  var starttime = new Date();
  var fitParser = new FitParser({
    force: true,
    speedUnit: 'km/h',
    lengthUnit: 'm',
    temperatureUnit: 'celsius',
    elapsedRecordField: true,
    mode: 'list',
  });
  

  fitParser.parse(content, function (error, data) {
    var endtime = new Date();
    var elapsed = (endtime - starttime) / 1000.0;
    if (error) {
      console.log(error);
    } else {
      console.log('record: %d', data.records.length);
      console.log('laps: %d', data.laps.length);
      console.log('| javascript | fit-file-parser.js | %s | %s seconds | [fit-file-parser.js](https://github.com/jimmykane/fit-parser) |',
                  path.basename( file ), elapsed.toFixed(3) );
      
    }
  });
});
