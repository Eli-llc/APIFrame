import requests
import json

from common.parseyaml import config
from common.error import MethodError
from common.log import logger

logger = logger()


class URL:
    def __init__(self):
        self.conf = config.get_conf("testSystem")

    def compose_url(self, req_path):
        url = self.conf["proto"] + "://" + self.conf["host"] + ":" + self.conf["port"] + req_path
        return url


compose_url = URL().compose_url


def isdictcontains(expect, actual, strict=True):
    """
    Compare whether expect is contained by actual. Return True if contained, False otherwise.
    :param expect:
    :param actual:
    :param strict:
    :return: bool
    """
    result = False
    if isinstance(expect, dict):
        # if type(expect) is dict, compare the value according keys.
        for expect_key in expect:
            if expect_key in actual.keys():
                # The key's value maybe dict or other iterable, use recursion to calculate result
                result = isdictcontains(expect[expect_key], actual[expect_key])
                if not result:  # The final result is False
                    break
            else:  # The final result is False
                logger.warning(f"Key {expect_key} not found in actual result")
                result = False
                break
            if not result:
                logger.warning(f"Compare Result failed as following content\n{expect.get(expect_key)}")
    elif isinstance(expect, (list, tuple, set)):
        # if expect is Iterable() exclude string, iter it's element to calculate result
        if len(expect) == 0 and len(actual) == 0:
            # if expect is [], then actual must be [].
            result = True
        for ele_expect in expect:
            for ele_actual in actual:
                # Also need recursion to calculate result here
                if isdictcontains(ele_expect, ele_actual):
                    # if ele_expect match any ele_actual, temporarily set result to True
                    result = True
                    break
                else:
                    result = False
            if not result:  # The final result is False
                break
    else:
        # 如果是普通的值，则直接判断是否相等，如果相等，则判断匹配成功
        if strict:
            result = expect == actual
        elif isinstance(expect, str):
            result = expect in actual
        elif isinstance(expect, int):
            result = expect == actual
    return result


def get_response(data: dict, **kwargs):
    """
    :param data: data from excel
    :return: response of request
    """
    url = compose_url(data.get("path"))
    try:
        payload = data.get("request_data").encode('utf-8')
    except AttributeError:
        payload = None
        logger.warning("request_data is None!")
    try:
        params = data.get("params").encode('utf-8')
    except AttributeError:
        params = None
        logger.warning("param is None!")
    # headers = Login()
    headers = {
        "Content-Type": "application/json;charset=UTF-8",
        "Accept": "application/json, text/plain, */*"
    }
    method = data.get("method")
    # message = "request info: \n\turl: {}, {}\n\tpayload(data): {}, {}\n\theaders: {}, {}\n\tmethod: {}, {}".format(
    #     url, type(url), payload, type(payload), headers, type(headers), method, type(method)
    # )
    # logger.info(message)
    if method == "get":
        response = requests.get(url=url, data=payload, headers=headers, params=params, **kwargs)
    elif method == "post":
        response = requests.post(url=url, data=payload, headers=headers, params=params, **kwargs)
    elif method == "delete":
        response = requests.delete(url=url, data=payload, headers=headers, params=params, **kwargs)
    elif method == "put":
        response = requests.put(url=url, data=payload, headers=headers, params=params, **kwargs)
    else:
        message = "Method: {} not support now!".format(method)
        raise MethodError(message)
    return response


def simple_request(data: dict, **kwargs):
    """
    :param data: data from excel
    :return: bool
    """
    response = get_response(data, **kwargs)
    expect = json.loads(data.get("expect"))
    result = isdictcontains(expect, response.json())
    if not result:
        print("******"*20)
        print(expect, type(expect), response.json(), type(response.json()), sep="\n")
    return result


def beauty_param(param):
    if isinstance(param, str):
        return param
    elif isinstance(param, dict):
        s_list = []
        for k, v in param.items():
            s = f"{k}={v}"
            s_list.append(s)
        param = "&".join(s_list)
        return param
    else:
        logger.warning(f"Except param is str or dict, actual {type(param)}, will transfer it to str!")
        return str(param)


if __name__ == '__main__':
    pass