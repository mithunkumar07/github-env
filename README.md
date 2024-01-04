# github-env

The approach in github is diffrent from bitbucket and gitlab.

```


We use tojson(secret) to get all the secrets of the required environment.

---

Later store the extracted secrets to JSON file and upload it to artifacts.

---

Then we use the script to convert the JSON format of env to actual format we require 
eg: var=value

and we store the content to .env

---
Upload the .env file and use it for future steps for deployment.

```