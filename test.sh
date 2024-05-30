Privatekey = key.replace("-----BEGIN PUBLIC KEY-----", "")
                  .replace("-----BEGIN PRIVATE KEY-----", "")
                  .replaceAll(System.lineSeparator(), "")
                  .replace("-----END PUBLIC KEY-----", "")
                  .replace("-----END PRIVATE KEY-----", "");
