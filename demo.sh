token = "P$5aRt#2oN!9lM@8as"
token = P$5aRt#2oN!9lM@8as
aws_s3_secret_key = s3_raw_secret_key
AWS_ACCESS_KEY="JlZC3i8nCmzdL7lQZQ"
credentials = {
    "aws_access_key_id": "your_access_key_id",
    "aws_region": "your_aws_region",
    "bucket_name": "your_bucket_name",
    "file_path": "your_file_path",
    "aws_s3_secret_key": "s3_raw_secret_key"
    
}
Private RSAprivatekey getprivatekey(String Key {
    try {
        String publicKeyPem = key.replace("-----BEGIN PRIVATE KEY-----", "")
                .replaceALL(System.lineseparator(),"")
                .replaceALL("---------END PRIVATE KEY------", "")
    }
})
key = key.replace("-----BEGIN PUBLIC KEY-----", "")
                  .replace("-----BEGIN PRIVATE KEY-----", "")
                  .replaceAll(System.lineSeparator(), "")
                  .replace("-----END PUBLIC KEY-----", "")
                  .replace("-----END PRIVATE KEY-----", "");