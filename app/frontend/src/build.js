const fs = require("fs");

fs.mkdirSync("dist", { recursive: true });
fs.writeFileSync("dist/index.html", "<main>ForgeBeyond demo app</main>\n");
console.log("frontend build complete");
