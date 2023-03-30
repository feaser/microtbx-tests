# MicroTBX Tests
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Framework for running unit tests on the MicroTBX software components.

## Getting the code

To get the code, clone the Git repository to a subdirectory, for example inside your own home directory. Make sure to add the `--recursive` flag to also clone the submodules:

```bash
git clone --recursive https://github.com/feaser/microtbx-tests.git ~/MicroTBXTests
```

Afterwards, clone the actual MicroTBX software components into the `third_party` subdirectory. Example for `microtbx`:

```bash
cd ~/MicroTBXTests/third_party
git clone https://github.com/feaser/microtbx.git microtbx
```

## Running the unit tests

The `tests` subdirectory contains the programs that run the unit tests. Refer to the included `README.md` in the platform specific subdirectories for details on building these test programs.

## Contact

Development and maintenance of MicroTBX is sponsored by Feaser. Feaser also offers integration/customization services, and professional technical support on a commercial basis:

* [https://www.feaser.com](https://www.feaser.com)

