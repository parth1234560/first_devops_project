import unittest
from app import app  # Make sure your Flask app is saved as `app.py`

class FlaskAppTestCase(unittest.TestCase):
    def setUp(self):
        # Create a test client
        self.app = app.test_client()
        self.app.testing = True

    def test_info_route(self):
        response = self.app.get('/info')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.data.decode(), "i m LW from India")

    def test_phone_route(self):
        response = self.app.get('/phone')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.data.decode(), "9351009002")

if __name__ == '__main__':
    unittest.main()
