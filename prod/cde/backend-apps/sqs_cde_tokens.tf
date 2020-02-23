resource "aws_sqs_queue" "CDE-TOKENS-SQS-1" {
    name                       = "CDE-TOKENS-SQS-1.fifo"
    visibility_timeout_seconds = 30
    message_retention_seconds  = 345600
    max_message_size           = 262144
    delay_seconds              = 0
    fifo_queue                 = true
    receive_wait_time_seconds  = 0
tags = {
    Name = "CDE-TOKENS-SQS-1"
}
}
