const fs = require('fs');
const { d, bb } = JSON.parse(fs.readFileSync('wordmark-path.json'));
const { d: cd, bb: cbb } = JSON.parse(fs.readFileSync('c-path.json'));
const ink = process.argv[2] || '#131314';
const dot = process.argv[3] || '#963F21';
const out = process.argv[4] || 'wordmark.svg';
// canvas 863x344 like the PNG; text width target 825 starting x=20, baseline y=185
const s = 825 / (bb.x2 - bb.x1);
const tx = 20 - bb.x1 * s, ty = 185;
const svg = `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 863 344" width="863" height="344">
<g transform="translate(${tx.toFixed(2)} ${ty}) scale(${s.toFixed(4)})"><path fill="${ink}" d="${d}"/></g>
<circle cx="80" cy="265" r="37" fill="${dot}"/>
<rect x="40" y="318" width="126" height="20" rx="3" fill="${ink}"/>
</svg>`;
fs.writeFileSync(out, svg);
// Mark: C with dot inside, canvas 500x611
const ms = 480 / (cbb.y2 - cbb.y1);
const mx = 10 - cbb.x1 * ms, my = 10 - cbb.y1 * ms;
const cw = (cbb.x2 - cbb.x1) * ms;
const mark = `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 611" width="500" height="611">
<g transform="translate(${mx.toFixed(2)} ${my.toFixed(2)}) scale(${ms.toFixed(4)})"><path fill="${ink}" d="${cd}"/></g>
<circle cx="395" cy="300" r="76" fill="${dot}"/>
</svg>`;
fs.writeFileSync(out.replace('wordmark','mark'), mark);
console.log('wrote', out, 'scale', s.toFixed(3), 'C width', cw.toFixed(1));
