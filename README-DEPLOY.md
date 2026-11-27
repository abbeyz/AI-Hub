# Deploy "How AI Works" to Fly.io

This folder is ready for Fly.io: `Dockerfile` serves the course with nginx, and `fly.toml` points Fly at nginx's port (80).
Keep these files together at the top level: `Dockerfile`, `fly.toml`, `index.html`, `modules/`.

## Option A: command line
1. Install flyctl and sign in: `fly auth login`
2. Unzip this file into an empty folder and open a terminal in that folder.
3. `fly launch --no-deploy`
   - When asked whether to copy the configuration from the existing fly.toml, answer **yes**.
   - Choose an app name (it becomes https://<name>.fly.dev).
4. `fly deploy`
5. `fly apps open` to view it.

## Option B: GitHub + the Fly.io dashboard
1. Create a GitHub repository and upload the unzipped files to its **root**, not inside a subfolder.
2. In the Fly.io dashboard, launch a new app from that repository. Fly should report that it detected a Dockerfile.

## Updating the course later
Replace `index.html` and the `modules/` folder with the new versions, then run `fly deploy` again (or push to GitHub).

Note: a fly.dev address is public. Anyone with the link can open the course.
