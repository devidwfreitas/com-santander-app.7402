.class public Lcom/ca/mdo/AnalyticsAgentImpl;
.super Lcom/ca/mdo/DefaultAnalyticsAgentImpl;
.source "AnalyticsAgentImpl.java"


# instance fields
.field private initialized:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ca/mdo/AnalyticsAgentImpl;->initialized:Z

    .line 60
    invoke-virtual {p0, p1}, Lcom/ca/mdo/AnalyticsAgentImpl;->register(Landroid/app/Application;)V

    .line 61
    return-void
.end method


# virtual methods
.method public addLifeCycles()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/ca/mdo/AnalyticsAgentImpl;->application:Landroid/app/Application;

    invoke-static {v2}, Lcom/ca/mdo/AppMode;->init(Landroid/app/Application;)Lcom/ca/mdo/AppMode;

    move-result-object v1

    .line 79
    .local v1, "lifecycleCallbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    invoke-virtual {p0, v1}, Lcom/ca/mdo/AnalyticsAgentImpl;->register(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "lifecycleCallbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent addLifeCycles() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addToApmHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerString"    # Ljava/lang/String;

    .prologue
    .line 863
    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->addToAPMHeaders(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public connectOnHttpURLConnection(Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->connect(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 299
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 296
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 297
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent connectOnHttpURLConnection() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchTouchEventOfActivity(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 485
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CaMDOActivityImpl;->dispatchTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent dispatchTouchEventOfActivity() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enterPrivateZone()V
    .locals 3

    .prologue
    .line 707
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->enterPrivateZone()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent enterPrivateZone() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public executeOnHttpClient(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "client"    # Landroid/net/http/AndroidHttpClient;
    .param p2, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 141
    :goto_0
    return-object v2

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 138
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent executeOnHttpClient() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 141
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public executeOnHttpClient(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "httpHost"    # Lorg/apache/http/HttpHost;
    .param p3, "httpRequest"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 232
    :goto_0
    return-object v2

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 229
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 230
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent executeOnHttpClient() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 232
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public executeOnHttpClient(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "httpHost"    # Lorg/apache/http/HttpHost;
    .param p3, "httpRequest"    # Lorg/apache/http/HttpRequest;
    .param p4, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 219
    :goto_0
    return-object v2

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 216
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 217
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent executeOnHttpClient() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 219
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public executeOnHttpClient(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 206
    :goto_0
    return-object v2

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 203
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 204
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent executeOnHttpClient() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public executeOnHttpClient(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 246
    :goto_0
    return-object v2

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 243
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 244
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent executeOnHttpClient() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 246
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public executeOnHttpClient(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "client"    # Lorg/apache/http/impl/client/AbstractHttpClient;
    .param p2, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 154
    :goto_0
    return-object v2

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 151
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent executeOnHttpClient() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 154
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public executeOnHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 168
    :goto_0
    return-object v2

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 165
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 166
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent executeOnHttpClient() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 168
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public executeOnHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 4
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 272
    :goto_0
    return-object v2

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 269
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 270
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent executeOnHttpClient() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 272
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public executeOnHttpClientWithHandler(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 4
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "handler"    # Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 258
    :goto_0
    return-object v2

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 255
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 256
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent executeOnHttpClientWithHandler() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 258
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public executeOnHttpClientWithHandler(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "handler"    # Lorg/apache/http/client/ResponseHandler;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 286
    :goto_0
    return-object v2

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 283
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 284
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent executeOnHttpClientWithHandler() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 286
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public executeOnHttpClientWithHandler(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 5
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "handler"    # Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 186
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, p2, p3, p4, v3}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 192
    :goto_0
    return-object v2

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 189
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in Agent executeOnHttpClientWithHandler() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public executeOnHttpClientWithHandler(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "handler"    # Lorg/apache/http/client/ResponseHandler;
    .param p5, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->execute(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 180
    :goto_0
    return-object v2

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 177
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 178
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Agent executeOnHttpClientWithHandler() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 180
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public exitPrivateZone()V
    .locals 3

    .prologue
    .line 717
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->exitPrivateZone()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent exitPrivateZone() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAPMHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 868
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 869
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    return-object v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 853
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntervalOnActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)J
    .locals 3
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;

    .prologue
    .line 494
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CaMDOActivityImpl;->getInterval(Lcom/ca/android/app/ScreenLoadTimeMeter;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 498
    :goto_0
    return-wide v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent getIntervalOnActivity() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 498
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getResponseCodeOnHttpURLConnection(Ljava/net/HttpURLConnection;)I
    .locals 3
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->getResponseCode(Ljava/net/HttpURLConnection;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 320
    :goto_0
    return v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent getResponseCodeOnHttpURLConnection() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 320
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ignoreView(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewName"    # Ljava/lang/String;

    .prologue
    .line 875
    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->addToIngoredList(Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public ignoreViews(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, "viewNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->addToIngoredList(Ljava/util/HashSet;)V

    .line 881
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/ca/mdo/AnalyticsAgentImpl;->addLifeCycles()V

    .line 67
    iget-object v1, p0, Lcom/ca/mdo/AnalyticsAgentImpl;->application:Landroid/app/Application;

    invoke-static {v1}, Lcom/ca/mdo/CAMobileDevOps;->initialize(Landroid/app/Application;)V

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ca/mdo/AnalyticsAgentImpl;->initialized:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent init() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isInPrivateZone()Z
    .locals 3

    .prologue
    .line 727
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isInPrivateZone()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 731
    :goto_0
    return v1

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent isInPrivateZone() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 731
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/ca/mdo/AnalyticsAgentImpl;->initialized:Z

    return v0
.end method

.method public isScreenshotPolicyEnabled()Z
    .locals 3

    .prologue
    .line 696
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isScreenshotPolicyEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 700
    :goto_0
    return v1

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent isScreenshotPolicyEnabled() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 700
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadUrlOnWebView(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 335
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CaMDOWebViewImpl;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent loadUrlOnWebView() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadUrlOnWebView(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p3, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CaMDOWebViewImpl;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent loadUrlOnWebView() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logNetworkEvent(Ljava/lang/String;IIII)V
    .locals 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "responseTime"    # I
    .param p4, "inBytes"    # I
    .param p5, "outBytes"    # I

    .prologue
    .line 793
    move/from16 v0, p3

    int-to-long v3, v0

    move/from16 v0, p4

    int-to-long v5, v0

    move/from16 v0, p5

    int-to-long v7, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    :try_start_0
    invoke-static/range {v1 .. v12}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v14

    .line 794
    .local v14, "networkData":Lcom/ca/mdo/Network;
    invoke-static {v14}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    .end local v14    # "networkData":Lcom/ca/mdo/Network;
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v13

    .line 796
    .local v13, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent logNetworkEvent() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logNetworkEvent(Ljava/lang/String;IIIILcom/ca/integration/CaMDOCallback;)V
    .locals 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "responseTime"    # I
    .param p4, "inBytes"    # I
    .param p5, "outBytes"    # I
    .param p6, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 803
    move/from16 v0, p3

    int-to-long v3, v0

    move/from16 v0, p4

    int-to-long v5, v0

    move/from16 v0, p5

    int-to-long v7, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v9, p6

    :try_start_0
    invoke-static/range {v1 .. v12}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v14

    .line 804
    .local v14, "networkData":Lcom/ca/mdo/Network;
    invoke-static {v14}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    .end local v14    # "networkData":Lcom/ca/mdo/Network;
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v13

    .line 806
    .local v13, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent logNetworkEvent() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logNumericMetric(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;
    .param p4, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ca/integration/CaMDOCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 831
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/ca/mdo/CAMobileDevOps;->logNumericMetric(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent uploadEvent() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logTextMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ca/integration/CaMDOCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 840
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/ca/mdo/CAMobileDevOps;->logTextMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent uploadEvent() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChangedOfApplication(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 590
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CaMDOApplicationImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onConfigurationChangedOfApplication() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    .locals 3
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 422
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CaMDOActivityImpl;->onCreate(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onCreateOfActivity() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOfApplication(Landroid/app/Application;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 551
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CaMDOApplicationImpl;->onCreate(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onCreateOfApplication() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLoadResourceOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Lcom/ca/android/app/CaMDOWebViewClient;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 364
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->onLoadResource(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onLoadResourceOfWebViewClient() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLowMemoryOfApplication()V
    .locals 3

    .prologue
    .line 560
    :try_start_0
    const-string v1, "Low memory application called"

    invoke-static {v1}, Lcom/ca/mdo/CALog;->i(Ljava/lang/String;)I

    .line 561
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->onLowMemoryOfApplication()V

    .line 562
    invoke-static {}, Lcom/ca/mdo/CaMDOApplicationImpl;->onLowMemory()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_0
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onLowMemoryOfApplication() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPageFinishedOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Lcom/ca/android/app/CaMDOWebViewClient;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 373
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->onPageFinished(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onPageFinishedOfWebViewClient() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPageStartedOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "client"    # Lcom/ca/android/app/CaMDOWebViewClient;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 382
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->onPageStarted(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onPageStartedOfWebViewClient() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPauseOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    .locals 3
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 458
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CaMDOActivityImpl;->onPause(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onPauseOfActivity() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPauseOfFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Fragment;

    .prologue
    .line 513
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CaMDOFragmentImpl;->onPause(Landroid/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onPauseOfFragment() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPauseOffragment(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 532
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CAMobileDevOps;->fragmentPause(Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onPauseOfFragment() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReceivedErrorOfWebViewClient(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Lcom/ca/android/app/CaMDOWebViewClient;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 392
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->onReceivedError(Lcom/ca/android/app/CaMDOWebViewClient;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onReceivedErrorOfWebViewClient() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRestartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    .locals 3
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 467
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CaMDOActivityImpl;->onRestart(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onRestartOfActivity() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResumeOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    .locals 3
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 431
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CaMDOActivityImpl;->onResume(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onResumeOfActivity() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResumeOfFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Fragment;

    .prologue
    .line 504
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CaMDOFragmentImpl;->onResume(Landroid/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onResumeOfFragment() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResumeOffragment(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 522
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CAMobileDevOps;->fragmentResume(Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onResumeOfFragment() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V
    .locals 3
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;

    .prologue
    .line 449
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CaMDOActivityImpl;->onStart(Lcom/ca/android/app/ScreenLoadTimeMeter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onStartOfActivity() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStopOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V
    .locals 3
    .param p1, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;

    .prologue
    .line 440
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CaMDOActivityImpl;->onStop(Lcom/ca/android/app/ScreenLoadTimeMeter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onStopOfActivity() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTerminateOfApplication()V
    .locals 3

    .prologue
    .line 572
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/CaMDOApplicationImpl;->onTerminate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onTerminateOfApplication() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTrimMemoryOfApplication(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 581
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CaMDOApplicationImpl;->onTrimMemory(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onTrimMemoryOfApplication() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onWindowFocusChangedOfActivity(Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 476
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CaMDOActivityImpl;->onWindowFocusChanged(Landroid/app/Activity;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent onWindowFocusChangedOfActivity() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public openConnectionOnURLConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CaMDOHTTPClientImpl;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 309
    :goto_0
    return-object v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent openConnectionOnURLConnection() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 89
    :try_start_0
    invoke-super {p0}, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;->pause()V

    .line 91
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "acra.disable"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sdkDisabledEvent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent pause() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public postUrlOnWebView(Landroid/webkit/WebView;Ljava/lang/String;[B)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "postData"    # [B

    .prologue
    .line 344
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CaMDOWebViewImpl;->postUrl(Landroid/webkit/WebView;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent postUrlOnWebView() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerAppFeedBackOnIntegration(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "messageReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 669
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->registerAppFeedBack(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent registerAppFeedBackOnIntegration() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 103
    :try_start_0
    invoke-super {p0}, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;->resume()V

    .line 105
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "acra.disable"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getErrorReporter()Lcom/ca/org/acra/ErrorReporter;

    move-result-object v4

    new-instance v5, Lcom/ca/mdo/DevOpsReporterSender;

    invoke-direct {v5}, Lcom/ca/mdo/DevOpsReporterSender;-><init>()V

    invoke-virtual {v4, v5}, Lcom/ca/org/acra/ErrorReporter;->setReportSender(Lcom/ca/org/acra/sender/ReportSender;)V

    .line 110
    const/4 v4, 0x1

    sput-boolean v4, Lcom/ca/mdo/SDK;->firstLaunch:Z

    .line 111
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .local v2, "evntData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "SDK_GOT_ENABLED"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 114
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v3, "message":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "jsonObj"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v4, "currentTimeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/ca/mdo/CAMobileDevOps;->sendSessionStart(ILjava/util/Map;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .end local v2    # "evntData":Lorg/json/JSONObject;
    .end local v3    # "message":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 119
    .restart local v2    # "evntData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v4, "Exception while building event-data for session start"

    invoke-static {v4}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 122
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "evntData":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 123
    .local v1, "error":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in Agent resume() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCustomerFeedbackOnIntegration(Ljava/lang/String;)V
    .locals 3
    .param p1, "feedback"    # Ljava/lang/String;

    .prologue
    .line 678
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->setCustomerFeedback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent setCustomerFeedbackOnIntegration() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .locals 2
    .param p1, "customerId"    # Ljava/lang/String;

    .prologue
    .line 848
    const-string v0, "customerId"

    const-string v1, "customerId"

    invoke-static {v0, v1, p1}, Lcom/ca/mdo/CAMobileDevOps;->setSessionAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method public setCustomerLocationOnIntegration(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 611
    :try_start_0
    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->setCustomerLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent setCustomerLocationOnIntegration() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCustomerLocationOnIntegration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "zipcode"    # Ljava/lang/String;
    .param p2, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 602
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CAMobileDevOps;->setCustomerLocation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent setCustomerLocationOnIntegration() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSessionAttributeOnIntegration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 621
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CAMobileDevOps;->setSessionAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent setSessionAttributeOnIntegration() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVisibilityOnProgressBar(Landroid/widget/ProgressBar;I)V
    .locals 3
    .param p1, "bar"    # Landroid/widget/ProgressBar;
    .param p2, "visibility"    # I

    .prologue
    .line 542
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CaMDOProgressBarImpl;->setVisibility(Landroid/widget/ProgressBar;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent setVisibilityOnProgressBar() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWebViewClientOnWebView(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 355
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CaMDOWebViewImpl;->setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent setWebViewClientOnWebView() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shouldInterceptRequestOfWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "orgWebviewClient"    # Landroid/webkit/WebViewClient;
    .param p3, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    .line 412
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 416
    :goto_0
    return-object v1

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent shouldInterceptRequestOfWebViewClient(WebView, WebViewClient, WebResourceRequest) :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 416
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldInterceptRequestOfWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "orgWebviewClient"    # Landroid/webkit/WebViewClient;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 401
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CaMDOWebViewClientImpl;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 405
    :goto_0
    return-object v1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent shouldInterceptRequestOfWebViewClient((WebView, WebViewClient, String) :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 405
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startApplicationTransactionOnIntegration(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 3
    .param p1, "transactionName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 631
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CAMobileDevOps;->startApplicationTransaction(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent startApplicationTransactionOnIntegration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startApplicationTransactionOnIntegration(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 3
    .param p1, "transactionName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 641
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CAMobileDevOps;->startApplicationTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent startApplicationTransactionOnIntegration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startNewSession()V
    .locals 3

    .prologue
    .line 746
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->startNewSession()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_0
    return-void

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent startNewSession() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopApplicationTransactionOnIntegration(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 3
    .param p1, "transactionName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 650
    :try_start_0
    invoke-static {p1, p2}, Lcom/ca/mdo/CAMobileDevOps;->stopApplicationTransaction(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent stopApplicationTransactionOnIntegration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopApplicationTransactionOnIntegration(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 3
    .param p1, "transactionName"    # Ljava/lang/String;
    .param p2, "failure"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 660
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ca/mdo/CAMobileDevOps;->stopApplicationTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    return-void

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent Failure Txn :  stopApplicationTransactionOnIntegration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopCurrentAndStartNewSession()V
    .locals 3

    .prologue
    .line 757
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->stopCurrentAndStartNewSession()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    return-void

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent stopCurrentAndStartNewSession() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopCurrentSession()V
    .locals 3

    .prologue
    .line 737
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->stopCurrentSession()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent stopCurrentSession() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public takeScreenshotOnIntegration(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;)V
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 687
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p2, p3, v1}, Lcom/ca/mdo/CAMobileDevOps;->takeScreenshotOfCurrentActivity(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent takeScreenshotOnIntegration() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uploadEvents()V
    .locals 3

    .prologue
    .line 813
    const/16 v1, 0xfb

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :goto_0
    return-void

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent uploadEvent() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uploadEvents(Lcom/ca/integration/CaMDOCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 822
    const/16 v1, 0xfb

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2, p1}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent uploadEvent() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public viewLoaded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "screenLoadTime"    # I

    .prologue
    .line 766
    int-to-long v1, p2

    :try_start_0
    invoke-static {p1, v1, v2}, Lcom/ca/mdo/CAMobileDevOps;->viewLoaded(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_0
    return-void

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent viewLoaded() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public viewLoaded(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "screenLoadTime"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 775
    int-to-long v1, p2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v1, v2, v3, p3}, Lcom/ca/mdo/CAMobileDevOps;->viewLoaded(Ljava/lang/String;JLcom/ca/integration/CaMDOCallback;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :goto_0
    return-void

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent viewLoaded() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public viewLoaded(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;)V
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "screenLoadTime"    # I
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 784
    int-to-long v1, p2

    :try_start_0
    invoke-static {p1, v1, v2, p3}, Lcom/ca/mdo/CAMobileDevOps;->viewLoaded(Ljava/lang/String;JLcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :goto_0
    return-void

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "error":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Agent viewLoaded() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
