import pytest
import allure
import json
import re

from common.tools import compose_url, isdictcontains, simple_request, get_response
from common.xlsx import XLSX
from common.log import logger

logger = logger("AutoTest")
xlsx = XLSX()
attach_1 = "请求信息"
attach_2 = "期望与结果"


@allure.feature("接口/api/serverFuzzy")
class TestC19878:
    datas = xlsx.get_data_by_case_id(19878)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19878&version=1")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_server_fuzzy(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()


@allure.feature("接口/api/comment/path")
class TestC19880:
    datas = xlsx.get_data_by_case_id(19880)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19880&version=2")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_comment_path(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()


@allure.feature("接口/api/topology/rootNode")
class TestC19881:
    datas = xlsx.get_data_by_case_id(19881)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19881&version=2")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_topology_root_node(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()


@allure.feature("接口/api/comment/pathHist")
class TestC19882:
    datas = xlsx.get_data_by_case_id(19882)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19882&version=1")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_path_history(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()


@allure.feature("接口/api/topology/relationNode")
class TestC19884:
    datas = xlsx.get_data_by_case_id(19884)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19884&version=2")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_topology_relation_next_node(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()


@allure.feature("接口/api/topology/mainData")
class TestC19885:
    datas = xlsx.get_data_by_case_id(19885)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19885&version=1")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_topology_main_data(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()


@allure.feature("接口/api/relation/service{id}")
class TestC19948:
    datas = xlsx.get_data_by_case_id(19948)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19948&version=1")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_api_relation_service(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()


@allure.feature("接口/api/relation/server{id}")
class TestC19947:
    datas = xlsx.get_data_by_case_id(19947)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19947&version=1")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_api_relation_server(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()


@allure.feature("接口/api/relation/cluster{id}")
class TestC19945:
    datas = xlsx.get_data_by_case_id(19945)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19945&version=1")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_api_relation_cluster(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()


@allure.feature("接口/api/relation/people{id}")
class TestC19946:
    datas = xlsx.get_data_by_case_id(19946)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19946&version=1")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_api_relation_people(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()


@allure.feature("接口/api/relation")
class TestC19944:
    datas = xlsx.get_data_by_case_id(19944)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19944&version=2")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_api_relation(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()


@allure.feature("接口/api/topology/defaultPath")
class TestC19893:
    datas = xlsx.get_data_by_case_id(19893)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19893&version=1")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_topology_default_path(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()


@allure.feature("接口/api/topology/relationNodeSet")
class TestC19883:
    datas = xlsx.get_data_by_case_id(19883)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19883&version=1")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_topology_relation_node_set(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert isdictcontains(expect, response.json()) and isdictcontains(response.json(), expect)


@pytest.mark.skip(reason="由于创建的拓扑路径的ID无法确定，所以最后没能删除，导致其它case也会失败。暂时跳过")
@allure.feature("接口/api/topology/path")
class TestC19894:
    """
    当前用例不能跑，由于创建的拓扑路径的ID无法确定，所以最后没能删除，导致其它case也会失败。暂时跳过
    """
    datas = xlsx.get_data_by_case_id(19894)
    ids = [x.get("ids") for x in datas]

    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19894&version=1")
    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19885&version=1")
    @allure.testcase("https://zentao.eoitek.net/index.php?m=testcase&f=view&caseID=19886&version=1")
    @pytest.mark.parametrize("data", datas, ids=ids)
    def test_topology_main_data(self, data):
        response = get_response(data)
        expect = json.loads(data.get("expect"))
        allure.attach(body="Expect type is: {}, content is:\n{}\nActual type is: {}, content is:\n{}".format(
            type(expect), expect, type(response.json()), response.json()), name=attach_2
        )
        assert expect == response.json()
