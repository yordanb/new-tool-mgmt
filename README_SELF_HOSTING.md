### Self Hosting Supabase

```

1. Follow instructions here: https://supabase.com/docs/guides/self-hosting/docker

2. After setup, please setup your SMTP at supabase/docker/.env
nano supabase/docker/.env to enable Sign up with email

3. After that, you must restart all your services
```
# Stop and remove the containers
docker compose down

# Recreate and start the containers
docker compose up -d
```

4. if your VPS url is not secured with SSL, please use http:// instead of https://
Or you can't integrate with Supabase from Flutter 
```