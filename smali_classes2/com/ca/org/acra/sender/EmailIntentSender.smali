.class public Lcom/ca/org/acra/sender/EmailIntentSender;
.super Ljava/lang/Object;
.source "EmailIntentSender.java"

# interfaces
.implements Lcom/ca/org/acra/sender/ReportSender;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ca/org/acra/sender/EmailIntentSender;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private buildBody(Lcom/ca/org/acra/collector/CrashReportData;)Ljava/lang/String;
    .locals 7
    .param p1, "errorContent"    # Lcom/ca/org/acra/collector/CrashReportData;

    .prologue
    .line 56
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ca/org/acra/ACRAConfiguration;->customReportContent()[Lcom/ca/org/acra/ReportField;

    move-result-object v2

    .line 57
    .local v2, "fields":[Lcom/ca/org/acra/ReportField;
    array-length v3, v2

    if-nez v3, :cond_0

    .line 58
    sget-object v2, Lcom/ca/org/acra/ACRA;->DEFAULT_MAIL_REPORT_FIELDS:[Lcom/ca/org/acra/ReportField;

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 63
    .local v1, "field":Lcom/ca/org/acra/ReportField;
    invoke-virtual {v1}, Lcom/ca/org/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1, v1}, Lcom/ca/org/acra/collector/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 67
    .end local v1    # "field":Lcom/ca/org/acra/ReportField;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public send(Lcom/ca/org/acra/collector/CrashReportData;)V
    .locals 7
    .param p1, "errorContent"    # Lcom/ca/org/acra/collector/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/org/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ca/org/acra/sender/EmailIntentSender;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Crash Report"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "subject":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/ca/org/acra/sender/EmailIntentSender;->buildBody(Lcom/ca/org/acra/collector/CrashReportData;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "body":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "emailIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v3, "android.intent.extra.EMAIL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ca/org/acra/ACRAConfiguration;->mailTo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v3, p0, Lcom/ca/org/acra/sender/EmailIntentSender;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
