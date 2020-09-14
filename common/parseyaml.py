import os
import yaml

from common.log import logger
from common.error import ConfKeyNotFound

yaml_file = "../conf/conf.yaml"
logger = logger()


class ParseYaml:
    """
    解析yaml配置文件
    """

    def __init__(self, conf=yaml_file):
        yaml_file_abspath = os.path.join(os.path.dirname(__file__), conf)
        self.yaml_file = os.path.abspath(yaml_file_abspath)
        logger.info("Using config file: {}".format(self.yaml_file))
        self.conf_dict = None

    def parse_yaml(self):
        if self.conf_dict:
            # 主要是避免反复读取配置文件
            return self.conf_dict
        with open(self.yaml_file, encoding="utf-8") as conf_file:
            conf = yaml.safe_load_all(conf_file)
            self.conf_dict = next(conf)
            logger.info("Parse config result is:\n{}".format(self.conf_dict))
        return self.conf_dict

    def get_conf(self, key, default=None):
        conf_dict = self.parse_yaml()
        if key in conf_dict.keys():
            ret = conf_dict[key]
            logger.info("Get config {} from {}:\nContent: {}".format(key, self.yaml_file, ret))
        elif default:
            ret = default
            message = f"Key: {key} not found, return default value: {default}, default value type is {type(default)}."
            logger.warning(message)
        else:
            message = "No config defined in file {}.".format(key, self.yaml_file)
            raise ConfKeyNotFound(message)
        return ret


config = ParseYaml()

if __name__ == "__main__":
    d = config.get_conf("vertica")
