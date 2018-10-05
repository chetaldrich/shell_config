import lib.atom as atom
import lib.brew as brew
import lib.config as config
import sys

def plugins():
    return [
        brew.BrewPlugin(),
        atom.AtomPlugin()
    ]

def main():
    configuration = config.Configuration(sys.argv[1])
    for plugin in plugins():
        configuration.register(plugin)

    configuration.apply()

if __name__ == '__main__':
    main()
