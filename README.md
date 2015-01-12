Pure-Surveys
============
The goal of this repository is to explore some ways in which I could integrate
new PureScript code with an existing JS architecture (modules with requirejs,
UI with Knockout).

It uses [pulp](https://github.com/bodil/pulp) to get started and then require.js (to be placed in the js directory).

To build (requires [r.js](http://requirejs.org/docs/download.html)):

    pulp build
    mkdir -p require-output
    node r.js -convert output require-output

Then open index.html
