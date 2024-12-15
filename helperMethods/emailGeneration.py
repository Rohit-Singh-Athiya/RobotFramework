from datetime import datetime

from robot.api.deco import keyword


@keyword
def generate_email():
    dt = datetime.now().strftime('%Y%m%d%H%M%S')  # Corrected format
    email = dt + "@test.com"
    return email