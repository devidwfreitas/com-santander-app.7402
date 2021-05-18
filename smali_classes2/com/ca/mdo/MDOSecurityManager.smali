.class Lcom/ca/mdo/MDOSecurityManager;
.super Ljava/lang/Object;
.source "MDOSecurityManager.java"


# static fields
.field private static _instance:Lcom/ca/mdo/MDOSecurityManager;


# instance fields
.field private mCryptoUrl:Ljava/lang/String;

.field private mEncryptionAlgorithm:Ljava/lang/String;

.field private mEncryptionKey:Ljava/lang/String;

.field private mEncryptionKeyVersion:Ljava/lang/String;

.field private mKeySize:Ljava/lang/Integer;

.field private mSecureMode:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ca/mdo/MDOSecurityManager;->mSecureMode:Z

    return-void
.end method

.method public static getInstance()Lcom/ca/mdo/MDOSecurityManager;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/ca/mdo/MDOSecurityManager;->_instance:Lcom/ca/mdo/MDOSecurityManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/ca/mdo/MDOSecurityManager;

    invoke-direct {v0}, Lcom/ca/mdo/MDOSecurityManager;-><init>()V

    sput-object v0, Lcom/ca/mdo/MDOSecurityManager;->_instance:Lcom/ca/mdo/MDOSecurityManager;

    .line 53
    :cond_0
    sget-object v0, Lcom/ca/mdo/MDOSecurityManager;->_instance:Lcom/ca/mdo/MDOSecurityManager;

    return-object v0
.end method

.method private getPublicEncryptionKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 352
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/Constants;->PREF_ENCRYPTION_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "encKeyFromPerf":Ljava/lang/String;
    return-object v0
.end method

.method private getPublicKeyAlgo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 344
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_ENCRYPTION_KEY_ALGO:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPublicKeySize()I
    .locals 3

    .prologue
    .line 338
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_ENCRYPTION_KEY_SIZE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private loadNewKeyInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyVersion"    # Ljava/lang/String;
    .param p3, "algo"    # Ljava/lang/String;
    .param p4, "keySize"    # I

    .prologue
    .line 209
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_NEW_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_NEW_ENCRYPTION_KEY_ALGO:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_NEW_ENCRYPTION_KEY_VER:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_NEW_ENCRYPTION_KEY_SIZE:Ljava/lang/String;

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method

.method private modifyHeaderForEncryption(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "eventData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v0, "newHeader":Lorg/json/JSONObject;
    const-string v1, "cpt"

    const-string v2, "cpt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v1, "cpt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    const-string v1, "ckv"

    const-string v2, "ckv"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "ckv"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    const-string v1, "v"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    return-object v0
.end method


# virtual methods
.method public downloadNewSecurityKey()V
    .locals 10

    .prologue
    .line 219
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 220
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v6, p0, Lcom/ca/mdo/MDOSecurityManager;->mCryptoUrl:Ljava/lang/String;

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 223
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 224
    .local v4, "statusCode":I
    const/16 v6, 0xc8

    if-ne v4, v6, :cond_1

    .line 225
    const-string v6, "Successfully downloaded new encryption  data"

    invoke-static {v6}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 226
    invoke-static {v2}, Lcom/ca/mdo/Util;->readJsonFromResponse(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v3

    .line 227
    .local v3, "responseObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 228
    const-string v6, "encryptionKey"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "encryptionKeyVersion"

    .line 229
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "algorithm"

    .line 230
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "keySize"

    .line 231
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 228
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/ca/mdo/MDOSecurityManager;->loadNewKeyInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "responseObj":Lorg/json/JSONObject;
    .end local v4    # "statusCode":I
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "statusCode":I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to download new Security Key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "statusCode":I
    :catch_0
    move-exception v5

    .line 239
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public encrypt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "eventData"    # Lorg/json/JSONObject;
    .param p2, "type"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 86
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "encryptedVal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/ca/mdo/MDOSecurityManager;->mSecureMode:Z

    if-eqz v15, :cond_0

    .line 91
    const/4 v11, 0x0

    .line 93
    .local v11, "publicKeyEncryptor":Lcom/ca/mdo/Encrypter;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/ca/mdo/MDOSecurityManager;->mSecureMode:Z

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionAlgorithm:Ljava/lang/String;

    const-string v16, "RSA"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 95
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .local v6, "event":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ca/mdo/RSAEncrypter;->getInstance()Lcom/ca/mdo/RSAEncrypter;

    move-result-object v11

    .line 98
    const/4 v15, 0x0

    new-array v1, v15, [B

    .line 100
    .local v1, "data":[B
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "utf-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ca/mdo/MDOSecurityManager;->mKeySize:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    div-int/lit8 v15, v15, 0x8

    invoke-interface {v11}, Lcom/ca/mdo/Encrypter;->getPaddingBytes()I

    move-result v16

    sub-int v8, v15, v16

    .line 106
    .local v8, "maxBytes":I
    array-length v2, v1

    .line 107
    .local v2, "dataBytes":I
    const-string v15, "hdr"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 109
    .local v7, "isHdr":Z
    if-ge v2, v8, :cond_2

    .line 111
    if-eqz v7, :cond_1

    .line 112
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/ca/mdo/MDOSecurityManager;->modifyHeaderForEncryption(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    .line 113
    .local v9, "modifiedHeader":Lorg/json/JSONObject;
    const-string v15, "v"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "utf-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 114
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionKey:Ljava/lang/String;

    invoke-interface {v11, v1, v15}, Lcom/ca/mdo/Encrypter;->encryptData([BLjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, "pkEncryptedVal":Ljava/lang/String;
    const-string v15, "v"

    invoke-virtual {v9, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    move-object v6, v9

    .line 151
    .end local v9    # "modifiedHeader":Lorg/json/JSONObject;
    .end local v10    # "pkEncryptedVal":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 156
    .end local v1    # "data":[B
    .end local v2    # "dataBytes":I
    .end local v6    # "event":Lorg/json/JSONObject;
    .end local v7    # "isHdr":Z
    .end local v8    # "maxBytes":I
    .end local v11    # "publicKeyEncryptor":Lcom/ca/mdo/Encrypter;
    :cond_0
    :goto_2
    return-object v5

    .line 101
    .restart local v1    # "data":[B
    .restart local v6    # "event":Lorg/json/JSONObject;
    .restart local v11    # "publicKeyEncryptor":Lcom/ca/mdo/Encrypter;
    :catch_0
    move-exception v3

    .line 102
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 118
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "dataBytes":I
    .restart local v7    # "isHdr":Z
    .restart local v8    # "maxBytes":I
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionKey:Ljava/lang/String;

    invoke-interface {v11, v1, v15}, Lcom/ca/mdo/Encrypter;->encryptData([BLjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 119
    .restart local v10    # "pkEncryptedVal":Ljava/lang/String;
    const-string v15, "v"

    invoke-virtual {v6, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 122
    .end local v10    # "pkEncryptedVal":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 123
    .local v3, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception while encrypting data with RSA"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 129
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/ca/mdo/AESEncrypter;->getInstance()Lcom/ca/mdo/AESEncrypter;

    move-result-object v14

    .line 130
    .local v14, "symmetricKeyEncryptor":Lcom/ca/mdo/AESEncrypter;
    invoke-virtual {v14}, Lcom/ca/mdo/AESEncrypter;->generateSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v12

    .line 133
    .local v12, "secretKey":Ljavax/crypto/SecretKey;
    :try_start_3
    invoke-interface {v12}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionKey:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Lcom/ca/mdo/Encrypter;->encryptData([BLjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "encryptedSecretKey":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 135
    invoke-direct/range {p0 .. p1}, Lcom/ca/mdo/MDOSecurityManager;->modifyHeaderForEncryption(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    .line 136
    .restart local v9    # "modifiedHeader":Lorg/json/JSONObject;
    const-string v15, "v"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "utf-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 137
    invoke-virtual {v14, v1, v12}, Lcom/ca/mdo/AESEncrypter;->encryptData([BLjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 138
    .local v13, "symmetricEncryptedData":Ljava/lang/String;
    const-string v15, "v"

    invoke-virtual {v9, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v15, "k"

    invoke-virtual {v9, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    move-object v6, v9

    .line 141
    goto :goto_1

    .line 142
    .end local v9    # "modifiedHeader":Lorg/json/JSONObject;
    .end local v13    # "symmetricEncryptedData":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "utf-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v14, v15, v12}, Lcom/ca/mdo/AESEncrypter;->encryptData([BLjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 143
    .restart local v13    # "symmetricEncryptedData":Ljava/lang/String;
    const-string v15, "v"

    invoke-virtual {v6, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v15, "k"

    invoke-virtual {v6, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 147
    .end local v4    # "encryptedSecretKey":Ljava/lang/String;
    .end local v13    # "symmetricEncryptedData":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 148
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception while encrypting data with RSA"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 153
    .end local v1    # "data":[B
    .end local v2    # "dataBytes":I
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "event":Lorg/json/JSONObject;
    .end local v7    # "isHdr":Z
    .end local v8    # "maxBytes":I
    .end local v12    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v14    # "symmetricKeyEncryptor":Lcom/ca/mdo/AESEncrypter;
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid encrypt() call : isSecureMode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ca/mdo/MDOSecurityManager;->mSecureMode:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Algo="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionAlgorithm:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getPublicEncryptionKeyVersion()J
    .locals 6

    .prologue
    .line 324
    const/4 v2, 0x0

    .line 325
    .local v2, "encKeyVerFromPerf":Ljava/lang/String;
    iget-object v3, p0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionKeyVersion:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 326
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v4, Lcom/ca/mdo/Constants;->PREF_ENCRYPTION_KEY_VER:Ljava/lang/String;

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    :goto_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 331
    .local v0, "encKeyFromPerfLong":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 332
    const-wide/16 v0, 0x1

    .line 334
    .end local v0    # "encKeyFromPerfLong":J
    :cond_0
    return-wide v0

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionKeyVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public initPublicKeyInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyVersion"    # Ljava/lang/String;
    .param p3, "algo"    # Ljava/lang/String;
    .param p4, "keySize"    # I

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/ca/mdo/MDOSecurityManager;->getPublicEncryptionKey()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "perfKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ca/mdo/MDOSecurityManager;->getPublicEncryptionKeyVersion()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "perfKeyVersion":Ljava/lang/String;
    invoke-direct {p0}, Lcom/ca/mdo/MDOSecurityManager;->getPublicKeyAlgo()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "perfKeyAlgo":Ljava/lang/String;
    invoke-direct {p0}, Lcom/ca/mdo/MDOSecurityManager;->getPublicKeySize()I

    move-result v2

    .line 283
    .local v2, "perfKeySize":I
    if-nez v0, :cond_0

    .line 284
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lcom/ca/mdo/Constants;->PREF_ENCRYPTION_KEY:Ljava/lang/String;

    .line 285
    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 286
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    move-object v0, p1

    .line 290
    :cond_0
    if-eqz v3, :cond_1

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    :cond_1
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lcom/ca/mdo/Constants;->PREF_ENCRYPTION_KEY_VER:Ljava/lang/String;

    .line 292
    invoke-interface {v4, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 293
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 294
    move-object v3, p2

    .line 298
    :cond_2
    if-nez v1, :cond_3

    .line 299
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lcom/ca/mdo/Constants;->PREF_ENCRYPTION_KEY_ALGO:Ljava/lang/String;

    .line 300
    invoke-interface {v4, v5, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 301
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    move-object v1, p3

    .line 305
    :cond_3
    if-nez v2, :cond_4

    .line 306
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lcom/ca/mdo/Constants;->PREF_ENCRYPTION_KEY_SIZE:Ljava/lang/String;

    .line 307
    invoke-interface {v4, v5, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 308
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    move v2, p4

    .line 312
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/ca/mdo/MDOSecurityManager;->mKeySize:Ljava/lang/Integer;

    .line 313
    iput-object v0, p0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionKey:Ljava/lang/String;

    .line 314
    iput-object v3, p0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionKeyVersion:Ljava/lang/String;

    .line 315
    iput-object v1, p0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionAlgorithm:Ljava/lang/String;

    .line 316
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/ca/mdo/MDOSecurityManager;->mSecureMode:Z

    .line 317
    return-void

    .line 316
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isSecureMode()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/ca/mdo/MDOSecurityManager;->mSecureMode:Z

    return v0
.end method

.method public loadPlistConfiguration(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "plistData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/ca/mdo/Constants;->CRYPTO_URL:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/ca/mdo/MDOSecurityManager;->mCryptoUrl:Ljava/lang/String;

    .line 256
    const-string v4, "encryptionKey"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    .local v1, "encKey":Ljava/lang/String;
    const-string v4, "encryptionKeyVersion"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    .local v2, "encKeyVersion":Ljava/lang/String;
    sget-object v4, Lcom/ca/mdo/Constants;->ENCRYPTION_ALGORITHM:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    .local v0, "algo":Ljava/lang/String;
    sget-object v4, Lcom/ca/mdo/Constants;->ENCRYPTION_KEY_SIZE:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 265
    .local v3, "keySize":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v1, v2, v0, v4}, Lcom/ca/mdo/MDOSecurityManager;->initPublicKeyInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    :cond_0
    return-void
.end method

.method public replaceSecurityKeyWithNewKey()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 164
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 165
    .local v5, "preferences":Landroid/content/SharedPreferences;
    sget-object v6, Lcom/ca/mdo/Constants;->PREF_NEW_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "newKey":Ljava/lang/String;
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 170
    sget-object v6, Lcom/ca/mdo/Constants;->PREF_NEW_ENCRYPTION_KEY_VER:Ljava/lang/String;

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "newKeyVer":Ljava/lang/String;
    sget-object v6, Lcom/ca/mdo/Constants;->PREF_NEW_ENCRYPTION_KEY_SIZE:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 172
    .local v3, "newKeySize":I
    sget-object v6, Lcom/ca/mdo/Constants;->PREF_NEW_ENCRYPTION_KEY_ALGO:Ljava/lang/String;

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "newKeyAlgo":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New key information is available :New Version ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 177
    sget-object v6, Lcom/ca/mdo/Constants;->PREF_ENCRYPTION_KEY_ALGO:Ljava/lang/String;

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    sget-object v6, Lcom/ca/mdo/Constants;->PREF_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    sget-object v6, Lcom/ca/mdo/Constants;->PREF_ENCRYPTION_KEY_VER:Ljava/lang/String;

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    sget-object v6, Lcom/ca/mdo/Constants;->PREF_ENCRYPTION_KEY_SIZE:Ljava/lang/String;

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 183
    sget-object v6, Lcom/ca/mdo/Constants;->PREF_NEW_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    sget-object v6, Lcom/ca/mdo/Constants;->PREF_NEW_ENCRYPTION_KEY_VER:Ljava/lang/String;

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    sget-object v6, Lcom/ca/mdo/Constants;->PREF_NEW_ENCRYPTION_KEY_SIZE:Ljava/lang/String;

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    sget-object v6, Lcom/ca/mdo/Constants;->PREF_NEW_ENCRYPTION_KEY_ALGO:Ljava/lang/String;

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    iput-object v4, p0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionKeyVersion:Ljava/lang/String;

    .line 193
    iput-object v1, p0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionKey:Ljava/lang/String;

    .line 194
    iput-object v2, p0, Lcom/ca/mdo/MDOSecurityManager;->mEncryptionAlgorithm:Ljava/lang/String;

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/ca/mdo/MDOSecurityManager;->mKeySize:Ljava/lang/Integer;

    .line 198
    .end local v2    # "newKeyAlgo":Ljava/lang/String;
    .end local v3    # "newKeySize":I
    .end local v4    # "newKeyVer":Ljava/lang/String;
    :cond_0
    return-void
.end method
