echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod-key /tmp/.auth prod-user@10.9.8.11:/tmp/.auth
scp -i /opt/prod-key ./jenkins/deploy/publish prod-user@10.9.8.11:/tmp/publish
ssh -i /opt/prod-key  prod-user@10.9.8.11 "/tmp/publish"
