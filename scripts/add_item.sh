aws dynamodb put-item \
    --table-name deploy_and_monitor \
    --item \
        '{"id": {"S": "1"}, "firstname": {"S": "Mark"}, "lastname": {"S": "Green"}, "gender": {"S": "Homme"}}'