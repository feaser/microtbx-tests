# MicroTBX Tests
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Framework for running unit tests on the MicroTBX software components.

## Getting the code

To get the code, clone the Git repository to a subdirectory, for example inside your own home directory:

    git clone https://github.com/feaser/microtbx-tests.git ~/MicroTBXTests

This Git repository makes use of submodules. This means that one more step is needed to also get the code of the submodules: `git submodule update --init`. For example:

```
cd ~/MicroTBXTests
git submodule update --init
```

Alternatively, you can clone and obtain the submodules in one go by using the `--recursive` argument. Example:

```
git clone --recursive https://github.com/feaser/microtbx-tests.git ~/MicroTBXTests
```

## Running the unit tests

The `tests` subdirectory contains the programs that run the unit tests. Refer to the included `README.md` in the platform specific subdirectories for details on building these test programs.

## Contact

Development and maintenance of MicroTBX is sponsored by Feaser. Feaser also offers integration/customization services, and professional technical support on a commercial basis:

* [https://www.feaser.com](https://www.feaser.com)

