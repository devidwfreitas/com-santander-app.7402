.class final Lcom/ca/org/acra/SendWorker;
.super Ljava/lang/Thread;
.source "SendWorker.java"


# instance fields
.field private final approvePendingReports:Z

.field private final context:Landroid/content/Context;

.field private final fileNameParser:Lcom/ca/org/acra/CrashReportFileNameParser;

.field private final reportSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ca/org/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private final sendOnlySilentReports:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "sendOnlySilentReports"    # Z
    .param p4, "approvePendingReports"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ca/org/acra/sender/ReportSender;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "reportSenders":Ljava/util/List;, "Ljava/util/List<Lcom/ca/org/acra/sender/ReportSender;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 42
    new-instance v0, Lcom/ca/org/acra/CrashReportFileNameParser;

    invoke-direct {v0}, Lcom/ca/org/acra/CrashReportFileNameParser;-><init>()V

    iput-object v0, p0, Lcom/ca/org/acra/SendWorker;->fileNameParser:Lcom/ca/org/acra/CrashReportFileNameParser;

    .line 61
    iput-object p1, p0, Lcom/ca/org/acra/SendWorker;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/ca/org/acra/SendWorker;->reportSenders:Ljava/util/List;

    .line 63
    iput-boolean p3, p0, Lcom/ca/org/acra/SendWorker;->sendOnlySilentReports:Z

    .line 64
    iput-boolean p4, p0, Lcom/ca/org/acra/SendWorker;->approvePendingReports:Z

    .line 65
    return-void
.end method

.method private approvePendingReports()V
    .locals 11

    .prologue
    .line 85
    sget-object v6, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Mark all pending reports as approved."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v5, Lcom/ca/org/acra/CrashReportFinder;

    iget-object v6, p0, Lcom/ca/org/acra/SendWorker;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/ca/org/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v5, "reportFinder":Lcom/ca/org/acra/CrashReportFinder;
    invoke-virtual {v5}, Lcom/ca/org/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "reportFileNames":[Ljava/lang/String;
    array-length v7, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v4, v6

    .line 91
    .local v3, "reportFileName":Ljava/lang/String;
    iget-object v8, p0, Lcom/ca/org/acra/SendWorker;->fileNameParser:Lcom/ca/org/acra/CrashReportFileNameParser;

    invoke-virtual {v8, v3}, Lcom/ca/org/acra/CrashReportFileNameParser;->isApproved(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 92
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/ca/org/acra/SendWorker;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v2, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v2, "reportFile":Ljava/io/File;
    const-string v8, ".stacktrace"

    const-string v9, "-approved.stacktrace"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "newName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lcom/ca/org/acra/SendWorker;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v0, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 103
    sget-object v8, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not rename approved report from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "newFile":Ljava/io/File;
    .end local v1    # "newName":Ljava/lang/String;
    .end local v2    # "reportFile":Ljava/io/File;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "reportFileName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private checkAndSendReports(Landroid/content/Context;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sendOnlySilentReports"    # Z

    .prologue
    .line 120
    sget-object v7, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "#checkAndSendReports - start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v5, Lcom/ca/org/acra/CrashReportFinder;

    invoke-direct {v5, p1}, Lcom/ca/org/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 122
    .local v5, "reportFinder":Lcom/ca/org/acra/CrashReportFinder;
    invoke-virtual {v5}, Lcom/ca/org/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "reportFiles":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 125
    const/4 v6, 0x0

    .line 127
    .local v6, "reportsSentCount":I
    array-length v8, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v0, v4, v7

    .line 128
    .local v0, "curFileName":Ljava/lang/String;
    if-eqz p2, :cond_0

    iget-object v9, p0, Lcom/ca/org/acra/SendWorker;->fileNameParser:Lcom/ca/org/acra/CrashReportFileNameParser;

    invoke-virtual {v9, v0}, Lcom/ca/org/acra/CrashReportFileNameParser;->isSilent(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 127
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 132
    :cond_0
    const/4 v9, 0x5

    if-lt v6, v9, :cond_2

    .line 160
    .end local v0    # "curFileName":Ljava/lang/String;
    :cond_1
    :goto_2
    sget-object v7, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "#checkAndSendReports - finish"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 137
    .restart local v0    # "curFileName":Ljava/lang/String;
    :cond_2
    sget-object v9, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    new-instance v2, Lcom/ca/org/acra/CrashReportPersister;

    invoke-direct {v2, p1}, Lcom/ca/org/acra/CrashReportPersister;-><init>(Landroid/content/Context;)V

    .line 140
    .local v2, "persister":Lcom/ca/org/acra/CrashReportPersister;
    invoke-virtual {v2, v0}, Lcom/ca/org/acra/CrashReportPersister;->load(Ljava/lang/String;)Lcom/ca/org/acra/collector/CrashReportData;

    move-result-object v3

    .line 141
    .local v3, "previousCrashReport":Lcom/ca/org/acra/collector/CrashReportData;
    invoke-direct {p0, v3}, Lcom/ca/org/acra/SendWorker;->sendCrashReport(Lcom/ca/org/acra/collector/CrashReportData;)V

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/ca/org/acra/SendWorker;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ca/org/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_2

    .line 158
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 143
    .end local v2    # "persister":Lcom/ca/org/acra/CrashReportPersister;
    .end local v3    # "previousCrashReport":Lcom/ca/org/acra/collector/CrashReportData;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v7, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to send crash reports for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/ca/org/acra/SendWorker;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 148
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to load crash report for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/ca/org/acra/SendWorker;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 153
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 154
    .local v1, "e":Lcom/ca/org/acra/sender/ReportSenderException;
    sget-object v7, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to send crash report for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method private deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 199
    .local v0, "deleted":Z
    if-nez v0, :cond_0

    .line 200
    sget-object v1, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete error report : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    return-void
.end method

.method private sendCrashReport(Lcom/ca/org/acra/collector/CrashReportData;)V
    .locals 7
    .param p1, "errorContent"    # Lcom/ca/org/acra/collector/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/org/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/ca/org/acra/ACRA;->isDebuggable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ca/org/acra/ACRAConfiguration;->sendReportsInDevMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    :cond_0
    const/4 v2, 0x0

    .line 176
    .local v2, "sentAtLeastOnce":Z
    iget-object v3, p0, Lcom/ca/org/acra/SendWorker;->reportSenders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/org/acra/sender/ReportSender;

    .line 178
    .local v1, "sender":Lcom/ca/org/acra/sender/ReportSender;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/ca/org/acra/sender/ReportSender;->send(Lcom/ca/org/acra/collector/CrashReportData;)V
    :try_end_0
    .catch Lcom/ca/org/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const/4 v2, 0x1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lcom/ca/org/acra/sender/ReportSenderException;
    if-nez v2, :cond_1

    .line 184
    throw v0

    .line 187
    :cond_1
    sget-object v4, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReportSender of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed but other senders completed their task. ACRA will not send this report again."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v0    # "e":Lcom/ca/org/acra/sender/ReportSenderException;
    .end local v1    # "sender":Lcom/ca/org/acra/sender/ReportSender;
    .end local v2    # "sentAtLeastOnce":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/ca/org/acra/SendWorker;->approvePendingReports:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/ca/org/acra/SendWorker;->approvePendingReports()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ca/org/acra/SendWorker;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/ca/org/acra/SendWorker;->sendOnlySilentReports:Z

    invoke-direct {p0, v0, v1}, Lcom/ca/org/acra/SendWorker;->checkAndSendReports(Landroid/content/Context;Z)V

    .line 78
    return-void
.end method
