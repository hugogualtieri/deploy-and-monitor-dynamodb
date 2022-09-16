resource "aws_cloudwatch_dashboard" "deploy_and_monitor-dashboard" {
  dashboard_name = "deploy_and_monitor-dashboard"

  dashboard_body = <<EOF
{
  "widgets": [
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "sparkline": true,
        "view": "singleValue",
        "stacked": false,
        "metrics": [
          [
            "AWS/DynamoDB",
            "ConsumedReadCapacityUnits",
            "TableName",
            "deploy_and_monitor"
          ],
          [
            "AWS/DynamoDB",
            "ConsumedWriteCapacityUnits",
            "TableName",
            "deploy_and_monitor"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "eu-west-3",
        "title": "BDD Utilization"
      }
    },
    {
      "type": "metric",
      "x": 12,
      "y": 0,
      "width": 6,
      "height": 6,
      "properties": {
        "sparkline": true,
        "view": "singleValue",
        "stacked": false,
        "metrics": [
          [
            "AWS/DynamoDB",
            "ReplicationLatency",
            "TableName",
            "deploy_and_monitor",
            "ReceivingRegion",
            "eu-west-2"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "eu-west-3",
        "title": "Replication London"
      }
    },
    {
      "type": "metric",
      "x": 18,
      "y": 0,
      "width": 6,
      "height": 6,
      "properties": {
        "sparkline": true,
        "view": "singleValue",
        "stacked": false,
        "metrics": [
          [
            "AWS/DynamoDB",
            "ReplicationLatency",
            "TableName",
            "deploy_and_monitor",
            "ReceivingRegion",
            "eu-south-1"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "eu-west-3",
        "title": "Replication Milan"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 6,
      "width": 6,
      "height": 6,
      "properties": {
        "sparkline": true,
        "view": "singleValue",
        "stacked": false,
        "metrics": [
          [
            "AWS/DynamoDB",
            "SuccessfulRequestLatency",
            "TableName",
            "deploy_and_monitor",
            "Operation",
            "PutItem"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "eu-west-3",
        "title": "PutItem"
      }
    },
    {
      "type": "metric",
      "x": 6,
      "y": 6,
      "width": 6,
      "height": 6,
      "properties": {
        "sparkline": true,
        "view": "singleValue",
        "stacked": false,
        "metrics": [
          [
            "AWS/DynamoDB",
            "SuccessfulRequestLatency",
            "TableName",
            "deploy_and_monitor",
            "Operation",
            "DeleteItem"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "eu-west-3",
        "title": "DeleteItem"
      }
    },
    {
      "type": "metric",
      "x": 12,
      "y": 6,
      "width": 6,
      "height": 6,
      "properties": {
        "sparkline": true,
        "view": "singleValue",
        "stacked": false,
        "metrics": [
          [
            "AWS/DynamoDB",
            "SuccessfulRequestLatency",
            "TableName",
            "deploy_and_monitor",
            "Operation",
            "GetItem"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "eu-west-3",
        "title": "GetItem"
      }
    },
    {
      "type": "metric",
      "x": 18,
      "y": 6,
      "width": 6,
      "height": 6,
      "properties": {
        "sparkline": true,
        "view": "singleValue",
        "stacked": false,
        "metrics": [
          [
            "AWS/DynamoDB",
            "SuccessfulRequestLatency",
            "TableName",
            "deploy_and_monitor",
            "Operation",
            "Scan"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "eu-west-3",
        "title": "Scan"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 12,
      "width": 12,
      "height": 6,
      "properties": {
        "sparkline": true,
        "view": "singleValue",
        "stacked": false,
        "metrics": [
          [
            "AWS/DynamoDB",
            "SystemErrors"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "eu-west-3",
        "title": "System Errors"
      }
    }
  ]
}
EOF
}
