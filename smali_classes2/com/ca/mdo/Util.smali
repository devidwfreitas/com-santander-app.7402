.class Lcom/ca/mdo/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mdo/Util$ScreenDeviceSize;,
        Lcom/ca/mdo/Util$Screenshot;
    }
.end annotation


# static fields
.field private static final NON_HTTP_URL_MAX_SIZE:I = 0xc8

.field public static app:Landroid/app/Application;

.field private static httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static isHttpClienSetup:Z

.field private static mEditor:Landroid/content/SharedPreferences$Editor;

.field private static mPref:Landroid/content/SharedPreferences;

.field public static screenShotHeight:Ljava/lang/String;

.field public static screenShotWidth:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "0"

    sput-object v0, Lcom/ca/mdo/Util;->screenShotWidth:Ljava/lang/String;

    .line 58
    const-string v0, "0"

    sput-object v0, Lcom/ca/mdo/Util;->screenShotHeight:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ca/mdo/Util;->isHttpClienSetup:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/ca/mdo/Util;->app:Landroid/app/Application;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 577
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 578
    .local v1, "gos":Ljava/util/zip/GZIPOutputStream;
    const-string v3, "utf-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 579
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 580
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 581
    .local v0, "compressed":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 582
    return-object v0
.end method

.method public static compressAndEncode(Landroid/graphics/Bitmap;I)Ljava/lang/String;
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 335
    move-object v3, p0

    .line 336
    .local v3, "immagex":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 337
    .local v2, "imageEncoded":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 338
    const-string v4, ""

    .line 361
    :goto_0
    return-object v4

    .line 340
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-le v4, v5, :cond_4

    .line 341
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 342
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    if-ltz p1, :cond_1

    const/16 v4, 0x64

    if-le p1, v4, :cond_3

    .line 343
    :cond_1
    const/16 p1, 0xf

    .line 350
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image compression Quality ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 351
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v4, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 352
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 355
    .local v0, "b":[B
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .end local v0    # "b":[B
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_2
    move-object v4, v2

    .line 361
    goto :goto_0

    .line 346
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    const/16 v4, 0x1e

    if-le p1, v4, :cond_2

    .line 347
    const/16 p1, 0x1e

    goto :goto_1

    .line 358
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_4
    const-string v4, "CAMobileDevOps "

    const-string v5, "Utils - encodeToBase64 - not able to encode as SDK is below Android FROYO"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static endProfile(JLjava/lang/String;)V
    .locals 3
    .param p0, "startTime"    # J
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "completed in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method public static executeFormRequest(Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;)Ljava/io/InputStream;
    .locals 32
    .param p0, "request"    # Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;->url:Ljava/lang/String;

    .line 87
    .local v3, "webUrl":Ljava/lang/String;
    new-instance v29, Ljava/net/URL;

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    .local v29, "url":Ljava/net/URL;
    invoke-virtual/range {p0 .. p0}, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;->getParameters()Ljava/lang/String;

    move-result-object v30

    .line 90
    .local v30, "urlParameters":Ljava/lang/String;
    const-string v5, "UTF-8"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v25

    .line 91
    .local v25, "postData":[B
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    .line 93
    .local v26, "postDataLength":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 94
    .local v27, "start":J
    invoke-virtual/range {v29 .. v29}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljava/net/HttpURLConnection;

    .line 96
    .local v15, "conn":Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;->httpMethod:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 98
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;->httpMethod:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    const-string v5, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;->enctype:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 104
    const-string v5, "Content-Type"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;->enctype:Ljava/lang/String;

    invoke-virtual {v15, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_2
    const-string v5, "Charset"

    const-string v6, "utf-8"

    invoke-virtual {v15, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v5, "Content-Length"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 109
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 111
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 113
    new-instance v31, Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 114
    .local v31, "wr":Ljava/io/DataOutputStream;
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 115
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataOutputStream;->flush()V

    .line 117
    const/16 v22, 0x0

    .line 119
    .local v22, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v22

    .line 124
    if-eqz v31, :cond_3

    .line 125
    :try_start_1
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 131
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 132
    .local v20, "end":J
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v16

    .line 134
    .local v16, "contentType":Ljava/lang/String;
    const/16 v19, 0x0

    .line 135
    .local v19, "encoding":Ljava/lang/String;
    const/16 v23, 0x0

    .line 137
    .local v23, "mimeType":Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 138
    const-string v5, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 139
    .local v18, "elements":[Ljava/lang/String;
    if-eqz v18, :cond_4

    const/4 v5, 0x0

    aget-object v5, v18, v5

    if-eqz v5, :cond_4

    .line 140
    const/4 v5, 0x0

    aget-object v5, v18, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 141
    move-object/from16 v0, v18

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 142
    const/4 v5, 0x1

    aget-object v5, v18, v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 146
    .end local v18    # "elements":[Ljava/lang/String;
    :cond_4
    if-nez v22, :cond_6

    .line 147
    const/4 v5, 0x0

    .line 153
    :goto_1
    return-object v5

    .line 120
    .end local v16    # "contentType":Ljava/lang/String;
    .end local v19    # "encoding":Ljava/lang/String;
    .end local v20    # "end":J
    .end local v23    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 121
    .local v17, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Form post exception e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    if-eqz v31, :cond_3

    .line 125
    :try_start_3
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 127
    :catch_1
    move-exception v5

    goto :goto_0

    .line 123
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 124
    if-eqz v31, :cond_5

    .line 125
    :try_start_4
    invoke-virtual/range {v31 .. v31}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 129
    :cond_5
    :goto_2
    throw v5

    .line 150
    .restart local v16    # "contentType":Ljava/lang/String;
    .restart local v19    # "encoding":Ljava/lang/String;
    .restart local v20    # "end":J
    .restart local v23    # "mimeType":Ljava/lang/String;
    :cond_6
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 151
    .local v4, "status":I
    sub-long v5, v20, v27

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v3 .. v14}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v24

    .line 152
    .local v24, "network":Lcom/ca/mdo/Network;
    invoke-static/range {v24 .. v24}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 153
    new-instance v5, Lcom/ca/mdo/SDKInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v5, v0, v15, v1, v2}, Lcom/ca/mdo/SDKInputStream;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 127
    .end local v4    # "status":I
    .end local v16    # "contentType":Ljava/lang/String;
    .end local v19    # "encoding":Ljava/lang/String;
    .end local v20    # "end":J
    .end local v23    # "mimeType":Ljava/lang/String;
    .end local v24    # "network":Lcom/ca/mdo/Network;
    :catch_2
    move-exception v5

    goto/16 :goto_0

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method public static executeHttpGetRequest(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 29
    .param p0, "webUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v27, Ljava/net/URL;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 161
    .local v27, "url":Ljava/net/URL;
    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v28

    check-cast v28, Ljava/net/HttpURLConnection;

    .line 163
    .local v28, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const-string v4, "x-apm-bt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 167
    .local v25, "start":J
    const/16 v22, 0x0

    .line 170
    .local v22, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 172
    .local v20, "end":J
    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v16

    .line 174
    .local v16, "contentType":Ljava/lang/String;
    const/16 v19, 0x0

    .line 175
    .local v19, "encoding":Ljava/lang/String;
    const/16 v23, 0x0

    .line 177
    .local v23, "mimeType":Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 178
    const-string v4, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 179
    .local v18, "elements":[Ljava/lang/String;
    if-eqz v18, :cond_1

    const/4 v4, 0x0

    aget-object v4, v18, v4

    if-eqz v4, :cond_1

    .line 180
    const/4 v4, 0x0

    aget-object v4, v18, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 181
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 182
    const/4 v4, 0x1

    aget-object v4, v18, v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 185
    .end local v18    # "elements":[Ljava/lang/String;
    :cond_1
    if-nez v22, :cond_2

    .line 186
    const/4 v4, 0x0

    .line 196
    .end local v16    # "contentType":Ljava/lang/String;
    .end local v19    # "encoding":Ljava/lang/String;
    .end local v20    # "end":J
    .end local v23    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 189
    .restart local v16    # "contentType":Ljava/lang/String;
    .restart local v19    # "encoding":Ljava/lang/String;
    .restart local v20    # "end":J
    .restart local v23    # "mimeType":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v28 .. v28}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 190
    .local v5, "status":I
    sub-long v6, v20, v25

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v15}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v24

    .line 191
    .local v24, "network":Lcom/ca/mdo/Network;
    invoke-static/range {v24 .. v24}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 192
    new-instance v4, Lcom/ca/mdo/SDKInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    move-object/from16 v3, v23

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/ca/mdo/SDKInputStream;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    .end local v5    # "status":I
    .end local v16    # "contentType":Ljava/lang/String;
    .end local v19    # "encoding":Ljava/lang/String;
    .end local v20    # "end":J
    .end local v23    # "mimeType":Ljava/lang/String;
    .end local v24    # "network":Lcom/ca/mdo/Network;
    :catch_0
    move-exception v17

    .line 195
    .local v17, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while executing url+ :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 510
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 511
    .local v2, "versionName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 512
    const-string v3, "versionName was null, check AndroidManifest file?"

    invoke-static {v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 513
    const-string v2, "unknown"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v2    # "versionName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 517
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "1.0"

    goto :goto_0
.end method

.method public static getBitmapScreenshot(Landroid/app/Activity;Landroid/view/View;ILandroid/graphics/Bitmap;)Lcom/ca/mdo/Util$Screenshot;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "quality"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, "returnedBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 263
    .local v5, "width":I
    const/4 v2, 0x0

    .line 265
    .local v2, "height":I
    if-eqz p3, :cond_0

    .line 266
    move-object v3, p3

    .line 267
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 268
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 285
    :goto_0
    new-instance v6, Lcom/ca/mdo/Util$Screenshot;

    invoke-direct {v6, v3, v5, v2, p2}, Lcom/ca/mdo/Util$Screenshot;-><init>(Landroid/graphics/Bitmap;III)V

    return-object v6

    .line 271
    :cond_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isCrossWalk()Z

    move-result v6

    if-nez v6, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xd

    if-le v6, v7, :cond_1

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 274
    .local v1, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 275
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 276
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 277
    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 278
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 279
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 280
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 282
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "display":Landroid/view/Display;
    .end local v4    # "size":Landroid/graphics/Point;
    :cond_1
    const-string v6, "Utils - getBitmapScreenshot => Build.Version.SDK_INT is less than HONEYCOMB_MR2"

    invoke-static {v6}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getCookieStore(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/impl/client/BasicCookieStore;
    .locals 8
    .param p0, "cookies"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 67
    new-instance v2, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 68
    .local v2, "cs":Lorg/apache/http/impl/client/BasicCookieStore;
    if-eqz p0, :cond_1

    .line 69
    const-string v5, ";"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "cookieValues":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 72
    aget-object v5, v1, v3

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "split":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 74
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    aget-object v5, v4, v7

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v0, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    :goto_1
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    aget-object v5, v4, v7

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    goto :goto_1

    .line 82
    .end local v0    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v1    # "cookieValues":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "split":[Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static getCountOfJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 2
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "arrayKey"    # Ljava/lang/String;

    .prologue
    .line 587
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 590
    :goto_0
    return v1

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 202
    sget-boolean v2, Lcom/ca/mdo/Util;->isHttpClienSetup:Z

    if-nez v2, :cond_0

    .line 205
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 209
    .local v0, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v1, 0x1388

    .line 210
    .local v1, "timeoutSocket":I
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 211
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 212
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/ca/mdo/Util;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 213
    sput-boolean v3, Lcom/ca/mdo/Util;->isHttpClienSetup:Z

    .line 215
    :cond_0
    sget-object v2, Lcom/ca/mdo/Util;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v2
.end method

.method public static getScreenResolution(Landroid/content/Context;)Lcom/ca/mdo/Util$ScreenDeviceSize;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 297
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 298
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 299
    .local v2, "screensize":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 300
    new-instance v1, Lcom/ca/mdo/Util$ScreenDeviceSize;

    iget v3, v2, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/ca/mdo/Util$ScreenDeviceSize;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .local v1, "screenDeviceSize":Lcom/ca/mdo/Util$ScreenDeviceSize;
    return-object v1
.end method

.method public static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 489
    sget-object v0, Lcom/ca/mdo/Util;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 490
    invoke-static {}, Lcom/ca/mdo/Util;->openSharedPreferences()V

    .line 492
    :cond_0
    sget-object v0, Lcom/ca/mdo/Util;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Lcom/ca/mdo/Util;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 502
    invoke-static {}, Lcom/ca/mdo/Util;->openSharedPreferences()V

    .line 504
    :cond_0
    sget-object v0, Lcom/ca/mdo/Util;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static isConnectedToWIFI(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 397
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 398
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 399
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 404
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isJailBroken()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 533
    const-string v0, "su"

    .line 534
    .local v0, "binaryName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 535
    .local v2, "found":Z
    const/16 v8, 0x8

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, "/sbin/"

    aput-object v8, v5, v7

    const/4 v8, 0x1

    const-string v9, "/system/bin/"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    const-string v9, "/system/xbin/"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const-string v9, "/data/local/xbin/"

    aput-object v9, v5, v8

    const/4 v8, 0x4

    const-string v9, "/data/local/bin/"

    aput-object v9, v5, v8

    const/4 v8, 0x5

    const-string v9, "/system/sd/xbin/"

    aput-object v9, v5, v8

    const/4 v8, 0x6

    const-string v9, "/system/bin/failsafe/"

    aput-object v9, v5, v8

    const/4 v8, 0x7

    const-string v9, "/data/local/"

    aput-object v9, v5, v8

    .line 545
    .local v5, "places":[Ljava/lang/String;
    array-length v8, v5

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v6, v5, v7

    .line 546
    .local v6, "where":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 547
    const/4 v2, 0x1

    .line 553
    .end local v6    # "where":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_3

    .line 556
    :try_start_0
    const-string v7, "PATH"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 558
    .local v4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    .line 559
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 560
    .local v3, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 561
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was found here: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    const/4 v2, 0x1

    goto :goto_1

    .line 545
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "where":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 566
    .end local v6    # "where":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 567
    .local v1, "e":Ljava/lang/Throwable;
    const-string v7, "Cannot find su"

    invoke-static {v7, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    return v2
.end method

.method public static isLauncherActivity(Landroid/app/Activity;)Z
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 372
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 373
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 375
    .local v6, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v5, "laucherclassName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "className":Ljava/lang/String;
    const-string v9, "activity"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 379
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 380
    .local v8, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 381
    .local v2, "componentInfo":Landroid/content/ComponentName;
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "currentClassName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v10

    .line 385
    :goto_0
    return v9

    :cond_0
    move v9, v11

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "isTablet":Z
    if-eqz p0, :cond_1

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    move v2, v3

    .line 317
    .local v2, "xlarge":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    move v1, v3

    .line 320
    .local v1, "large":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    move v0, v3

    .line 323
    .end local v1    # "large":Z
    .end local v2    # "xlarge":Z
    :cond_1
    :goto_2
    return v0

    :cond_2
    move v2, v4

    .line 314
    goto :goto_0

    .restart local v2    # "xlarge":Z
    :cond_3
    move v1, v4

    .line 317
    goto :goto_1

    .restart local v1    # "large":Z
    :cond_4
    move v0, v4

    .line 320
    goto :goto_2
.end method

.method private static openSharedPreferences()V
    .locals 3

    .prologue
    .line 474
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v0

    .line 475
    .local v0, "ctx":Landroid/app/Application;
    if-nez v0, :cond_0

    .line 476
    sget-object v0, Lcom/ca/mdo/Util;->app:Landroid/app/Application;

    .line 478
    :cond_0
    if-eqz v0, :cond_1

    .line 479
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/ca/mdo/Util;->mPref:Landroid/content/SharedPreferences;

    .line 480
    sget-object v1, Lcom/ca/mdo/Util;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/ca/mdo/Util;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 482
    :cond_1
    return-void
.end method

.method public static readJsonFromInputStream(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p0, :cond_1

    .line 419
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 420
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 425
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "json":Lorg/json/JSONObject;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 427
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_1
    return-object v1
.end method

.method public static readJsonFromResponse(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "json":Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 441
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/Util;->readJsonFromInputStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    .line 443
    :cond_0
    return-object v0
.end method

.method public static startProfile()J
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static takeScreenshot(Landroid/app/Activity;ILandroid/graphics/Bitmap;)Lcom/ca/mdo/Util$Screenshot;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "quality"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 243
    if-nez p0, :cond_0

    .line 244
    const-string v1, "Utils - takeScreenshot => activity is null"

    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    .line 248
    :cond_0
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/ca/mdo/Util;->getBitmapScreenshot(Landroid/app/Activity;Landroid/view/View;ILandroid/graphics/Bitmap;)Lcom/ca/mdo/Util$Screenshot;

    move-result-object v0

    .line 249
    .local v0, "screenshot":Lcom/ca/mdo/Util$Screenshot;
    goto :goto_0
.end method

.method public static trim(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 524
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static truncateNonHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xc8

    .line 595
    if-eqz p0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 598
    :cond_0
    return-object p0
.end method
