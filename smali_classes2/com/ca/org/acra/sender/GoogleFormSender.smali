.class public Lcom/ca/org/acra/sender/GoogleFormSender;
.super Ljava/lang/Object;
.source "GoogleFormSender.java"

# interfaces
.implements Lcom/ca/org/acra/sender/ReportSender;


# instance fields
.field private final mFormUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ca/org/acra/sender/GoogleFormSender;->mFormUri:Landroid/net/Uri;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "formKey"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/org/acra/ACRAConfiguration;->googleFormUrlFormat()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/org/acra/sender/GoogleFormSender;->mFormUri:Landroid/net/Uri;

    .line 64
    return-void
.end method

.method private remap(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
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
    .line 94
    .local p1, "report":Ljava/util/Map;, "Ljava/util/Map<Lcom/ca/org/acra/ReportField;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ca/org/acra/ACRAConfiguration;->customReportContent()[Lcom/ca/org/acra/ReportField;

    move-result-object v0

    .line 95
    .local v0, "fields":[Lcom/ca/org/acra/ReportField;
    array-length v4, v0

    if-nez v4, :cond_0

    .line 96
    sget-object v0, Lcom/ca/org/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lcom/ca/org/acra/ReportField;

    .line 99
    :cond_0
    const/4 v1, 0x0

    .line 100
    .local v1, "inputId":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 102
    .local v2, "originalKey":Lcom/ca/org/acra/ReportField;
    sget-object v4, Lcom/ca/org/acra/sender/GoogleFormSender$1;->$SwitchMap$com$ca$org$acra$ReportField:[I

    invoke-virtual {v2}, Lcom/ca/org/acra/ReportField;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entry."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".single"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 101
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 104
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entry."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".single"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 107
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entry."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".single"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 115
    .end local v2    # "originalKey":Lcom/ca/org/acra/ReportField;
    :cond_1
    return-object v3

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 68
    iget-object v5, p0, Lcom/ca/org/acra/sender/GoogleFormSender;->mFormUri:Landroid/net/Uri;

    if-nez v5, :cond_0

    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ca/org/acra/ACRAConfiguration;->googleFormUrlFormat()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 69
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ca/org/acra/ACRAConfiguration;->formKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 68
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 70
    .local v2, "formUri":Landroid/net/Uri;
    :goto_0
    invoke-direct {p0, p1}, Lcom/ca/org/acra/sender/GoogleFormSender;->remap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 72
    .local v1, "formParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "pageNumber"

    const-string v6, "0"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v5, "backupCache"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v5, "submit"

    const-string v6, "Envoyer"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, "reportUrl":Ljava/net/URL;
    sget-object v6, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending report "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v5, Lcom/ca/org/acra/ReportField;->REPORT_ID:Lcom/ca/org/acra/ReportField;

    invoke-virtual {p1, v5}, Lcom/ca/org/acra/collector/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v5, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v4, Lcom/ca/org/acra/util/HttpRequest;

    invoke-direct {v4}, Lcom/ca/org/acra/util/HttpRequest;-><init>()V

    .line 82
    .local v4, "request":Lcom/ca/org/acra/util/HttpRequest;
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ca/org/acra/ACRAConfiguration;->connectionTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ca/org/acra/util/HttpRequest;->setConnectionTimeOut(I)V

    .line 83
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ca/org/acra/ACRAConfiguration;->socketTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ca/org/acra/util/HttpRequest;->setSocketTimeOut(I)V

    .line 84
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ca/org/acra/ACRAConfiguration;->maxNumberOfRequestRetries()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ca/org/acra/util/HttpRequest;->setMaxNrRetries(I)V

    .line 85
    invoke-virtual {v4, v3, v1}, Lcom/ca/org/acra/util/HttpRequest;->sendPost(Ljava/net/URL;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 68
    .end local v1    # "formParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "formUri":Landroid/net/Uri;
    .end local v3    # "reportUrl":Ljava/net/URL;
    .end local v4    # "request":Lcom/ca/org/acra/util/HttpRequest;
    :cond_0
    iget-object v2, p0, Lcom/ca/org/acra/sender/GoogleFormSender;->mFormUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 87
    .restart local v1    # "formParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "formUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/ca/org/acra/sender/ReportSenderException;

    const-string v6, "Error while sending report to Google Form."

    invoke-direct {v5, v6, v0}, Lcom/ca/org/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
