import sys
import json
import requests

url = "https://discord.com/api/webhooks/1214159996292440144/8Iw842Z7N6FG99A3RcQtSalSY8Xo4JlYb5Pe_YCA13fnrnlPfOK9F1h9GDHdsf5PJKi4"

payload = {"content": ' '.join(sys.argv[1:])}
requests.post(url, data=json.dumps(payload), headers={"Content-Type": "application/json"})
