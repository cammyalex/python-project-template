"""
Dummy main file for template
"""

from src.hello import personal_hello


if __name__ == "main":
    message = personal_hello("Cameron")
    print(message)
