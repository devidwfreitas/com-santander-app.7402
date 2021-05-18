.class public Lcom/adjust/sdk/UtilNetworking;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAuthorizationHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 259
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    .line 262
    :cond_1
    const-string v0, "app_secret"

    .line 264
    invoke-static {p0, p3, p1}, Lcom/adjust/sdk/UtilNetworking;->getSignature(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 266
    const-string v2, "sha256"

    .line 267
    const-string v0, "clear_signature"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    const-string v0, "fields"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    const-string v1, "secret_id=\"%s\""

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 271
    const-string v4, "signature=\"%s\""

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 272
    const-string v4, "algorithm=\"%s\""

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 273
    const-string v4, "headers=\"%s\""

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v4, "Signature %s,%s,%s,%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v3, v5, v7

    const/4 v1, 0x2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {}, Lcom/adjust/sdk/UtilNetworking;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "authorizationHeader: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static buildUri(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 230
    const-string v0, "https"

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 231
    const-string v0, "app.adjust.com"

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 232
    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 234
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 239
    sget-object v3, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v1, "sent_at"

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 243
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createGETHttpsURLConnection(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;
    .locals 5

    .prologue
    .line 77
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 78
    invoke-static {v0}, Lcom/adjust/sdk/UtilNetworking;->extractAppSecret(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0}, Lcom/adjust/sdk/UtilNetworking;->extractSecretId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/adjust/sdk/UtilNetworking;->buildUri(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v3

    .line 82
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {v4}, Lcom/adjust/sdk/AdjustFactory;->getHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v3

    .line 85
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityPackage;->getActivityKind()Lcom/adjust/sdk/ActivityKind;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adjust/sdk/ActivityKind;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/adjust/sdk/UtilNetworking;->buildAuthorizationHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    const-string v1, "Authorization"

    invoke-virtual {v3, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/adjust/sdk/UtilNetworking;->setDefaultHttpsUrlConnectionProperties(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;)V

    .line 92
    const-string v0, "GET"

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 94
    invoke-static {v3, p0}, Lcom/adjust/sdk/UtilNetworking;->readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    throw v0
.end method

.method public static createPOSTHttpsURLConnection(Ljava/lang/String;Lcom/adjust/sdk/ActivityPackage;I)Lcom/adjust/sdk/ResponseData;
    .locals 6

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 39
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Lcom/adjust/sdk/AdjustFactory;->getHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 41
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 43
    invoke-static {v3}, Lcom/adjust/sdk/UtilNetworking;->extractAppSecret(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v3}, Lcom/adjust/sdk/UtilNetworking;->extractSecretId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/adjust/sdk/UtilNetworking;->setDefaultHttpsUrlConnectionProperties(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getActivityKind()Lcom/adjust/sdk/ActivityKind;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adjust/sdk/ActivityKind;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v4, v5}, Lcom/adjust/sdk/UtilNetworking;->buildAuthorizationHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    const-string v4, "Authorization"

    invoke-virtual {v0, v4, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 54
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 55
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 57
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    invoke-static {v3, p2}, Lcom/adjust/sdk/UtilNetworking;->getPostDataString(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 60
    invoke-static {v0, p1}, Lcom/adjust/sdk/UtilNetworking;->readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 67
    if-eqz v2, :cond_1

    .line 68
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 69
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 62
    :cond_1
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    :goto_2
    if-eqz v1, :cond_2

    .line 68
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 69
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 71
    :cond_2
    :goto_3
    throw v0

    :catch_1
    move-exception v1

    goto :goto_3

    .line 66
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 63
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 71
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static extractAppSecret(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 247
    const-string v0, "app_secret"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static extractSecretId(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 251
    const-string v0, "secret_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    return-object v0
.end method

.method private static getPostDataString(Ljava/util/Map;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    if-eqz v0, :cond_1

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 191
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 188
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 199
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 200
    sget-object v3, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "sent_at"

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    if-lez p1, :cond_3

    .line 208
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v0, "queue_size"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSignature(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
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
    .line 286
    const-string v2, "activity_kind"

    .line 289
    const-string v3, "created_at"

    .line 290
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    invoke-static {p0}, Lcom/adjust/sdk/UtilNetworking;->getValidIdentifier(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 297
    const-string v6, "app_secret"

    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v1, ""

    .line 303
    const-string v2, ""

    .line 305
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 306
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 310
    goto :goto_0

    .line 313
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 317
    const-string v3, "clear_signature"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v2, "fields"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    return-object v1

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private static getValidIdentifier(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 324
    const-string v0, "gps_adid"

    .line 325
    const-string v1, "fire_adid"

    .line 326
    const-string v2, "android_id"

    .line 327
    const-string v3, "mac_sha1"

    .line 328
    const-string v4, "mac_md5"

    .line 329
    const-string v5, "android_uuid"

    .line 331
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 350
    :goto_0
    return-object v0

    .line 334
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 335
    goto :goto_0

    .line 337
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v0, v2

    .line 338
    goto :goto_0

    .line 340
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v0, v3

    .line 341
    goto :goto_0

    .line 343
    :cond_3
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v0, v4

    .line 344
    goto :goto_0

    .line 346
    :cond_4
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v0, v5

    .line 347
    goto :goto_0

    .line 350
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 103
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    invoke-static {}, Lcom/adjust/sdk/UtilNetworking;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v4

    .line 107
    invoke-static {p1}, Lcom/adjust/sdk/ResponseData;->buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 112
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 115
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v6, 0x190

    if-lt v1, v6, :cond_1

    .line 116
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 121
    :goto_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 122
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 127
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    :try_start_1
    const-string v1, "Failed to read response. (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-interface {v4, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    throw v0

    .line 118
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 134
    :cond_2
    if-eqz p0, :cond_3

    .line 135
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 139
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    const-string v1, "Response: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-interface {v4, v1, v6}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 179
    :cond_4
    :goto_2
    return-object v0

    .line 149
    :cond_5
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v1

    .line 156
    :goto_3
    if-eqz v2, :cond_4

    .line 160
    iput-object v2, v0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    .line 162
    const-string v1, "message"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    iput-object v1, v0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 165
    const-string v6, "timestamp"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    .line 166
    const-string v6, "adid"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    .line 168
    if-nez v1, :cond_6

    .line 169
    const-string v1, "No message found"

    .line 172
    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7

    .line 173
    const-string v2, "%s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-interface {v4, v2, v3}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iput-boolean v8, v0, Lcom/adjust/sdk/ResponseData;->success:Z

    goto :goto_2

    .line 150
    :catch_1
    move-exception v1

    .line 151
    const-string v2, "Failed to parse json response. (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 152
    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v4, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iput-object v1, v0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    move-object v2, v3

    goto :goto_3

    .line 176
    :cond_7
    const-string v2, "%s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-interface {v4, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static setDefaultHttpsUrlConnectionProperties(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;)V
    .locals 2

    .prologue
    const v1, 0xea60

    .line 218
    const-string v0, "Client-SDK"

    invoke-virtual {p0, v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 220
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 222
    sget-object v0, Lcom/adjust/sdk/UtilNetworking;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "User-Agent"

    sget-object v1, Lcom/adjust/sdk/UtilNetworking;->userAgent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/adjust/sdk/UtilNetworking;->userAgent:Ljava/lang/String;

    .line 33
    return-void
.end method
