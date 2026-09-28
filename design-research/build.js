const opentype = require('opentype.js');
const fs = require('fs');
const font = opentype.loadSync('../fonts/' + (process.env.FONT||'Fr-144-600.ttf') + '');
const size = 200;
const path = font.getPath('Consilix', 0, 0, size, { kerning: true });
const bb = path.getBoundingBox();
const d = path.toPathData(2);
console.log(JSON.stringify(bb));
fs.writeFileSync('wordmark-path.json', JSON.stringify({ d, bb }));
// Also the C alone for the mark
const cpath = font.getPath('C', 0, 0, size, {});
fs.writeFileSync('c-path.json', JSON.stringify({ d: cpath.toPathData(2), bb: cpath.getBoundingBox() }));
console.log(JSON.stringify(cpath.getBoundingBox()));
