import uvicorn

from inside.app import app

uvicorn.run(app, host="0.0.0.0", port=10000)
