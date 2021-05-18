.class Lcom/ca/mdo/CaMDOHTTPClientImpl;
.super Ljava/lang/Object;
.source "CaMDOHTTPClientImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Ljava/net/HttpURLConnection;)V
    .locals 23
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    const-wide/16 v17, 0x0

    .line 523
    .local v17, "start":J
    const-wide/16 v15, 0x0

    .line 524
    .local v15, "rxBytesStart":J
    const-wide/16 v20, 0x0

    .line 525
    .local v20, "txBytesStart":J
    const/4 v1, 0x0

    .line 527
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    const-string v9, "httpClient.execute(HttpUriRequest, httpContext) replaced"

    invoke-static {v9}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 529
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v22

    .line 530
    .local v22, "uri":Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    sget v9, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v9}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v15

    .line 532
    sget v9, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v9}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v20

    .line 538
    :try_start_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 539
    const-string v9, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 546
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 555
    .end local v22    # "uri":Ljava/net/URL;
    :goto_1
    sget v9, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v9}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    sub-long v5, v9, v15

    .line 556
    .local v5, "inBytes":J
    sget v9, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v9}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v9

    sub-long v7, v9, v20

    .line 557
    .local v7, "outBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v9, v17

    .line 558
    .local v3, "responseTime":J
    const/16 v2, 0x309

    .line 559
    .local v2, "httpStatus":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v14

    .line 560
    .local v14, "networkData":Lcom/ca/mdo/Network;
    invoke-static {v14}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 561
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " responseTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 563
    return-void

    .line 547
    .end local v2    # "httpStatus":I
    .end local v3    # "responseTime":J
    .end local v5    # "inBytes":J
    .end local v7    # "outBytes":J
    .end local v14    # "networkData":Lcom/ca/mdo/Network;
    .restart local v22    # "uri":Ljava/net/URL;
    :catch_0
    move-exception v13

    .line 549
    .local v13, "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception caught in Url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    invoke-static {v1}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 551
    throw v13

    .line 533
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v22    # "uri":Ljava/net/URL;
    :catch_1
    move-exception v19

    .line 534
    .local v19, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v9, "Exception in HttpURLConnection.connect()"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 538
    :try_start_4
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 539
    const-string v9, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 546
    :cond_1
    :goto_2
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 547
    :catch_2
    move-exception v13

    .line 549
    .restart local v13    # "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception caught in Url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    invoke-static {v1}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 551
    throw v13

    .line 536
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v19    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    .line 538
    :try_start_6
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 539
    const-string v10, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 546
    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 551
    throw v9

    .line 547
    :catch_3
    move-exception v13

    .line 549
    .restart local v13    # "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception caught in Url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    invoke-static {v1}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 551
    throw v13

    .line 540
    .end local v13    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v10

    goto :goto_3

    .restart local v19    # "th":Ljava/lang/Throwable;
    :catch_5
    move-exception v9

    goto :goto_2

    .end local v19    # "th":Ljava/lang/Throwable;
    .restart local v22    # "uri":Ljava/net/URL;
    :catch_6
    move-exception v9

    goto/16 :goto_0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "handler"    # Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 25
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "handler"    # Lorg/apache/http/client/ResponseHandler;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    const-wide/16 v20, 0x0

    .line 706
    .local v20, "start":J
    const-wide/16 v18, 0x0

    .line 707
    .local v18, "rxBytesStart":J
    const-wide/16 v23, 0x0

    .line 709
    .local v23, "txBytesStart":J
    const/4 v3, 0x0

    .line 711
    .local v3, "url":Ljava/lang/String;
    :try_start_0
    const-string v4, "DefaultHttpClient.execute(HttpUriRequest) replaced"

    invoke-static {v4}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 713
    sget v4, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v18

    .line 714
    sget v4, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v23

    .line 715
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 721
    :try_start_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 722
    const-string v4, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 730
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v17

    .line 738
    .local v17, "response":Ljava/lang/Object;
    :goto_1
    sget v4, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v11

    sub-long v7, v11, v18

    .line 739
    .local v7, "inBytes":J
    sget v4, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v11

    sub-long v9, v11, v23

    .line 740
    .local v9, "outBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v5, v11, v20

    .line 741
    .local v5, "responseTime":J
    const/16 v4, 0x309

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v3 .. v14}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v16

    .line 742
    .local v16, "network":Lcom/ca/mdo/Network;
    invoke-static/range {v16 .. v16}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 743
    return-object v17

    .line 731
    .end local v5    # "responseTime":J
    .end local v7    # "inBytes":J
    .end local v9    # "outBytes":J
    .end local v16    # "network":Lcom/ca/mdo/Network;
    .end local v17    # "response":Ljava/lang/Object;
    :catch_0
    move-exception v15

    .line 733
    .local v15, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    invoke-static {v3}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 735
    throw v15

    .line 716
    .end local v15    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v22

    .line 717
    .local v22, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v4, "Exception in client.execute(HttpUriRequest)"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 721
    :try_start_4
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 722
    const-string v4, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 730
    :cond_1
    :goto_2
    const/4 v4, 0x0

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v17

    .restart local v17    # "response":Ljava/lang/Object;
    goto :goto_1

    .line 731
    .end local v17    # "response":Ljava/lang/Object;
    :catch_2
    move-exception v15

    .line 733
    .restart local v15    # "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    invoke-static {v3}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 735
    throw v15

    .line 719
    .end local v15    # "ex":Ljava/io/IOException;
    .end local v22    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    .line 721
    :try_start_6
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 722
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 730
    :cond_2
    :goto_3
    const/4 v11, 0x0

    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v17

    .line 735
    .restart local v17    # "response":Ljava/lang/Object;
    throw v4

    .line 731
    .end local v17    # "response":Ljava/lang/Object;
    :catch_3
    move-exception v15

    .line 733
    .restart local v15    # "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    invoke-static {v3}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 735
    throw v15

    .line 724
    .end local v15    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v11

    goto :goto_3

    .restart local v22    # "th":Ljava/lang/Throwable;
    :catch_5
    move-exception v4

    goto :goto_2

    .end local v22    # "th":Ljava/lang/Throwable;
    :catch_6
    move-exception v4

    goto/16 :goto_0
.end method

.method public static execute(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 13
    .param p0, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "responseHandler"    # Lorg/apache/http/client/ResponseHandler;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    const-wide/16 v0, 0x0

    .line 236
    .local v0, "start":J
    const-wide/16 v2, 0x0

    .line 237
    .local v2, "rxBytesStart":J
    const-wide/16 v4, 0x0

    .line 239
    .local v4, "txBytesStart":J
    const/4 v7, 0x0

    .line 241
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v6, "DefaultHttpClient.execute(HttpUriRequest) replaced"

    invoke-static {v6}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 243
    sget v6, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 244
    sget v6, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 245
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 251
    :try_start_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    const-string v6, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v6, v11}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 260
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .line 270
    .local v9, "response":Ljava/lang/Object;
    :goto_1
    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->recordHttpPerformance(JJJLorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 271
    return-object v9

    .line 261
    .end local v9    # "response":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 263
    .local v8, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 265
    throw v8

    .line 246
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 247
    .local v10, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v6, "Exception in client.execute(HttpUriRequest)"

    invoke-static {v6, v10}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    :try_start_4
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 252
    const-string v6, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v6, v11}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 260
    :cond_1
    :goto_2
    :try_start_5
    invoke-virtual/range {p0 .. p4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v9

    .restart local v9    # "response":Ljava/lang/Object;
    goto :goto_1

    .line 261
    .end local v9    # "response":Ljava/lang/Object;
    :catch_2
    move-exception v8

    .line 263
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 265
    throw v8

    .line 249
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 251
    :try_start_6
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 252
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p2, v11, v12}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 260
    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual/range {p0 .. p4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v9

    .line 265
    .restart local v9    # "response":Ljava/lang/Object;
    throw v6

    .line 261
    .end local v9    # "response":Ljava/lang/Object;
    :catch_3
    move-exception v8

    .line 263
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 265
    throw v8

    .line 254
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v11

    goto :goto_3

    .restart local v10    # "th":Ljava/lang/Throwable;
    :catch_5
    move-exception v6

    goto :goto_2

    .end local v10    # "th":Ljava/lang/Throwable;
    :catch_6
    move-exception v6

    goto/16 :goto_0
.end method

.method public static execute(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 14
    .param p0, "client"    # Landroid/net/http/AndroidHttpClient;
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .local v0, "start":J
    const-wide/16 v2, 0x0

    .line 45
    .local v2, "rxBytesStart":J
    const-wide/16 v4, 0x0

    .line 47
    .local v4, "txBytesStart":J
    const/4 v7, 0x0

    .line 49
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v11, "AndroidHttpClient.execute(HttpUriRequest) replaced"

    invoke-static {v11}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 51
    sget v11, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 52
    sget v11, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 53
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    .line 54
    .local v10, "uri":Ljava/net/URI;
    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 60
    :try_start_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 61
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 67
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 75
    .end local v10    # "uri":Ljava/net/URI;
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->recordHttpPerformance(JJJLorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 76
    return-object v6

    .line 68
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v8

    .line 69
    .local v8, "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 71
    throw v8

    .line 55
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v9

    .line 56
    .local v9, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v11, "Exception in client.execute(HttpUriRequest)"

    invoke-static {v11, v9}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    :try_start_4
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 61
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 67
    :cond_1
    :goto_2
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v6

    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_1

    .line 68
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v8

    .line 69
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 71
    throw v8

    .line 58
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v9    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    .line 60
    :try_start_6
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 61
    const-string v12, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v13

    invoke-interface {p1, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 67
    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual {p0, p1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v6

    .line 71
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    throw v11

    .line 68
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v8

    .line 69
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 71
    throw v8

    .line 62
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v12

    goto :goto_3

    .restart local v9    # "th":Ljava/lang/Throwable;
    :catch_5
    move-exception v11

    goto :goto_2

    .end local v9    # "th":Ljava/lang/Throwable;
    .restart local v10    # "uri":Ljava/net/URI;
    :catch_6
    move-exception v11

    goto/16 :goto_0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 13
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "httpHost"    # Lorg/apache/http/HttpHost;
    .param p2, "httpRequest"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    const-wide/16 v0, 0x0

    .line 440
    .local v0, "start":J
    const-wide/16 v2, 0x0

    .line 441
    .local v2, "rxBytesStart":J
    const-wide/16 v4, 0x0

    .line 443
    .local v4, "txBytesStart":J
    const/4 v7, 0x0

    .line 445
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v10, "httpClient.execute(httpHost, httpRequest); replaced"

    invoke-static {v10}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 447
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v7

    .line 448
    sget v10, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v10}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 449
    sget v10, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v10}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 455
    :try_start_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 456
    const-string v10, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v10, v11}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 461
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 470
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->recordHttpPerformance(JJJLorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 471
    return-object v6

    .line 462
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v8

    .line 464
    .local v8, "ex":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 466
    throw v8

    .line 450
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 451
    .local v9, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v10, "Exception in client.execute(HttpPost, HttpRequest)"

    invoke-static {v10, v9}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 455
    :try_start_4
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 456
    const-string v10, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v10, v11}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 461
    :cond_1
    :goto_2
    :try_start_5
    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v6

    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_1

    .line 462
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v8

    .line 464
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 466
    throw v8

    .line 453
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v9    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    .line 455
    :try_start_6
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 456
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p2, v11, v12}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 461
    :cond_2
    :goto_3
    :try_start_7
    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v6

    .line 466
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    throw v10

    .line 462
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v8

    .line 464
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 466
    throw v8

    .line 457
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v11

    goto :goto_3

    .restart local v9    # "th":Ljava/lang/Throwable;
    :catch_5
    move-exception v10

    goto :goto_2

    .end local v9    # "th":Ljava/lang/Throwable;
    :catch_6
    move-exception v10

    goto/16 :goto_0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 13
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "httpHost"    # Lorg/apache/http/HttpHost;
    .param p2, "httpRequest"    # Lorg/apache/http/HttpRequest;
    .param p3, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    const-wide/16 v0, 0x0

    .line 402
    .local v0, "start":J
    const-wide/16 v2, 0x0

    .line 403
    .local v2, "rxBytesStart":J
    const-wide/16 v4, 0x0

    .line 405
    .local v4, "txBytesStart":J
    const/4 v7, 0x0

    .line 407
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v10, "client.execute(HttpPost, HttpRequest, HttpContext)"

    invoke-static {v10}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 409
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v7

    .line 410
    sget v10, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v10}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 411
    sget v10, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v10}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 417
    :try_start_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 418
    const-string v10, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v10, v11}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 423
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface/range {p0 .. p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 432
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->recordHttpPerformance(JJJLorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 433
    return-object v6

    .line 424
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v8

    .line 426
    .local v8, "ex":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 428
    throw v8

    .line 412
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 413
    .local v9, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v10, "Exception in client.execute(HttpPost, HttpRequest, HttpContext)"

    invoke-static {v10, v9}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    :try_start_4
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 418
    const-string v10, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v10, v11}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 423
    :cond_1
    :goto_2
    :try_start_5
    invoke-interface/range {p0 .. p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v6

    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_1

    .line 424
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v8

    .line 426
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 428
    throw v8

    .line 415
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v9    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    .line 417
    :try_start_6
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 418
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p2, v11, v12}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 423
    :cond_2
    :goto_3
    :try_start_7
    invoke-interface/range {p0 .. p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v6

    .line 428
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    throw v10

    .line 424
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v8

    .line 426
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 428
    throw v8

    .line 419
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v11

    goto :goto_3

    .restart local v9    # "th":Ljava/lang/Throwable;
    :catch_5
    move-exception v10

    goto :goto_2

    .end local v9    # "th":Ljava/lang/Throwable;
    :catch_6
    move-exception v10

    goto/16 :goto_0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 14
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    const-wide/16 v0, 0x0

    .line 361
    .local v0, "start":J
    const-wide/16 v2, 0x0

    .line 362
    .local v2, "rxBytesStart":J
    const-wide/16 v4, 0x0

    .line 364
    .local v4, "txBytesStart":J
    const/4 v7, 0x0

    .line 366
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    .line 367
    .local v10, "uri":Ljava/net/URI;
    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    .line 368
    const-string v11, "client.execute(HttpUriRequest) replaced"

    invoke-static {v11}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 370
    sget v11, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 371
    sget v11, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 377
    :try_start_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 378
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 384
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 393
    .end local v10    # "uri":Ljava/net/URI;
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->recordHttpPerformance(JJJLorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 394
    return-object v6

    .line 385
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v8

    .line 387
    .local v8, "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 389
    throw v8

    .line 372
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v9

    .line 373
    .local v9, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v11, "Exception in client.execute(HttpUriRequest)"

    invoke-static {v11, v9}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    :try_start_4
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 378
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 384
    :cond_1
    :goto_2
    :try_start_5
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v6

    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_1

    .line 385
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v8

    .line 387
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 389
    throw v8

    .line 375
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v9    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    .line 377
    :try_start_6
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 378
    const-string v12, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v13

    invoke-interface {p1, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 384
    :cond_2
    :goto_3
    :try_start_7
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v6

    .line 389
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    throw v11

    .line 385
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v8

    .line 387
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 389
    throw v8

    .line 379
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v12

    goto :goto_3

    .restart local v9    # "th":Ljava/lang/Throwable;
    :catch_5
    move-exception v11

    goto :goto_2

    .end local v9    # "th":Ljava/lang/Throwable;
    .restart local v10    # "uri":Ljava/net/URI;
    :catch_6
    move-exception v11

    goto/16 :goto_0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 14
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    const-wide/16 v0, 0x0

    .line 479
    .local v0, "start":J
    const-wide/16 v2, 0x0

    .line 480
    .local v2, "rxBytesStart":J
    const-wide/16 v4, 0x0

    .line 482
    .local v4, "txBytesStart":J
    const/4 v7, 0x0

    .line 484
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v11, "httpClient.execute(HttpUriRequest, httpContext) replaced"

    invoke-static {v11}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 486
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    .line 487
    .local v10, "uri":Ljava/net/URI;
    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    .line 488
    sget v11, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 489
    sget v11, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 495
    :try_start_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 496
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 503
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface/range {p0 .. p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 512
    .end local v10    # "uri":Ljava/net/URI;
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->recordHttpPerformance(JJJLorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 513
    return-object v6

    .line 504
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v8

    .line 506
    .local v8, "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 508
    throw v8

    .line 490
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v9

    .line 491
    .local v9, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v11, "Exception in client.execute(HttpUriRequest, httpContext)"

    invoke-static {v11, v9}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 495
    :try_start_4
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 496
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 503
    :cond_1
    :goto_2
    :try_start_5
    invoke-interface/range {p0 .. p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v6

    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_1

    .line 504
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v8

    .line 506
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 508
    throw v8

    .line 493
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v9    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    .line 495
    :try_start_6
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 496
    const-string v12, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v13

    invoke-interface {p1, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 503
    :cond_2
    :goto_3
    :try_start_7
    invoke-interface/range {p0 .. p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v6

    .line 508
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    throw v11

    .line 504
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v8

    .line 506
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 508
    throw v8

    .line 497
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v12

    goto :goto_3

    .restart local v9    # "th":Ljava/lang/Throwable;
    :catch_5
    move-exception v11

    goto :goto_2

    .end local v9    # "th":Ljava/lang/Throwable;
    .restart local v10    # "uri":Ljava/net/URI;
    :catch_6
    move-exception v11

    goto/16 :goto_0
.end method

.method public static execute(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 14
    .param p0, "client"    # Lorg/apache/http/impl/client/AbstractHttpClient;
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const-wide/16 v0, 0x0

    .line 196
    .local v0, "start":J
    const-wide/16 v2, 0x0

    .line 197
    .local v2, "rxBytesStart":J
    const-wide/16 v4, 0x0

    .line 199
    .local v4, "txBytesStart":J
    const/4 v7, 0x0

    .line 201
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v11, "AbstractHttpClient.execute(HttpUriRequest, HttpContext) replaced"

    invoke-static {v11}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 203
    sget v11, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 204
    sget v11, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 205
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    .line 206
    .local v10, "uri":Ljava/net/URI;
    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 212
    :try_start_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 213
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 220
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 229
    .end local v10    # "uri":Ljava/net/URI;
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->recordHttpPerformance(JJJLorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 230
    return-object v6

    .line 221
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v8

    .line 223
    .local v8, "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 225
    throw v8

    .line 207
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v9

    .line 208
    .local v9, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v11, "Exception in client.execute(HttpUriRequest)"

    invoke-static {v11, v9}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    :try_start_4
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 213
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 220
    :cond_1
    :goto_2
    :try_start_5
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v6

    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_1

    .line 221
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v8

    .line 223
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 225
    throw v8

    .line 210
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v9    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    .line 212
    :try_start_6
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 213
    const-string v12, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v13

    invoke-interface {p1, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 220
    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v6

    .line 225
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    throw v11

    .line 221
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v8

    .line 223
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 225
    throw v8

    .line 214
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v12

    goto :goto_3

    .restart local v9    # "th":Ljava/lang/Throwable;
    :catch_5
    move-exception v11

    goto :goto_2

    .end local v9    # "th":Ljava/lang/Throwable;
    .restart local v10    # "uri":Ljava/net/URI;
    :catch_6
    move-exception v11

    goto/16 :goto_0
.end method

.method public static execute(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 13
    .param p0, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    const-wide/16 v0, 0x0

    .line 278
    .local v0, "start":J
    const-wide/16 v2, 0x0

    .line 279
    .local v2, "rxBytesStart":J
    const-wide/16 v4, 0x0

    .line 281
    .local v4, "txBytesStart":J
    const/4 v7, 0x0

    .line 283
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v10, "DefaultHttpClient.execute(HttpUriRequest) replaced"

    invoke-static {v10}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 285
    sget v10, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v10}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 286
    sget v10, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v10}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 288
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 294
    :try_start_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 295
    const-string v10, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v10, v11}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 303
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 312
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->recordHttpPerformance(JJJLorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 313
    return-object v6

    .line 304
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v8

    .line 306
    .local v8, "ex":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 308
    throw v8

    .line 289
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 290
    .local v9, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v10, "Exception in client.execute(HttpUriRequest)"

    invoke-static {v10, v9}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    :try_start_4
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 295
    const-string v10, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v10, v11}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 303
    :cond_1
    :goto_2
    :try_start_5
    invoke-virtual/range {p0 .. p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v6

    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_1

    .line 304
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v8

    .line 306
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 308
    throw v8

    .line 292
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v9    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    .line 294
    :try_start_6
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 295
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p2, v11, v12}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 303
    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual/range {p0 .. p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v6

    .line 308
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    throw v10

    .line 304
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v8

    .line 306
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception caught in Url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 308
    throw v8

    .line 297
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v11

    goto :goto_3

    .restart local v9    # "th":Ljava/lang/Throwable;
    :catch_5
    move-exception v10

    goto :goto_2

    .end local v9    # "th":Ljava/lang/Throwable;
    :catch_6
    move-exception v10

    goto/16 :goto_0
.end method

.method public static execute(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 14
    .param p0, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    const-wide/16 v0, 0x0

    .line 320
    .local v0, "start":J
    const-wide/16 v2, 0x0

    .line 321
    .local v2, "rxBytesStart":J
    const-wide/16 v4, 0x0

    .line 323
    .local v4, "txBytesStart":J
    const/4 v7, 0x0

    .line 325
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v11, "DefaultHttpClient.execute(HttpUriRequest) replaced"

    invoke-static {v11}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 327
    sget v11, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 328
    sget v11, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 329
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    .line 330
    .local v10, "uri":Ljava/net/URI;
    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 336
    :try_start_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 337
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 344
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 353
    .end local v10    # "uri":Ljava/net/URI;
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->recordHttpPerformance(JJJLorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 354
    return-object v6

    .line 345
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v8

    .line 347
    .local v8, "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 349
    throw v8

    .line 331
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v9

    .line 332
    .local v9, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v11, "Exception in client.execute(HttpUriRequest)"

    invoke-static {v11, v9}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 336
    :try_start_4
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 337
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 344
    :cond_1
    :goto_2
    :try_start_5
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v6

    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_1

    .line 345
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v8

    .line 347
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 349
    throw v8

    .line 334
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v9    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    .line 336
    :try_start_6
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 337
    const-string v12, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v13

    invoke-interface {p1, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 344
    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v6

    .line 349
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    throw v11

    .line 345
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v8

    .line 347
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 349
    throw v8

    .line 338
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v12

    goto :goto_3

    .restart local v9    # "th":Ljava/lang/Throwable;
    :catch_5
    move-exception v11

    goto :goto_2

    .end local v9    # "th":Ljava/lang/Throwable;
    .restart local v10    # "uri":Ljava/net/URI;
    :catch_6
    move-exception v11

    goto/16 :goto_0
.end method

.method public static execute(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 14
    .param p0, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    .line 89
    .local v0, "start":J
    const-wide/16 v2, 0x0

    .line 90
    .local v2, "rxBytesStart":J
    const-wide/16 v4, 0x0

    .line 92
    .local v4, "txBytesStart":J
    const/4 v7, 0x0

    .line 94
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v11, "AbstractHttpClient.execute(HttpUriRequest, HttpContext) replaced"

    invoke-static {v11}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    sget v11, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 97
    sget v11, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v11}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 98
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    .line 99
    .local v10, "uri":Ljava/net/URI;
    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 105
    :try_start_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 106
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 113
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 122
    .end local v10    # "uri":Ljava/net/URI;
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->recordHttpPerformance(JJJLorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 123
    return-object v6

    .line 114
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v8

    .line 116
    .local v8, "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 118
    throw v8

    .line 100
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v9

    .line 101
    .local v9, "th":Ljava/lang/Throwable;
    :try_start_3
    const-string v11, "Exception in client.execute(HttpUriRequest)"

    invoke-static {v11, v9}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :try_start_4
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 106
    const-string v11, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 113
    :cond_1
    :goto_2
    :try_start_5
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v6

    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_1

    .line 114
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v8

    .line 116
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 118
    throw v8

    .line 103
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v9    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    .line 105
    :try_start_6
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 106
    const-string v12, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v13

    invoke-interface {p1, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 113
    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v6

    .line 118
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    throw v11

    .line 114
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v8

    .line 116
    .restart local v8    # "ex":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught in Url:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-static {v7}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 118
    throw v8

    .line 107
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v12

    goto :goto_3

    .restart local v9    # "th":Ljava/lang/Throwable;
    :catch_5
    move-exception v11

    goto :goto_2

    .end local v9    # "th":Ljava/lang/Throwable;
    .restart local v10    # "uri":Ljava/net/URI;
    :catch_6
    move-exception v11

    goto/16 :goto_0
.end method

.method private static getAPMCookieFromURL(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, "encodedAPMAttributes":Ljava/lang/String;
    const-string v7, "Set-Cookie"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    .line 143
    .local v6, "headers":[Lorg/apache/http/Header;
    const/4 v3, 0x0

    .line 144
    .local v3, "found":Z
    array-length v8, v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v4, v6, v7

    .line 145
    .local v4, "h":Lorg/apache/http/Header;
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "headerValue":Ljava/lang/String;
    invoke-static {v5}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 148
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "x-apm-brtm-response-bt"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 150
    const/4 v3, 0x1

    .line 154
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_1
    if-eqz v3, :cond_3

    .line 159
    .end local v1    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v4    # "h":Lorg/apache/http/Header;
    .end local v5    # "headerValue":Ljava/lang/String;
    :cond_2
    return-object v2

    .line 144
    .restart local v1    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .restart local v4    # "h":Lorg/apache/http/Header;
    .restart local v5    # "headerValue":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private static getAttributesFromAPMCookie(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p0, "encodedCookieValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 164
    const/4 v5, 0x0

    .line 170
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 171
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v5    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    const-string v8, "UTF-8"

    invoke-static {p0, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "decodedCookieValues":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "decodeList":[Ljava/lang/String;
    array-length v8, v0

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v1, v0, v7

    .line 175
    .local v1, "decoded":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "keyVal":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    const-string v10, "CorBrowsGUID"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 177
    const/4 v9, 0x1

    aget-object v9, v4, v9

    if-eqz v9, :cond_0

    .line 178
    const-string v9, "corrId"

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "decodeList":[Ljava/lang/String;
    .end local v1    # "decoded":Ljava/lang/String;
    .end local v2    # "decodedCookieValues":Ljava/lang/String;
    .end local v4    # "keyVal":[Ljava/lang/String;
    .end local v6    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 185
    .local v3, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v7, "Cannot decode Apm Cookie"

    invoke-static {v7}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 188
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v5

    .line 184
    .end local v5    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .end local v5    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "decodeList":[Ljava/lang/String;
    .restart local v2    # "decodedCookieValues":Ljava/lang/String;
    .restart local v6    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object v5, v6

    .end local v6    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public static getResponseCode(Ljava/net/HttpURLConnection;)I
    .locals 23
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    const-wide/16 v17, 0x0

    .line 594
    .local v17, "start":J
    const-wide/16 v15, 0x0

    .line 595
    .local v15, "rxBytesStart":J
    const-wide/16 v20, 0x0

    .line 596
    .local v20, "txBytesStart":J
    const/4 v1, 0x0

    .line 597
    .local v1, "url":Ljava/lang/String;
    const/4 v2, -0x1

    .line 599
    .local v2, "resp":I
    :try_start_0
    const-string v9, "HttpURLConnection.getResponseCode() replaced"

    invoke-static {v9}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 601
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v22

    .line 602
    .local v22, "uri":Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    sget v9, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v9}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v15

    .line 604
    sget v9, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v9}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v20

    .line 610
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 618
    .end local v22    # "uri":Ljava/net/URL;
    :goto_0
    sget v9, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v9}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    sub-long v5, v9, v15

    .line 619
    .local v5, "inBytes":J
    sget v9, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v9}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v9

    sub-long v7, v9, v20

    .line 620
    .local v7, "outBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v9, v17

    .line 622
    .local v3, "responseTime":J
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v14

    .line 623
    .local v14, "network":Lcom/ca/mdo/Network;
    invoke-static {v14}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 624
    return v2

    .line 611
    .end local v3    # "responseTime":J
    .end local v5    # "inBytes":J
    .end local v7    # "outBytes":J
    .end local v14    # "network":Lcom/ca/mdo/Network;
    .restart local v22    # "uri":Ljava/net/URL;
    :catch_0
    move-exception v13

    .line 613
    .local v13, "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception caught in Url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    invoke-static {v1}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 615
    throw v13

    .line 605
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v22    # "uri":Ljava/net/URL;
    :catch_1
    move-exception v19

    .line 606
    .local v19, "th":Ljava/lang/Throwable;
    :try_start_2
    const-string v9, "Exception in HttpURLConnection.getResponseCode()"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 610
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    goto :goto_0

    .line 611
    :catch_2
    move-exception v13

    .line 613
    .restart local v13    # "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception caught in Url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    invoke-static {v1}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 615
    throw v13

    .line 608
    .end local v13    # "ex":Ljava/io/IOException;
    .end local v19    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    .line 610
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v2

    .line 615
    throw v9

    .line 611
    :catch_3
    move-exception v13

    .line 613
    .restart local v13    # "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception caught in Url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    invoke-static {v1}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 615
    throw v13
.end method

.method public static loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 22
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 631
    const-wide/16 v18, 0x0

    .line 632
    .local v18, "start":J
    const-wide/16 v16, 0x0

    .line 633
    .local v16, "rxBytesStart":J
    const-wide/16 v20, 0x0

    .line 636
    .local v20, "txBytesStart":J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 637
    sget v2, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v16

    .line 638
    sget v2, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v20

    .line 642
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 644
    .local v14, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v14, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 652
    .end local v14    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    :try_start_1
    sget v2, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v10

    sub-long v6, v10, v16

    .line 653
    .local v6, "inBytes":J
    sget v2, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    sub-long v8, v10, v20

    .line 654
    .local v8, "outBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v18

    .line 655
    .local v4, "responseTime":J
    const/16 v3, 0x309

    .line 656
    .local v3, "httpStatus":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v13}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v15

    .line 657
    .local v15, "network":Lcom/ca/mdo/Network;
    invoke-static {v15}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URL: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " responseTime: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " status: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 662
    .end local v3    # "httpStatus":I
    .end local v4    # "responseTime":J
    .end local v6    # "inBytes":J
    .end local v8    # "outBytes":J
    .end local v15    # "network":Lcom/ca/mdo/Network;
    :goto_1
    return-void

    .line 647
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :catch_0
    move-exception v2

    .line 642
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 643
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 644
    .restart local v14    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v14, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 647
    .end local v14    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 643
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 644
    .restart local v14    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v14, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 647
    .end local v14    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    throw v2

    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 659
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static loadUrl(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 22
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/util/Map;

    .prologue
    .line 666
    const-wide/16 v17, 0x0

    .line 667
    .local v17, "start":J
    const-wide/16 v15, 0x0

    .line 668
    .local v15, "rxBytesStart":J
    const-wide/16 v19, 0x0

    .line 671
    .local v19, "txBytesStart":J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 672
    sget v1, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v15

    .line 673
    sget v1, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v19

    .line 677
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    if-nez p2, :cond_0

    .line 679
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 680
    .local v13, "cahdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 p2, v13

    .line 682
    .end local v13    # "cahdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v1, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_1
    invoke-virtual/range {p0 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 687
    :try_start_1
    sget v1, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    sub-long v5, v9, v15

    .line 688
    .local v5, "inBytes":J
    sget v1, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v9

    sub-long v7, v9, v19

    .line 689
    .local v7, "outBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v9, v17

    .line 690
    .local v3, "responseTime":J
    const/16 v2, 0x309

    .line 691
    .local v2, "httpStatus":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v12}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v14

    .line 692
    .local v14, "network":Lcom/ca/mdo/Network;
    invoke-static {v14}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URL: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " responseTime: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " status: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 698
    .end local v2    # "httpStatus":I
    .end local v3    # "responseTime":J
    .end local v5    # "inBytes":J
    .end local v7    # "outBytes":J
    .end local v14    # "network":Lcom/ca/mdo/Network;
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v1

    .line 677
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 678
    if-nez p2, :cond_2

    .line 679
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 680
    .restart local v13    # "cahdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 p2, v13

    .line 682
    .end local v13    # "cahdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v1, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_3
    invoke-virtual/range {p0 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 687
    :try_start_2
    sget v1, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    sub-long v5, v9, v15

    .line 688
    .restart local v5    # "inBytes":J
    sget v1, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v9

    sub-long v7, v9, v19

    .line 689
    .restart local v7    # "outBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v9, v17

    .line 690
    .restart local v3    # "responseTime":J
    const/16 v2, 0x309

    .line 691
    .restart local v2    # "httpStatus":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v12}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v14

    .line 692
    .restart local v14    # "network":Lcom/ca/mdo/Network;
    invoke-static {v14}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URL: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " responseTime: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " status: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 694
    .end local v2    # "httpStatus":I
    .end local v3    # "responseTime":J
    .end local v5    # "inBytes":J
    .end local v7    # "outBytes":J
    .end local v14    # "network":Lcom/ca/mdo/Network;
    :catch_1
    move-exception v1

    goto :goto_0

    .line 677
    :catchall_0
    move-exception v1

    move-object/from16 v21, v1

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 678
    if-nez p2, :cond_4

    .line 679
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 680
    .restart local v13    # "cahdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 p2, v13

    .line 682
    .end local v13    # "cahdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string v1, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_5
    invoke-virtual/range {p0 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 687
    :try_start_3
    sget v1, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    sub-long v5, v9, v15

    .line 688
    .restart local v5    # "inBytes":J
    sget v1, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v9

    sub-long v7, v9, v19

    .line 689
    .restart local v7    # "outBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v9, v17

    .line 690
    .restart local v3    # "responseTime":J
    const/16 v2, 0x309

    .line 691
    .restart local v2    # "httpStatus":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v12}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v14

    .line 692
    .restart local v14    # "network":Lcom/ca/mdo/Network;
    invoke-static {v14}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URL: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " responseTime: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " status: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 696
    .end local v2    # "httpStatus":I
    .end local v3    # "responseTime":J
    .end local v5    # "inBytes":J
    .end local v7    # "outBytes":J
    .end local v14    # "network":Lcom/ca/mdo/Network;
    :goto_1
    throw v21

    .line 694
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto/16 :goto_0
.end method

.method public static logNetworkException(Ljava/lang/String;)V
    .locals 13
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    .line 81
    const/16 v1, 0x309

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-object v9, v8

    move-object v10, v8

    move-object v11, v8

    invoke-static/range {v0 .. v11}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v12

    .line 82
    .local v12, "networkData":Lcom/ca/mdo/Network;
    invoke-static {v12}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 83
    return-void
.end method

.method public static openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 5
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "conn":Ljava/net/URLConnection;
    if-eqz p0, :cond_1

    .line 569
    const/4 v2, 0x0

    .line 571
    .local v2, "urlString":Ljava/lang/String;
    :try_start_0
    const-string v3, "URL.openConnection replaced"

    invoke-static {v3}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 574
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 575
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 576
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 577
    const-string v3, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v2    # "urlString":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 580
    .restart local v2    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 582
    .local v1, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught in Url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    invoke-static {v2}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->logNetworkException(Ljava/lang/String;)V

    .line 584
    throw v1
.end method

.method private static recordHttpPerformance(JJJLorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 16
    .param p0, "start"    # J
    .param p2, "rxBytesStart"    # J
    .param p4, "txBytesStart"    # J
    .param p6, "response"    # Lorg/apache/http/HttpResponse;
    .param p7, "url"    # Ljava/lang/String;

    .prologue
    .line 128
    sget v2, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v12

    sub-long v6, v12, p2

    .line 129
    .local v6, "inBytes":J
    sget v2, Lcom/ca/mdo/CaMDOHTTPClientImpl;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v12

    sub-long v8, v12, p4

    .line 130
    .local v8, "outBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v4, v12, p0

    .line 131
    .local v4, "responseTime":J
    invoke-interface/range {p6 .. p6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 132
    .local v3, "httpStatus":I
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->getAPMCookieFromURL(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v14

    .line 133
    .local v14, "apmAttributes":Ljava/lang/String;
    invoke-static {v14}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->getAttributesFromAPMCookie(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 134
    .local v11, "attributesForAPMCorrelation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p7

    invoke-static/range {v2 .. v13}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v15

    .line 135
    .local v15, "network":Lcom/ca/mdo/Network;
    invoke-static {v15}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URL: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " responseTime: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " status: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 137
    return-void
.end method
