  
curl -OL https://raw.githubusercontent.com/microsoft/ignite-learning-paths-training-data/master/deployment/demos/Datafiles/logs/weblogsQ1.log
curl -OL https://raw.githubusercontent.com/microsoft/ignite-learning-paths-training-data/master/deployment/demos/Datafiles/logs/weblogsQ2.log
curl -OL https://raw.githubusercontent.com/microsoft/ignite-learning-paths-training-data/master/deployment/demos/Datafiles/logs/preferences.json
curl -OL https://raw.githubusercontent.com/microsoft/ignite-learning-paths-training-data/master/deployment/demos/Datafiles/Staticfiles/DimDate2.txt
az storage copy --source-local-path "$PWD/weblog*.log" --destination-account-name $1 --destination-container logs
az storage copy --source-local-path "$PWD/Dim*.txt" --destination-account-name $1 --destination-container data
az storage copy --source-local-path "$PWD/prefer*.json" --destination-account-name $1 --destination-container data
az storage copy --source-local-path "$PWD/prefer*.json" --destination-account-name $1 --destination-container logs
