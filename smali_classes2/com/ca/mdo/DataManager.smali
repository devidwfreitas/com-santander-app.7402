.class public Lcom/ca/mdo/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# static fields
.field public static UPLOAD_TAG:Ljava/lang/String;

.field public static eventCheckRate:I


# instance fields
.field public currentRate:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mBackendUrl:Ljava/lang/String;

.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x64

    sput v0, Lcom/ca/mdo/DataManager;->eventCheckRate:I

    .line 33
    const-string v0, "[Upload]:"

    sput-object v0, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "backendUrl"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ca/mdo/DataManager;->currentRate:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    iput-object p1, p0, Lcom/ca/mdo/DataManager;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/ca/mdo/DataManager;->mBackendUrl:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private afterUploadProcessing(Lcom/ca/mdo/SessionUploadInfo;)V
    .locals 10
    .param p1, "sessionUploadInfo"    # Lcom/ca/mdo/SessionUploadInfo;

    .prologue
    .line 84
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getSessionManager()Lcom/ca/mdo/SessionManager;

    move-result-object v7

    iget-object v1, v7, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    .line 87
    .local v1, "currentSessionId":Ljava/lang/String;
    iget-object v7, p0, Lcom/ca/mdo/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/ca/mdo/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/ca/mdo/DatabaseHelper;

    move-result-object v2

    .line 88
    .local v2, "dbHelper":Lcom/ca/mdo/DatabaseHelper;
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    sget-object v8, Lcom/ca/mdo/Constants;->PREF_CRASH_SESSION:Ljava/lang/String;

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "crashedSessionId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/ca/mdo/SessionUploadInfo;->getSessionId()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "sessionId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v6

    .line 94
    .local v6, "statusCode":I
    if-eqz v1, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    .line 96
    .local v4, "liveSession":Z
    :goto_0
    invoke-direct {p0, v6}, Lcom/ca/mdo/DataManager;->isSuccessfulUpload(I)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0x1ad

    if-ne v6, v7, :cond_5

    if-nez v4, :cond_5

    .line 97
    :cond_0
    invoke-static {v5}, Lcom/ca/mdo/CAMobileDevOps;->removeCustomEventsForSession(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2, v5}, Lcom/ca/mdo/DatabaseHelper;->purgeSessionEvents(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, v6}, Lcom/ca/mdo/DataManager;->isSuccessfulUpload(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/ca/mdo/DataManager;->updateLastAcceptedTime(J)V

    .line 102
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 103
    :cond_2
    invoke-virtual {p1}, Lcom/ca/mdo/SessionUploadInfo;->getSessionAcceptanceHeaderValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/ca/mdo/DatabaseHelper;->updateSessionMetadataStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v4    # "liveSession":Z
    .end local v5    # "sessionId":Ljava/lang/String;
    .end local v6    # "statusCode":I
    :goto_1
    return-void

    .line 94
    .restart local v5    # "sessionId":Ljava/lang/String;
    .restart local v6    # "statusCode":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 105
    .restart local v4    # "liveSession":Z
    :cond_4
    invoke-virtual {v2, v5}, Lcom/ca/mdo/DatabaseHelper;->purgeSessionHeader(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    .end local v4    # "liveSession":Z
    .end local v5    # "sessionId":Ljava/lang/String;
    .end local v6    # "statusCode":I
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while updating SDK DB after Uploading session:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ca/mdo/SessionUploadInfo;->getSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_1

    .line 109
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "liveSession":Z
    .restart local v5    # "sessionId":Ljava/lang/String;
    .restart local v6    # "statusCode":I
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Lcom/ca/mdo/SessionUploadInfo;->getSessionAcceptanceHeaderValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/ca/mdo/DatabaseHelper;->updateSessionMetadataStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private isSuccessfulUpload(I)Z
    .locals 1
    .param p1, "statusCodeOfBulkEvents"    # I

    .prologue
    .line 146
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postToWriteServer(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mdo/SessionUploadInfo;)V
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "events"    # Ljava/lang/String;
    .param p3, "uploadInfo"    # Lcom/ca/mdo/SessionUploadInfo;

    .prologue
    .line 290
    invoke-virtual/range {p3 .. p3}, Lcom/ca/mdo/SessionUploadInfo;->getSessionAcceptanceHeaderValue()Ljava/lang/String;

    move-result-object v9

    .line 291
    .local v9, "sessionStatusHeaderVal":Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 293
    .local v5, "lastAcceptedSessionTimestamp":J
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Url +"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 294
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Header["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/ca/mdo/Constants;->RESPONSE_HEADER_SESSION_STATUS:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 295
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Data to be uploaded "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ca/mdo/CALog;->f(Ljava/lang/String;)I

    .line 296
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 297
    .local v4, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ca/mdo/Util;->compress(Ljava/lang/String;)[B

    move-result-object v7

    .line 298
    .local v7, "onWire":[B
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Before Compression :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " After Compression :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 300
    const-string v14, "Content-Type"

    const-string v15, "application/json; charset=utf-8"

    invoke-virtual {v4, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v14, "Content-Encoding"

    const-string v15, "gzip"

    invoke-virtual {v4, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    if-eqz v9, :cond_0

    .line 304
    sget-object v14, Lcom/ca/mdo/Constants;->RESPONSE_HEADER_SESSION_STATUS:Ljava/lang/String;

    invoke-virtual {v4, v14, v9}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    sget-object v15, Lcom/ca/mdo/Constants;->LAST_SESSION_ACCEPTED_TIME:Ljava/lang/String;

    const-wide/16 v16, -0x1

    invoke-interface/range {v14 .. v17}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 307
    const-wide/16 v14, 0x0

    cmp-long v14, v5, v14

    if-lez v14, :cond_5

    .line 308
    sget-object v14, Lcom/ca/mdo/Constants;->REQUEST_HEADER_LAST_SESSION_ACCPETED_TIMESTAMP:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Header["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/ca/mdo/Constants;->REQUEST_HEADER_LAST_SESSION_ACCPETED_TIMESTAMP:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 315
    :goto_0
    const-string v14, "X-Axa-Tenant"

    sget-object v15, Lcom/ca/mdo/CAMobileDevOps;->mTenantID:Ljava/lang/String;

    invoke-virtual {v4, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "On wire Data Size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :try_start_1
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v7}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 320
    .local v1, "baEntity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v4, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    .end local v1    # "baEntity":Lorg/apache/http/entity/ByteArrayEntity;
    :goto_1
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 330
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    sget-boolean v14, Lcom/ca/mdo/SDK;->isSslMode:Z

    if-eqz v14, :cond_1

    .line 333
    :try_start_2
    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getHTTPClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 341
    :cond_1
    :goto_2
    :try_start_3
    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 342
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 343
    .local v10, "statusCode":I
    sget-object v14, Lcom/ca/mdo/Constants;->RESPONSE_HEADER_SESSION_STATUS:Ljava/lang/String;

    invoke-interface {v8, v14}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    .line 344
    .local v11, "statusHeader":Lorg/apache/http/Header;
    const/4 v12, 0x0

    .line 345
    .local v12, "statusHeaderValue":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 346
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 349
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/ca/mdo/SessionUploadInfo;->setSessionAcceptanceHeaderValue(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/ca/mdo/SessionUploadInfo;->setStatusCode(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Status code="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 356
    invoke-virtual/range {p3 .. p3}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v14

    if-lez v14, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v14

    const/16 v15, 0x12c

    if-lt v14, v15, :cond_4

    .line 358
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/ca/mdo/SessionUploadInfo;->setEventCounts(I)V

    .line 361
    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "onWire":[B
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "statusCode":I
    .end local v11    # "statusHeader":Lorg/apache/http/Header;
    .end local v12    # "statusHeaderValue":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 312
    .restart local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "onWire":[B
    :cond_5
    :try_start_4
    sget-object v14, Lcom/ca/mdo/Constants;->RESPONSE_HEADER_SESSION_STATUS:Ljava/lang/String;

    sget-object v15, Lcom/ca/mdo/Constants;->SESSION_STATUS_ACCEPTED:Ljava/lang/String;

    invoke-virtual {v4, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 324
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "onWire":[B
    :catch_0
    move-exception v3

    .line 325
    .local v3, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/ca/mdo/SessionUploadInfo;->setStatusCode(I)V

    goto :goto_3

    .line 321
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "onWire":[B
    :catch_1
    move-exception v3

    .line 322
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 335
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    :catch_2
    move-exception v3

    .line 337
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received Exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 351
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v13

    .line 352
    .local v13, "th":Ljava/lang/Throwable;
    :try_start_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Failed to upload data : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    const/4 v14, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/ca/mdo/SessionUploadInfo;->setStatusCode(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 355
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Status code="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 356
    invoke-virtual/range {p3 .. p3}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v14

    if-lez v14, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v14

    const/16 v15, 0x12c

    if-lt v14, v15, :cond_4

    .line 358
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/ca/mdo/SessionUploadInfo;->setEventCounts(I)V

    goto/16 :goto_3

    .line 355
    .end local v13    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Status code="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 356
    invoke-virtual/range {p3 .. p3}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v15

    if-lez v15, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v15

    const/16 v16, 0x12c

    move/from16 v0, v16

    if-lt v15, v0, :cond_8

    .line 358
    :cond_7
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/ca/mdo/SessionUploadInfo;->setEventCounts(I)V

    :cond_8
    throw v14
.end method

.method private refreshPolicyOrSecurityKey(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "statusCode"    # Ljava/lang/Integer;

    .prologue
    .line 366
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    .line 367
    invoke-static {}, Lcom/ca/mdo/PolicyUtil;->refreshPolicy()V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_0

    .line 369
    :cond_2
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mdo/MDOSecurityManager;->downloadNewSecurityKey()V

    goto :goto_0
.end method

.method private resetRate()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ca/mdo/DataManager;->currentRate:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 51
    return-void
.end method

.method private updateLastAcceptedTime(J)V
    .locals 2
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 119
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->LAST_SESSION_ACCEPTED_TIME:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void
.end method

.method private uploadEvents()Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ca/mdo/SessionUploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v21, "sessionUploadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ca/mdo/SessionUploadInfo;>;"
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 160
    .local v22, "statusCodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/mdo/DataManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/ca/mdo/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/ca/mdo/DatabaseHelper;

    move-result-object v6

    .line 161
    .local v6, "dbHelper":Lcom/ca/mdo/DatabaseHelper;
    invoke-virtual {v6}, Lcom/ca/mdo/DatabaseHelper;->getAllSessionMetadata()Ljava/util/Map;

    move-result-object v9

    .line 169
    .local v9, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ca/mdo/SessionMetaData;>;"
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getCrashedSession()Ljava/lang/String;

    move-result-object v16

    .line 170
    .local v16, "previousCrashedSession":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Previous crashed session is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getCrashedSession()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getSessionManager()Lcom/ca/mdo/SessionManager;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    .line 176
    .local v5, "currentSession":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 177
    .local v18, "sessionId":Ljava/lang/String;
    const-string v24, "[Upload]:"

    sput-object v24, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    .line 178
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% START %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 179
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    .line 180
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Processing Upload for sessionID: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 181
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/ca/mdo/SessionMetaData;

    .line 182
    .local v13, "metaData":Lcom/ca/mdo/SessionMetaData;
    const/4 v15, 0x0

    .line 183
    .local v15, "prevCrashedSession":Z
    move-object v12, v5

    .line 184
    .local v12, "liveSession":Ljava/lang/String;
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 185
    const/4 v15, 0x1

    .line 186
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 187
    const-string v12, "unknown"

    .line 194
    :cond_1
    :goto_1
    sget-object v24, Lcom/ca/mdo/Constants;->SESSION_STATUS_REJECTED:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/ca/mdo/SessionMetaData;->getStatus()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    const/16 v24, 0x2

    .line 195
    invoke-virtual {v13}, Lcom/ca/mdo/SessionMetaData;->getState()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 196
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    if-nez v15, :cond_4

    .line 200
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/ca/mdo/DatabaseHelper;->purgeSession(Ljava/lang/String;)V

    .line 201
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Step 1: Rejected session ,not current and not crashed previously = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 254
    .end local v5    # "currentSession":Ljava/lang/String;
    .end local v6    # "dbHelper":Lcom/ca/mdo/DatabaseHelper;
    .end local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ca/mdo/SessionMetaData;>;"
    .end local v12    # "liveSession":Ljava/lang/String;
    .end local v13    # "metaData":Lcom/ca/mdo/SessionMetaData;
    .end local v15    # "prevCrashedSession":Z
    .end local v16    # "previousCrashedSession":Ljava/lang/String;
    .end local v18    # "sessionId":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 255
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    const/4 v10, 0x0

    .line 262
    .local v10, "isAnyUploadSuccessful":Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 264
    .local v4, "code":Ljava/lang/Integer;
    if-nez v10, :cond_2

    .line 265
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/ca/mdo/DataManager;->isSuccessfulUpload(I)Z

    move-result v10

    .line 267
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ca/mdo/DataManager;->refreshPolicyOrSecurityKey(Ljava/lang/Integer;)V

    goto :goto_2

    .line 191
    .end local v4    # "code":Ljava/lang/Integer;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "isAnyUploadSuccessful":Z
    .restart local v5    # "currentSession":Ljava/lang/String;
    .restart local v6    # "dbHelper":Lcom/ca/mdo/DatabaseHelper;
    .restart local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ca/mdo/SessionMetaData;>;"
    .restart local v12    # "liveSession":Ljava/lang/String;
    .restart local v13    # "metaData":Lcom/ca/mdo/SessionMetaData;
    .restart local v15    # "prevCrashedSession":Z
    .restart local v16    # "previousCrashedSession":Ljava/lang/String;
    .restart local v18    # "sessionId":Ljava/lang/String;
    :cond_3
    move-object v12, v5

    goto :goto_1

    .line 203
    :cond_4
    :try_start_2
    sget-object v24, Lcom/ca/mdo/Constants;->SESSION_STATUS_REJECTED:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/ca/mdo/SessionMetaData;->getStatus()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 204
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 207
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Step 1: Rejected session but current one  , do nothing= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 259
    .end local v5    # "currentSession":Ljava/lang/String;
    .end local v6    # "dbHelper":Lcom/ca/mdo/DatabaseHelper;
    .end local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ca/mdo/SessionMetaData;>;"
    .end local v12    # "liveSession":Ljava/lang/String;
    .end local v13    # "metaData":Lcom/ca/mdo/SessionMetaData;
    .end local v15    # "prevCrashedSession":Z
    .end local v16    # "previousCrashedSession":Ljava/lang/String;
    .end local v18    # "sessionId":Ljava/lang/String;
    :catchall_0
    move-exception v23

    const/4 v10, 0x0

    .line 262
    .restart local v10    # "isAnyUploadSuccessful":Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 264
    .restart local v4    # "code":Ljava/lang/Integer;
    if-nez v10, :cond_5

    .line 265
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/ca/mdo/DataManager;->isSuccessfulUpload(I)Z

    move-result v10

    .line 267
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ca/mdo/DataManager;->refreshPolicyOrSecurityKey(Ljava/lang/Integer;)V

    goto :goto_3

    .line 212
    .end local v4    # "code":Ljava/lang/Integer;
    .end local v10    # "isAnyUploadSuccessful":Z
    .restart local v5    # "currentSession":Ljava/lang/String;
    .restart local v6    # "dbHelper":Lcom/ca/mdo/DatabaseHelper;
    .restart local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ca/mdo/SessionMetaData;>;"
    .restart local v12    # "liveSession":Ljava/lang/String;
    .restart local v13    # "metaData":Lcom/ca/mdo/SessionMetaData;
    .restart local v15    # "prevCrashedSession":Z
    .restart local v16    # "previousCrashedSession":Ljava/lang/String;
    .restart local v18    # "sessionId":Ljava/lang/String;
    :cond_6
    :try_start_3
    invoke-virtual {v13}, Lcom/ca/mdo/SessionMetaData;->getHeader()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/ca/mdo/DatabaseHelper;->getEventsData(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 213
    .local v19, "sessionObject":Lorg/json/JSONObject;
    if-eqz v19, :cond_0

    .line 217
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 218
    .local v17, "sessionArray":Lorg/json/JSONArray;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 221
    const-string v24, "evt"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 222
    .local v8, "eventsCount":I
    new-instance v20, Lcom/ca/mdo/SessionUploadInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/ca/mdo/SessionUploadInfo;-><init>(Ljava/lang/String;I)V

    .line 223
    .local v20, "sessionUploadInfo":Lcom/ca/mdo/SessionUploadInfo;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Is previous crashed session? "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 224
    if-eqz v15, :cond_7

    .line 225
    sget-object v24, Lcom/ca/mdo/Constants;->SESSION_STATUS_ACCEPTED:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ca/mdo/SessionUploadInfo;->setSessionAcceptanceHeaderValue(Ljava/lang/String;)V

    .line 230
    :goto_4
    invoke-virtual {v13}, Lcom/ca/mdo/SessionMetaData;->getState()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    const/4 v11, 0x1

    .line 231
    .local v11, "isCrashedSession":Z
    :goto_5
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 232
    .local v14, "payload":Lorg/json/JSONObject;
    const-string v24, "cv"

    invoke-static {v11}, Lcom/ca/mdo/CAMobileDevOps;->getCVHeader(Z)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v24, "b"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Session Upload Info :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 236
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getBackendUrl()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/ca/mdo/DataManager;->postToWriteServer(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mdo/SessionUploadInfo;)V

    .line 240
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/ca/mdo/DataManager;->afterUploadProcessing(Lcom/ca/mdo/SessionUploadInfo;)V

    .line 245
    invoke-virtual/range {v20 .. v20}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/ca/mdo/DataManager;->UPLOAD_TAG:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% END %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 247
    .end local v8    # "eventsCount":I
    .end local v11    # "isCrashedSession":Z
    .end local v14    # "payload":Lorg/json/JSONObject;
    .end local v17    # "sessionArray":Lorg/json/JSONArray;
    .end local v19    # "sessionObject":Lorg/json/JSONObject;
    .end local v20    # "sessionUploadInfo":Lcom/ca/mdo/SessionUploadInfo;
    :catch_1
    move-exception v7

    .line 248
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception uploading session :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 227
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "eventsCount":I
    .restart local v17    # "sessionArray":Lorg/json/JSONArray;
    .restart local v19    # "sessionObject":Lorg/json/JSONObject;
    .restart local v20    # "sessionUploadInfo":Lcom/ca/mdo/SessionUploadInfo;
    :cond_7
    :try_start_5
    invoke-virtual {v13}, Lcom/ca/mdo/SessionMetaData;->getStatus()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ca/mdo/SessionUploadInfo;->setSessionAcceptanceHeaderValue(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 230
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 259
    .end local v8    # "eventsCount":I
    .end local v12    # "liveSession":Ljava/lang/String;
    .end local v13    # "metaData":Lcom/ca/mdo/SessionMetaData;
    .end local v15    # "prevCrashedSession":Z
    .end local v17    # "sessionArray":Lorg/json/JSONArray;
    .end local v18    # "sessionId":Ljava/lang/String;
    .end local v19    # "sessionObject":Lorg/json/JSONObject;
    .end local v20    # "sessionUploadInfo":Lcom/ca/mdo/SessionUploadInfo;
    :cond_9
    const/4 v10, 0x0

    .line 262
    .restart local v10    # "isAnyUploadSuccessful":Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 264
    .restart local v4    # "code":Ljava/lang/Integer;
    if-nez v10, :cond_a

    .line 265
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/ca/mdo/DataManager;->isSuccessfulUpload(I)Z

    move-result v10

    .line 267
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ca/mdo/DataManager;->refreshPolicyOrSecurityKey(Ljava/lang/Integer;)V

    goto :goto_6

    .line 273
    .end local v4    # "code":Ljava/lang/Integer;
    :cond_b
    if-eqz v10, :cond_c

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/ca/mdo/DataManager;->checkIsDBFull()V

    .line 277
    .end local v5    # "currentSession":Ljava/lang/String;
    .end local v6    # "dbHelper":Lcom/ca/mdo/DatabaseHelper;
    .end local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ca/mdo/SessionMetaData;>;"
    .end local v16    # "previousCrashedSession":Ljava/lang/String;
    :cond_c
    :goto_7
    return-object v21

    .line 273
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_d
    if-eqz v10, :cond_c

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/ca/mdo/DataManager;->checkIsDBFull()V

    goto :goto_7

    .line 273
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_e
    if-eqz v10, :cond_f

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/ca/mdo/DataManager;->checkIsDBFull()V

    .line 276
    :cond_f
    throw v23
.end method


# virtual methods
.method public canApplyDataRules()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ca/mdo/DataManager;->currentRate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget v1, Lcom/ca/mdo/DataManager;->eventCheckRate:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkIsDBFull()V
    .locals 6

    .prologue
    .line 59
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getSDKDiskOccupancy()J

    move-result-wide v0

    .line 60
    .local v0, "sdkOccupancy":J
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ca/mdo/PolicyManager;->getMaxDBSizeInBytes()J

    move-result-wide v2

    .line 61
    .local v2, "totalAllowedDisk":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Current SDK  usage Bytes  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of allowed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 62
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 63
    const-string v4, "Persistent data usage is higher than 100% SDK will be disabled."

    invoke-static {v4}, Lcom/ca/mdo/CALog;->i(Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/ca/mdo/SDK;->setDBFull()V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/ca/mdo/SDK;->setDBAvailable()V

    goto :goto_0
.end method

.method public increment()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ca/mdo/DataManager;->currentRate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 55
    return-void
.end method

.method public processRules()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/ca/mdo/DataManager;->canApplyDataRules()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/ca/mdo/DataManager;->checkIsDBFull()V

    .line 77
    invoke-direct {p0}, Lcom/ca/mdo/DataManager;->resetRate()V

    .line 79
    :cond_0
    return-void
.end method

.method public processUploads()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ca/mdo/SessionUploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "sessionUploadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ca/mdo/SessionUploadInfo;>;"
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getOptOut()Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    :try_start_0
    const-string v2, ""

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 132
    const-string v2, "---------------------- UPLOADING DATA ---------------------"

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 133
    invoke-direct {p0}, Lcom/ca/mdo/DataManager;->uploadEvents()Ljava/util/ArrayList;

    move-result-object v1

    .line 134
    const-string v2, "---------------------- DONE UPLOADING DATA ---------------------"

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 135
    const-string v2, ""

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
