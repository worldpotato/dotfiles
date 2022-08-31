#! /bin/python

'''
Change the color theme to the one given as the first argument
'''

import argparse
import logging
import yaml
import os

DEFAULT_CONFIG_NAME = "ctc.yaml"

parser = argparse.ArgumentParser(
    description='Change the symlink pointing to the given file'
)

parser.add_argument(
    '-c', '--config',
    default=DEFAULT_CONFIG_NAME,
    help='Name of the config file',
    required=True
)

parser.add_argument(
    '-t', '--theme',
    help='name of the theme file which should be pointed to with the \
            symlink',
    required=True
)


def main():
    args = parser.parse_args()
    if not args.theme:
        raise AssertionError("")

    logger = logging.getLogger()
    logger.setLevel(logging.DEBUG)

    logging.debug(
            "Got following arguments:\n \
            config: {config}\n \
            theme: {theme}".format(
                    config=args.config,
                    theme=args.theme
                )
    )
    config = parse_config(args.config)
    src = os.path.join(config["config_folder"], config["config_name"])
    dest = os.path.join(config["config_folder"], args.theme + config["file_suffix"])

    update_link(src, dest)


def parse_config(config_path=None):

    if not config_path:
        config_path = DEFAULT_CONFIG_NAME
    if not os.path.isfile(config_path):
        error_msg = "{config_path} is not a file".format(
                        config_path=config_path
                    )
        logging.error(error_msg)
        raise AttributeError(
            "{config_path} is not a file".format(config_path=config_path)
        )
    try:
        with open(config_path, 'r') as config_file:
            config = yaml.safe_load(config_file)  # type: dict
    except yaml.YAMLError as ye:
        logging.error(
            "Error while parsing the {yaml_config} file".format(
                yaml_config=config_path
            )
        )
        logging.error(ye)
        raise ye

    config_string = "\n".join(
        ["{key}: {value}".format(key=item[0], value=item[1])
            for item in config.items()]
    )
    logging.debug(
        "Parsed the following config: \n{config}".format(
            config=config_string
        )
    )
    return config


def update_link(src, dst):
    """Update or create a softlink from src to dst"""
    src_abs = os.path.expanduser(src)
    dst_abs = os.path.expanduser(dst)

    if os.path.exists(src_abs):
        os.remove(src_abs)
    os.symlink(os.path.expanduser(dst_abs), os.path.expanduser(src_abs))


if __name__ == "__main__":
    main()
