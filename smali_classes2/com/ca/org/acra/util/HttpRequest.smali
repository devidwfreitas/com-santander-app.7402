.class public final Lcom/ca/org/acra/util/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/org/acra/util/HttpRequest$SocketTimeOutRetryHandler;
    }
.end annotation


# instance fields
.field private connectionTimeOut:I

.field private login:Ljava/lang/String;

.field private maxNrRetries:I

.field private password:Ljava/lang/String;

.field private socketTimeOut:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0xbb8

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v0, p0, Lcom/ca/org/acra/util/HttpRequest;->connectionTimeOut:I

    .line 84
    iput v0, p0, Lcom/ca/org/acra/util/HttpRequest;->socketTimeOut:I

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lcom/ca/org/acra/util/HttpRequest;->maxNrRetries:I

    return-void
.end method

.method private getCredentials()Lorg/apache/http/auth/UsernamePasswordCredentials;
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ca/org/acra/util/HttpRequest;->login:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ca/org/acra/util/HttpRequest;->password:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    iget-object v1, p0, Lcom/ca/org/acra/util/HttpRequest;->login:Ljava/lang/String;

    iget-object v2, p0, Lcom/ca/org/acra/util/HttpRequest;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    const/16 v9, 0x1bb

    .line 154
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 155
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v5, "http.protocol.cookie-policy"

    const-string v6, "rfc2109"

    invoke-interface {v2, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 156
    iget v5, p0, Lcom/ca/org/acra/util/HttpRequest;->connectionTimeOut:I

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 157
    iget v5, p0, Lcom/ca/org/acra/util/HttpRequest;->socketTimeOut:I

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 158
    const/16 v5, 0x2000

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 160
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 161
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    new-instance v7, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v7}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 162
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ca/org/acra/ACRAConfiguration;->disableSSLCertValidation()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    new-instance v7, Lcom/ca/org/acra/util/FakeSocketFactory;

    invoke-direct {v7}, Lcom/ca/org/acra/util/FakeSocketFactory;-><init>()V

    invoke-direct {v5, v6, v7, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 168
    :goto_0
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 169
    .local v0, "clientConnectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 171
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lcom/ca/org/acra/util/HttpRequest$SocketTimeOutRetryHandler;

    iget v5, p0, Lcom/ca/org/acra/util/HttpRequest;->maxNrRetries:I

    const/4 v6, 0x0

    invoke-direct {v4, v2, v5, v6}, Lcom/ca/org/acra/util/HttpRequest$SocketTimeOutRetryHandler;-><init>(Lorg/apache/http/params/HttpParams;ILcom/ca/org/acra/util/HttpRequest$1;)V

    .line 172
    .local v4, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    invoke-virtual {v1, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 174
    return-object v1

    .line 165
    .end local v0    # "clientConnectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v1    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    :cond_0
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-direct {v5, v6, v7, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0
.end method

.method private getHttpPost(Ljava/net/URL;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<**>;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0}, Lcom/ca/org/acra/util/HttpRequest;->getCredentials()Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-result-object v0

    .line 193
    .local v0, "creds":Lorg/apache/http/auth/UsernamePasswordCredentials;
    if-eqz v0, :cond_0

    .line 194
    const-string v3, "UTF-8"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 196
    :cond_0
    const-string v3, "User-Agent"

    const-string v4, "Android"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v3, "Accept"

    const-string v4, "text/html,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, p2}, Lcom/ca/org/acra/util/HttpRequest;->getParamsAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "paramsAsString":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 203
    return-object v1
.end method

.method private getParamsAsString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, "dataBfr":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 217
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    const/16 v5, 0x26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 221
    .local v2, "preliminaryValue":Ljava/lang/Object;
    if-nez v2, :cond_1

    const-string v3, ""

    .line 222
    .local v3, "value":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    move-object v3, v2

    .line 221
    goto :goto_1

    .line 227
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "preliminaryValue":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public sendPost(Ljava/net/URL;Ljava/util/Map;)V
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-direct {p0}, Lcom/ca/org/acra/util/HttpRequest;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 122
    .local v0, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-direct {p0, p1, p2}, Lcom/ca/org/acra/util/HttpRequest;->getHttpPost(Ljava/net/URL;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 124
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    sget-object v5, Lcom/ca/org/acra/ACRA;->log:Lcom/ca/org/acra/log/ACRALog;

    sget-object v6, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending request to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/ca/org/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_0
    new-instance v5, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v5}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-interface {v0, v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 131
    .local v2, "response":Lorg/apache/http/HttpResponse;
    if-eqz v2, :cond_3

    .line 132
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 133
    .local v4, "statusLine":Lorg/apache/http/StatusLine;
    if-eqz v4, :cond_2

    .line 134
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "statusCode":Ljava/lang/String;
    const-string v5, "4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "5"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Host returned error code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    .end local v3    # "statusCode":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    .line 148
    .end local v4    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_3
    return-void
.end method

.method public setConnectionTimeOut(I)V
    .locals 0
    .param p1, "connectionTimeOut"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/ca/org/acra/util/HttpRequest;->connectionTimeOut:I

    .line 97
    return-void
.end method

.method public setLogin(Ljava/lang/String;)V
    .locals 0
    .param p1, "login"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ca/org/acra/util/HttpRequest;->login:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setMaxNrRetries(I)V
    .locals 0
    .param p1, "maxNrRetries"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/ca/org/acra/util/HttpRequest;->maxNrRetries:I

    .line 110
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ca/org/acra/util/HttpRequest;->password:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setSocketTimeOut(I)V
    .locals 0
    .param p1, "socketTimeOut"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/ca/org/acra/util/HttpRequest;->socketTimeOut:I

    .line 101
    return-void
.end method
