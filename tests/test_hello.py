"""
Dummy unit tests for template
"""

from hello import basic_hello, personal_hello


def test_basic_hello():
    assert basic_hello() == "hello!"


def test_personal_hello():
    test_name = "Cameron"
    assert personal_hello(name=test_name) == "hello Cameron!"
