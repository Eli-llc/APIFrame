import pytest
from vertica_python import connect

from common.parseyaml import config
from common.log import logger


logger = logger()


def connect_vertica():
    vertica_info = config.get_conf("vertica")
    conn_info = {
        "host": vertica_info["host"],
        "port": vertica_info["port"],
        "user": vertica_info["user"],
        "password": vertica_info["password"],
        "database": vertica_info["database"],
        "use_prepared_statements": False
    }
    conn = connect(**conn_info)
    return conn


def exec_sql_file(fi=None):
    conn = connect_vertica()
    cursor = conn.cursor()
    with open(fi) as fp:
        for line in fp:
            if line.startswith((" ", "-")) or len(line) == 0:
                continue
            cursor.execute(line)


@pytest.fixture(scope="module", autouse=True, name="init and clean test data")
def init_test_data():
    logger.info("Init test data to database!")
    sql_file = config.get_conf("vertica").get("init_file")
    exec_sql_file(sql_file)
    yield
    logger.info("clean test data from database!")
    sql_file = config.get_conf("vertica").get("clean_file")
    exec_sql_file(sql_file)
