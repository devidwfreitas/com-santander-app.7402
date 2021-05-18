.class public Lcom/adjust/sdk/PackageFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADJUST_PREFIX:Ljava/lang/String; = "adjust_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDeeplinkSdkClickPackage(Landroid/net/Uri;JLcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lavo;Lcom/adjust/sdk/SessionParameters;)Lcom/adjust/sdk/ActivityPackage;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 73
    if-nez p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "Url to parse (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-instance v2, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v2}, Landroid/net/UrlQuerySanitizer;-><init>()V

    .line 86
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllButNulLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/UrlQuerySanitizer;->setUnregisteredParameterValueSanitizer(Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    .line 87
    invoke-virtual {v2, v6}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    .line 88
    invoke-virtual {v2, v1}, Landroid/net/UrlQuerySanitizer;->parseUrl(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    move-result-object v1

    .line 90
    invoke-static {v1, p3, p4, p5, p6}, Lcom/adjust/sdk/PackageFactory;->queryStringClickPackageBuilder(Ljava/util/List;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lavo;Lcom/adjust/sdk/SessionParameters;)Lavq;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lavq;->f:Ljava/lang/String;

    .line 102
    iput-wide p1, v1, Lavq;->g:J

    .line 104
    const-string v0, "deeplink"

    invoke-virtual {v1, v0}, Lavq;->a(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildInstallReferrerSdkClickPackage(Ljava/lang/String;JJLcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lavo;Lcom/adjust/sdk/SessionParameters;)Lcom/adjust/sdk/ActivityPackage;
    .locals 9

    .prologue
    .line 116
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 120
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 122
    new-instance v1, Lavq;

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p5

    move-object/from16 v5, p8

    invoke-direct/range {v1 .. v7}, Lavq;-><init>(Lcom/adjust/sdk/AdjustConfig;Lavo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/SessionParameters;J)V

    .line 129
    if-nez v1, :cond_2

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_2
    iput-object p0, v1, Lavq;->d:Ljava/lang/String;

    .line 134
    iput-wide p1, v1, Lavq;->h:J

    .line 135
    iput-wide p3, v1, Lavq;->i:J

    .line 137
    const-string v0, "install_referrer"

    invoke-virtual {v1, v0}, Lavq;->a(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildReftagSdkClickPackage(Ljava/lang/String;JLcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lavo;Lcom/adjust/sdk/SessionParameters;)Lcom/adjust/sdk/ActivityPackage;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 28
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 64
    :goto_0
    return-object v0

    .line 35
    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_1
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "Referrer to parse (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    new-instance v2, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v2}, Landroid/net/UrlQuerySanitizer;-><init>()V

    .line 43
    invoke-static {}, Landroid/net/UrlQuerySanitizer;->getAllButNulLegal()Landroid/net/UrlQuerySanitizer$ValueSanitizer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/UrlQuerySanitizer;->setUnregisteredParameterValueSanitizer(Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V

    .line 44
    invoke-virtual {v2, v6}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    .line 45
    invoke-virtual {v2, v0}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    move-result-object v2

    .line 47
    invoke-static {v2, p3, p4, p5, p6}, Lcom/adjust/sdk/PackageFactory;->queryStringClickPackageBuilder(Ljava/util/List;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lavo;Lcom/adjust/sdk/SessionParameters;)Lavq;

    move-result-object v2

    .line 54
    if-nez v2, :cond_2

    move-object v0, v1

    .line 55
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v0, "malformed"

    goto :goto_1

    .line 58
    :cond_2
    iput-object v0, v2, Lavq;->d:Ljava/lang/String;

    .line 59
    iput-wide p1, v2, Lavq;->g:J

    .line 60
    iput-object p0, v2, Lavq;->e:Ljava/lang/String;

    .line 62
    const-string v0, "reftag"

    invoke-virtual {v2, v0}, Lavq;->a(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    goto :goto_0
.end method

.method private static queryStringClickPackageBuilder(Ljava/util/List;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lavo;Lcom/adjust/sdk/SessionParameters;)Lavq;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/UrlQuerySanitizer$ParameterValuePair;",
            ">;",
            "Lcom/adjust/sdk/ActivityState;",
            "Lcom/adjust/sdk/AdjustConfig;",
            "Lavo;",
            "Lcom/adjust/sdk/SessionParameters;",
            ")",
            "Lavq;"
        }
    .end annotation

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 149
    const/4 v1, 0x0

    .line 184
    :goto_0
    return-object v1

    .line 152
    :cond_0
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 153
    new-instance v9, Lcom/adjust/sdk/AdjustAttribution;

    invoke-direct {v9}, Lcom/adjust/sdk/AdjustAttribution;-><init>()V

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    .line 156
    iget-object v2, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    iget-object v0, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    invoke-static {v2, v0, v8, v9}, Lcom/adjust/sdk/PackageFactory;->readQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/adjust/sdk/AdjustAttribution;)Z

    goto :goto_1

    .line 163
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 164
    const-string v0, "reftag"

    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    if-eqz p1, :cond_2

    .line 169
    iget-wide v2, p1, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v2, v6, v2

    .line 170
    iput-wide v2, p1, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 173
    :cond_2
    new-instance v1, Lavq;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lavq;-><init>(Lcom/adjust/sdk/AdjustConfig;Lavo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/SessionParameters;J)V

    .line 180
    iput-object v8, v1, Lavq;->a:Ljava/util/Map;

    .line 181
    iput-object v9, v1, Lavq;->b:Lcom/adjust/sdk/AdjustAttribution;

    .line 182
    iput-object v0, v1, Lavq;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private static readQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/adjust/sdk/AdjustAttribution;)Z
    .locals 3
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
            "Lcom/adjust/sdk/AdjustAttribution;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 191
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    const-string v1, "adjust_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "adjust_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-static {p3, v1, p1}, Lcom/adjust/sdk/PackageFactory;->tryToSetAttribution(Lcom/adjust/sdk/AdjustAttribution;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static tryToSetAttribution(Lcom/adjust/sdk/AdjustAttribution;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 220
    const-string v1, "tracker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iput-object p2, p0, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    .line 240
    :goto_0
    return v0

    .line 225
    :cond_0
    const-string v1, "campaign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    iput-object p2, p0, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    goto :goto_0

    .line 230
    :cond_1
    const-string v1, "adgroup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    iput-object p2, p0, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_2
    const-string v1, "creative"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    iput-object p2, p0, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
