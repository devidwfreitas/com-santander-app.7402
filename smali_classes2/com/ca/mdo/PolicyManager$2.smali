.class Lcom/ca/mdo/PolicyManager$2;
.super Ljava/lang/Object;
.source "PolicyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mdo/PolicyManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ca/mdo/PolicyManager;


# direct methods
.method constructor <init>(Lcom/ca/mdo/PolicyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ca/mdo/PolicyManager;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/ca/mdo/PolicyManager$2;->this$0:Lcom/ca/mdo/PolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 305
    const/4 v14, 0x0

    .line 307
    .local v14, "isRefreshFailed":Z
    const v12, 0xea60

    .line 308
    .local v12, "connectionTimeout":I
    :try_start_0
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 309
    .local v16, "myHttpParams":Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 310
    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 313
    sget-boolean v2, Lcom/ca/mdo/SDK;->isSslMode:Z

    if-eqz v2, :cond_3

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MDOSSLPinningMode is set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getmSSLPinningMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cert Byte[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getCert()[B

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 319
    invoke-static {}, Lcom/ca/mdo/MDOSSLPinning;->getHTTPClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v11

    .line 326
    .local v11, "client":Lorg/apache/http/client/HttpClient;
    :goto_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mdo/AppDeviceData;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    .line 327
    .local v9, "appVersion":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ca/mdo/PolicyManager$2;->this$0:Lcom/ca/mdo/PolicyManager;

    invoke-static {v2}, Lcom/ca/mdo/PolicyManager;->access$100(Lcom/ca/mdo/PolicyManager;)Ljava/lang/String;

    move-result-object v21

    .line 328
    .local v21, "urlWithAppVersion":Ljava/lang/String;
    const-string v10, "?"

    .line 329
    .local v10, "appendChar":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ca/mdo/PolicyManager$2;->this$0:Lcom/ca/mdo/PolicyManager;

    invoke-static {v2}, Lcom/ca/mdo/PolicyManager;->access$100(Lcom/ca/mdo/PolicyManager;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ca/mdo/PolicyManager$2;->this$0:Lcom/ca/mdo/PolicyManager;

    invoke-static {v2}, Lcom/ca/mdo/PolicyManager;->access$100(Lcom/ca/mdo/PolicyManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    const-string v10, "&"

    .line 332
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ca/mdo/PolicyManager$2;->this$0:Lcom/ca/mdo/PolicyManager;

    invoke-static {v3}, Lcom/ca/mdo/PolicyManager;->access$100(Lcom/ca/mdo/PolicyManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "app_version_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 334
    const-string v2, "UTF-8"

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 335
    new-instance v20, Ljava/net/URL;

    invoke-direct/range {v20 .. v21}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 336
    .local v20, "url":Ljava/net/URL;
    new-instance v1, Ljava/net/URI;

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v20

    .line 339
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 340
    .local v13, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting data from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 341
    invoke-interface {v11, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 343
    .local v18, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5

    .line 344
    const-string v2, "Successfully obtained policy"

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 345
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 346
    .local v17, "out":Ljava/io/ByteArrayOutputStream;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 347
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v15

    .line 348
    .local v15, "jsonData":Ljava/lang/String;
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ca/mdo/PolicyManager$2;->this$0:Lcom/ca/mdo/PolicyManager;

    invoke-static {v2, v15}, Lcom/ca/mdo/PolicyManager;->access$200(Lcom/ca/mdo/PolicyManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ca/mdo/PolicyManager$2;->this$0:Lcom/ca/mdo/PolicyManager;

    invoke-static {v2, v15}, Lcom/ca/mdo/PolicyManager;->access$300(Lcom/ca/mdo/PolicyManager;Ljava/lang/String;)V

    .line 351
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v1    # "uri":Ljava/net/URI;
    .end local v9    # "appVersion":Ljava/lang/String;
    .end local v10    # "appendChar":Ljava/lang/String;
    .end local v11    # "client":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v15    # "jsonData":Ljava/lang/String;
    .end local v16    # "myHttpParams":Lorg/apache/http/params/HttpParams;
    .end local v17    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "urlWithAppVersion":Ljava/lang/String;
    :goto_2
    if-eqz v14, :cond_2

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ca/mdo/PolicyManager$2;->this$0:Lcom/ca/mdo/PolicyManager;

    invoke-static {v2}, Lcom/ca/mdo/PolicyManager;->access$400(Lcom/ca/mdo/PolicyManager;)Z

    .line 365
    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/ca/mdo/PolicyUtil;->refreshPolicy:Z

    .line 366
    return-void

    .line 323
    .restart local v16    # "myHttpParams":Lorg/apache/http/params/HttpParams;
    :cond_3
    :try_start_1
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v11    # "client":Lorg/apache/http/client/HttpClient;
    goto/16 :goto_0

    .line 326
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ca/mdo/PolicyManager$2;->this$0:Lcom/ca/mdo/PolicyManager;

    invoke-static {v2}, Lcom/ca/mdo/PolicyManager;->access$000(Lcom/ca/mdo/PolicyManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 353
    .restart local v1    # "uri":Ljava/net/URI;
    .restart local v9    # "appVersion":Ljava/lang/String;
    .restart local v10    # "appendChar":Ljava/lang/String;
    .restart local v13    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v20    # "url":Ljava/net/URL;
    .restart local v21    # "urlWithAppVersion":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not able to get policy, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->w(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 357
    .end local v1    # "uri":Ljava/net/URI;
    .end local v9    # "appVersion":Ljava/lang/String;
    .end local v10    # "appendChar":Ljava/lang/String;
    .end local v11    # "client":Lorg/apache/http/client/HttpClient;
    .end local v13    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "myHttpParams":Lorg/apache/http/params/HttpParams;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "urlWithAppVersion":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 358
    .local v19, "th":Ljava/lang/Throwable;
    const/4 v14, 0x1

    .line 359
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
