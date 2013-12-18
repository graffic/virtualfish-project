# virtualfish-project

Extends [virtualfish][1] with the project folder functionality available in
[virtualenvwrapper][2].

This allows you to have a default `home` in a virtualenv. And it is compatible
with environments created with [virtualenvwrapper][2] (by using the .project
file)

## Installation


1. Clone this repository, or download the virtual-project.fish file somewhere.
   My personal preference is to clone it in the `.config/fish/` folder.

   ```Shell
   $ cd .config/fish
   $ git clone https://github.com/graffic/virtualfish-project.git
   ```

2. Import it in your config file **before** the `virtualfish` include.
   
   ```Shell
   set -x VIRTUALFISH_HOME ~/PythonEnvs/
   . ~/.config/fish/virtualfish-project/virtual-project.fish
   . ~/.config/fish/virtualfish/virtual.fish
   ```

## Usage

By *default* if a project directory is set for a virtualenv, after activation
your directory will change to that project directory.

If you haven't set a project directory for your virtualenv

1. Activate the virtualenv you want to configure
2. Change directory to the desired `project directory`.
3. Run:

   ```Shell
   $ vf setp
   ```

After a `project directory` is set in a virtual env, you can quickly jump to
it running:

```Shell
$ vf cdp
```

[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/e00358c0d50e8daf5ed8f15ad3a59b3a "githalytics.com")](http://githalytics.com/graffic/virtualfish-project)

[1]: https://github.com/adambrenecki/virtualfish
[2]: http://virtualenvwrapper.readthedocs.org/en/latest/
