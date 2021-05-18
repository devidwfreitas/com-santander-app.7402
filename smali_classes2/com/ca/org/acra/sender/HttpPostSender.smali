.class public Lcom/ca/org/acra/sender/HttpPostSender;
.super Ljava/lang/Object;
.source "HttpPostSender.java"

# interfaces
.implements Lcom/ca/org/acra/sender/ReportSender;


# instance fields
.field private final mFormUri:Landroid/net/Uri;

.field private final mMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ca/org/acra/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "formUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/ca/org/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "mapping":Ljava/util/Map;, "Ljava/util/Map<Lcom/ca/org/acra/ReportField;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/org/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    .line 114
    iput-object p2, p0, Lcom/ca/org/acra/sender/HttpPostSender;->mMapping:Ljava/util/Map;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/ca/org/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "mapping":Ljava/util/Map;, "Ljava/util/Map<Lcom/ca/org/acra/ReportField;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ca/org/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    .line 95
    iput-object p1, p0, Lcom/ca/org/acra/sender/HttpPostSender;->mMapping:Ljava/util/Map;

    .line 96
    return-void
.end method

.method private static isNull(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aString"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p0, :cond_0

    const-string v0, "ACRA-NULL-STRING"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private remap(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/ca/org/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "report":Ljava/util/Map;, "Ljava/util/Map<Lcom/ca/org/acra/ReportField;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ca/org/acra/ACRAConfiguration;->customReportContent()[Lcom/ca/org/acra/ReportField;

    move-result-object v1

    .line 150
    .local v1, "fields":[Lcom/ca/org/acra/ReportField;
    array-length v3, v1

    if-nez v3, :cond_0

    .line 151
    sget-object v1, Lcom/ca/org/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lcom/ca/org/acra/ReportField;

    .line 154
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 155
    .local v2, "finalReport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 156
    .local v0, "field":Lcom/ca/org/acra/ReportField;
    iget-object v5, p0, Lcom/ca/org/acra/sender/HttpPostSender;->mMapping:Ljava/util/Map;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/ca/org/acra/sender/HttpPostSender;->mMapping:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 157
    :cond_1
    invoke-virtual {v0}, Lcom/ca/org/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_2
    iget-object v5, p0, Lcom/ca/org/acra/sender/HttpPostSender;->mMapping:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 162
    .end local v0    # "field":Lcom/ca/org/acra/ReportField;
    :cond_3
    return-object v2
.end method


# virtual methods
.method public send(Lcom/ca/org/acra/collector/CrashReportData;)V
    .locals 9
    .param p1, "report"    # Lcom/ca/org/acra/collector/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/org/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ca/org/acra/sender/HttpPostSender;->remap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 122
    .local v1, "finalReport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/ca/org/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    if-nez v6, :cond_0

    new-instance v4, Ljava/net/URL;

    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ca/org/acra/ACRAConfiguration;->formUri()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 123
    .local v4, "reportUrl":Ljava/net/URL;
    :goto_0
    sget-object v6, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ca/org/acra/ACRAConfiguration;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ca/org/acra/sender/HttpPostSender;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v3

    .line 127
    .local v2, "login":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ca/org/acra/ACRAConfiguration;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ca/org/acra/sender/HttpPostSender;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    .local v3, "password":Ljava/lang/String;
    :goto_2
    new-instance v5, Lcom/ca/org/acra/util/HttpRequest;

    invoke-direct {v5}, Lcom/ca/org/acra/util/HttpRequest;-><init>()V

    .line 131
    .local v5, "request":Lcom/ca/org/acra/util/HttpRequest;
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ca/org/acra/ACRAConfiguration;->connectionTimeout()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ca/org/acra/util/HttpRequest;->setConnectionTimeOut(I)V

    .line 132
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ca/org/acra/ACRAConfiguration;->socketTimeout()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ca/org/acra/util/HttpRequest;->setSocketTimeOut(I)V

    .line 133
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ca/org/acra/ACRAConfiguration;->maxNumberOfRequestRetries()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ca/org/acra/util/HttpRequest;->setMaxNrRetries(I)V

    .line 134
    invoke-virtual {v5, v2}, Lcom/ca/org/acra/util/HttpRequest;->setLogin(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v5, v3}, Lcom/ca/org/acra/util/HttpRequest;->setPassword(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v5, v4, v1}, Lcom/ca/org/acra/util/HttpRequest;->sendPost(Ljava/net/URL;Ljava/util/Map;)V

    .line 141
    return-void

    .line 122
    .end local v2    # "login":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "reportUrl":Ljava/net/URL;
    .end local v5    # "request":Lcom/ca/org/acra/util/HttpRequest;
    :cond_0
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/ca/org/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v1    # "finalReport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/ca/org/acra/sender/ReportSenderException;

    const-string v7, "Error while sending report to Http Post Form."

    invoke-direct {v6, v7, v0}, Lcom/ca/org/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "finalReport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "reportUrl":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v6

    .line 126
    invoke-virtual {v6}, Lcom/ca/org/acra/ACRAConfiguration;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 127
    .restart local v2    # "login":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v6

    .line 128
    invoke-virtual {v6}, Lcom/ca/org/acra/ACRAConfiguration;->formUriBasicAuthPassword()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2
.end method
