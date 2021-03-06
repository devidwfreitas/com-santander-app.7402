.class public Lcom/ca/org/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static toastWaitEnded:Z


# instance fields
.field private brokenThread:Ljava/lang/Thread;

.field private final crashReportDataFactory:Lcom/ca/org/acra/collector/CrashReportDataFactory;

.field private enabled:Z

.field private final fileNameParser:Lcom/ca/org/acra/CrashReportFileNameParser;

.field private final mContext:Landroid/content/Context;

.field private final mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mReportSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ca/org/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;

.field private unhandledThrowable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ca/org/acra/ErrorReporter;->toastWaitEnded:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "enabled"    # Z

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ca/org/acra/ErrorReporter;->enabled:Z

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    .line 89
    new-instance v2, Lcom/ca/org/acra/CrashReportFileNameParser;

    invoke-direct {v2}, Lcom/ca/org/acra/CrashReportFileNameParser;-><init>()V

    iput-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->fileNameParser:Lcom/ca/org/acra/CrashReportFileNameParser;

    .line 118
    iput-object p1, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/ca/org/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    .line 120
    iput-boolean p3, p0, Lcom/ca/org/acra/ErrorReporter;->enabled:Z

    .line 123
    iget-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ca/org/acra/collector/ConfigurationCollector;->collectConfiguration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "initialConfiguration":Ljava/lang/String;
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 129
    .local v0, "appStartDate":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 131
    new-instance v2, Lcom/ca/org/acra/collector/CrashReportDataFactory;

    iget-object v3, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2, v0, v1}, Lcom/ca/org/acra/collector/CrashReportDataFactory;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/text/format/Time;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->crashReportDataFactory:Lcom/ca/org/acra/collector/CrashReportDataFactory;

    .line 135
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 136
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 139
    invoke-virtual {p0}, Lcom/ca/org/acra/ErrorReporter;->checkReportsOnApplicationStart()V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/ca/org/acra/ErrorReporter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ca/org/acra/ErrorReporter;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/ca/org/acra/ErrorReporter;->toastWaitEnded:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 75
    sput-boolean p0, Lcom/ca/org/acra/ErrorReporter;->toastWaitEnded:Z

    return p0
.end method

.method static synthetic access$200(Lcom/ca/org/acra/ErrorReporter;)V
    .locals 0
    .param p0, "x0"    # Lcom/ca/org/acra/ErrorReporter;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/ca/org/acra/ErrorReporter;->endApplication()V

    return-void
.end method

.method private containsOnlySilentOrApprovedReports([Ljava/lang/String;)Z
    .locals 5
    .param p1, "reportFileNames"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 829
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 830
    .local v0, "reportFileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/ca/org/acra/ErrorReporter;->fileNameParser:Lcom/ca/org/acra/CrashReportFileNameParser;

    invoke-virtual {v4, v0}, Lcom/ca/org/acra/CrashReportFileNameParser;->isApproved(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 834
    .end local v0    # "reportFileName":Ljava/lang/String;
    :goto_1
    return v1

    .line 829
    .restart local v0    # "reportFileName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 834
    .end local v0    # "reportFileName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private deletePendingReports(ZZI)V
    .locals 9
    .param p1, "deleteApprovedReports"    # Z
    .param p2, "deleteNonApprovedReports"    # Z
    .param p3, "nbOfLatestToKeep"    # I

    .prologue
    .line 802
    new-instance v5, Lcom/ca/org/acra/CrashReportFinder;

    iget-object v6, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/ca/org/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 803
    .local v5, "reportFinder":Lcom/ca/org/acra/CrashReportFinder;
    invoke-virtual {v5}, Lcom/ca/org/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, "filesList":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 805
    if-eqz v2, :cond_3

    .line 806
    const/4 v3, 0x0

    .local v3, "iFile":I
    :goto_0
    array-length v6, v2

    sub-int/2addr v6, p3

    if-ge v3, v6, :cond_3

    .line 807
    aget-object v0, v2, v3

    .line 808
    .local v0, "fileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/ca/org/acra/ErrorReporter;->fileNameParser:Lcom/ca/org/acra/CrashReportFileNameParser;

    invoke-virtual {v6, v0}, Lcom/ca/org/acra/CrashReportFileNameParser;->isApproved(Ljava/lang/String;)Z

    move-result v4

    .line 809
    .local v4, "isReportApproved":Z
    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    .line 810
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 811
    .local v1, "fileToDelete":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    .line 812
    sget-object v6, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not delete report : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    .end local v1    # "fileToDelete":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 817
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v3    # "iFile":I
    .end local v4    # "isReportApproved":Z
    :cond_3
    return-void
.end method

.method private endApplication()V
    .locals 3

    .prologue
    .line 321
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/org/acra/ACRAConfiguration;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object v0

    sget-object v1, Lcom/ca/org/acra/ReportingInteractionMode;->SILENT:Lcom/ca/org/acra/ReportingInteractionMode;

    if-eq v0, v1, :cond_0

    .line 322
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/org/acra/ACRAConfiguration;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object v0

    sget-object v1, Lcom/ca/org/acra/ReportingInteractionMode;->TOAST:Lcom/ca/org/acra/ReportingInteractionMode;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lcom/ca/org/acra/ACRAConfiguration;->forceCloseDialogAfterToast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/ca/org/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->brokenThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->unhandledThrowable:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 336
    :goto_0
    return-void

    .line 331
    :cond_1
    sget-object v0, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fatal error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->unhandledThrowable:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->unhandledThrowable:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 334
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/ca/org/acra/ErrorReporter;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getErrorReporter()Lcom/ca/org/acra/ErrorReporter;

    move-result-object v0

    return-object v0
.end method

.method private getLatestNonSilentReport([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "filesList"    # [Ljava/lang/String;

    .prologue
    .line 775
    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    .line 776
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 777
    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->fileNameParser:Lcom/ca/org/acra/CrashReportFileNameParser;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/ca/org/acra/CrashReportFileNameParser;->isSilent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 778
    aget-object v1, p1, v0

    .line 784
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 776
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 782
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    goto :goto_1

    .line 784
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getReportFileName(Lcom/ca/org/acra/collector/CrashReportData;)Ljava/lang/String;
    .locals 6
    .param p1, "crashData"    # Lcom/ca/org/acra/collector/CrashReportData;

    .prologue
    .line 732
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 733
    .local v1, "now":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 734
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 735
    .local v2, "timestamp":J
    sget-object v4, Lcom/ca/org/acra/ReportField;->IS_SILENT:Lcom/ca/org/acra/ReportField;

    invoke-virtual {p1, v4}, Lcom/ca/org/acra/collector/CrashReportData;->getProperty(Lcom/ca/org/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "isSilent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_0

    sget-object v4, Lcom/ca/org/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".stacktrace"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-string v4, ""

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Throwable;Lcom/ca/org/acra/ReportingInteractionMode;ZZ)V
    .locals 10
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "reportingInteractionMode"    # Lcom/ca/org/acra/ReportingInteractionMode;
    .param p3, "forceSilentReport"    # Z
    .param p4, "endApplication"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 531
    iget-boolean v1, p0, Lcom/ca/org/acra/ErrorReporter;->enabled:Z

    if-nez v1, :cond_0

    .line 670
    :goto_0
    return-void

    .line 535
    :cond_0
    const/4 v7, 0x0

    .line 536
    .local v7, "sendOnlySilentReports":Z
    if-nez p2, :cond_8

    .line 539
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/org/acra/ACRAConfiguration;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object p2

    .line 551
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 552
    new-instance p1, Ljava/lang/Exception;

    .end local p1    # "e":Ljava/lang/Throwable;
    const-string v1, "Report requested by developer"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 555
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_2
    sget-object v1, Lcom/ca/org/acra/ReportingInteractionMode;->TOAST:Lcom/ca/org/acra/ReportingInteractionMode;

    if-eq p2, v1, :cond_3

    .line 556
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/org/acra/ACRAConfiguration;->resToastText()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/ca/org/acra/ReportingInteractionMode;->NOTIFICATION:Lcom/ca/org/acra/ReportingInteractionMode;

    if-eq p2, v1, :cond_3

    sget-object v1, Lcom/ca/org/acra/ReportingInteractionMode;->DIALOG:Lcom/ca/org/acra/ReportingInteractionMode;

    if-ne p2, v1, :cond_9

    :cond_3
    move v9, v3

    .line 558
    .local v9, "shouldDisplayToast":Z
    :goto_2
    if-eqz v9, :cond_4

    .line 559
    new-instance v1, Lcom/ca/org/acra/ErrorReporter$1;

    invoke-direct {v1, p0}, Lcom/ca/org/acra/ErrorReporter$1;-><init>(Lcom/ca/org/acra/ErrorReporter;)V

    .line 573
    invoke-virtual {v1}, Lcom/ca/org/acra/ErrorReporter$1;->start()V

    .line 579
    :cond_4
    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->crashReportDataFactory:Lcom/ca/org/acra/collector/CrashReportDataFactory;

    iget-object v5, p0, Lcom/ca/org/acra/ErrorReporter;->brokenThread:Ljava/lang/Thread;

    invoke-virtual {v1, p1, p3, v5}, Lcom/ca/org/acra/collector/CrashReportDataFactory;->createCrashData(Ljava/lang/Throwable;ZLjava/lang/Thread;)Lcom/ca/org/acra/collector/CrashReportData;

    move-result-object v6

    .line 584
    .local v6, "crashReportData":Lcom/ca/org/acra/collector/CrashReportData;
    invoke-direct {p0, v6}, Lcom/ca/org/acra/ErrorReporter;->getReportFileName(Lcom/ca/org/acra/collector/CrashReportData;)Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, "reportFileName":Ljava/lang/String;
    invoke-direct {p0, v4, v6}, Lcom/ca/org/acra/ErrorReporter;->saveCrashReportFile(Ljava/lang/String;Lcom/ca/org/acra/collector/CrashReportData;)V

    .line 587
    const/4 v8, 0x0

    .line 589
    .local v8, "sender":Lcom/ca/org/acra/SendWorker;
    sget-object v1, Lcom/ca/org/acra/ReportingInteractionMode;->SILENT:Lcom/ca/org/acra/ReportingInteractionMode;

    if-eq p2, v1, :cond_5

    sget-object v1, Lcom/ca/org/acra/ReportingInteractionMode;->TOAST:Lcom/ca/org/acra/ReportingInteractionMode;

    if-eq p2, v1, :cond_5

    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "acra.alwaysaccept"

    .line 591
    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 594
    :cond_5
    sget-object v1, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v5, "About to start ReportSenderWorker from #handleException"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {p0, v7, v3}, Lcom/ca/org/acra/ErrorReporter;->startSendingReports(ZZ)Lcom/ca/org/acra/SendWorker;

    move-result-object v8

    .line 602
    :cond_6
    :goto_3
    if-eqz v9, :cond_7

    .line 607
    sput-boolean v0, Lcom/ca/org/acra/ErrorReporter;->toastWaitEnded:Z

    .line 608
    new-instance v1, Lcom/ca/org/acra/ErrorReporter$2;

    invoke-direct {v1, p0}, Lcom/ca/org/acra/ErrorReporter$2;-><init>(Lcom/ca/org/acra/ErrorReporter;)V

    .line 629
    invoke-virtual {v1}, Lcom/ca/org/acra/ErrorReporter$2;->start()V

    .line 635
    :cond_7
    move-object v2, v8

    .line 636
    .local v2, "worker":Lcom/ca/org/acra/SendWorker;
    sget-object v1, Lcom/ca/org/acra/ReportingInteractionMode;->DIALOG:Lcom/ca/org/acra/ReportingInteractionMode;

    if-ne p2, v1, :cond_b

    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "acra.alwaysaccept"

    .line 637
    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    .line 639
    .local v3, "showDirectDialog":Z
    :goto_4
    new-instance v0, Lcom/ca/org/acra/ErrorReporter$3;

    move-object v1, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ca/org/acra/ErrorReporter$3;-><init>(Lcom/ca/org/acra/ErrorReporter;Lcom/ca/org/acra/SendWorker;ZLjava/lang/String;Z)V

    .line 669
    invoke-virtual {v0}, Lcom/ca/org/acra/ErrorReporter$3;->start()V

    goto/16 :goto_0

    .line 545
    .end local v2    # "worker":Lcom/ca/org/acra/SendWorker;
    .end local v3    # "showDirectDialog":Z
    .end local v4    # "reportFileName":Ljava/lang/String;
    .end local v6    # "crashReportData":Lcom/ca/org/acra/collector/CrashReportData;
    .end local v8    # "sender":Lcom/ca/org/acra/SendWorker;
    .end local v9    # "shouldDisplayToast":Z
    :cond_8
    sget-object v1, Lcom/ca/org/acra/ReportingInteractionMode;->SILENT:Lcom/ca/org/acra/ReportingInteractionMode;

    if-ne p2, v1, :cond_1

    .line 546
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/org/acra/ACRAConfiguration;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object v1

    sget-object v5, Lcom/ca/org/acra/ReportingInteractionMode;->SILENT:Lcom/ca/org/acra/ReportingInteractionMode;

    if-eq v1, v5, :cond_1

    .line 547
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_9
    move v9, v0

    .line 556
    goto :goto_2

    .line 596
    .restart local v4    # "reportFileName":Ljava/lang/String;
    .restart local v6    # "crashReportData":Lcom/ca/org/acra/collector/CrashReportData;
    .restart local v8    # "sender":Lcom/ca/org/acra/SendWorker;
    .restart local v9    # "shouldDisplayToast":Z
    :cond_a
    sget-object v1, Lcom/ca/org/acra/ReportingInteractionMode;->NOTIFICATION:Lcom/ca/org/acra/ReportingInteractionMode;

    if-ne p2, v1, :cond_6

    .line 598
    sget-object v1, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v5, "About to send status bar notification from #handleException"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-direct {p0, v4}, Lcom/ca/org/acra/ErrorReporter;->notifySendReport(Ljava/lang/String;)V

    goto :goto_3

    .restart local v2    # "worker":Lcom/ca/org/acra/SendWorker;
    :cond_b
    move v3, v0

    .line 637
    goto :goto_4
.end method

.method private notifySendReport(Ljava/lang/String;)V
    .locals 14
    .param p1, "reportFileName"    # Ljava/lang/String;

    .prologue
    .line 703
    iget-object v11, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v12, "notification"

    .line 704
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 706
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v0

    .line 709
    .local v0, "conf":Lcom/ca/org/acra/annotation/ReportsCrashes;
    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v4

    .line 711
    .local v4, "icon":I
    iget-object v11, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 712
    .local v8, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 713
    .local v9, "when":J
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v4, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 715
    .local v5, "notification":Landroid/app/Notification;
    iget-object v11, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 716
    .local v3, "contentTitle":Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 718
    .local v2, "contentText":Ljava/lang/CharSequence;
    new-instance v6, Landroid/content/Intent;

    iget-object v11, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-class v12, Lcom/ca/org/acra/CrashReportDialog;

    invoke-direct {v6, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 719
    .local v6, "notificationIntent":Landroid/content/Intent;
    sget-object v11, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Creating Notification for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v11, "REPORT_FILE_NAME"

    invoke-virtual {v6, v11, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    iget-object v11, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v11, v12, v6, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 724
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    iget-object v11, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 727
    invoke-virtual {v7}, Landroid/app/NotificationManager;->cancelAll()V

    .line 728
    const/16 v11, 0x29a

    invoke-virtual {v7, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 729
    return-void
.end method

.method private saveCrashReportFile(Ljava/lang/String;Lcom/ca/org/acra/collector/CrashReportData;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "crashData"    # Lcom/ca/org/acra/collector/CrashReportData;

    .prologue
    .line 757
    :try_start_0
    sget-object v2, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing crash report file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v1, Lcom/ca/org/acra/CrashReportPersister;

    iget-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ca/org/acra/CrashReportPersister;-><init>(Landroid/content/Context;)V

    .line 759
    .local v1, "persister":Lcom/ca/org/acra/CrashReportPersister;
    invoke-virtual {v1, p2, p1}, Lcom/ca/org/acra/CrashReportPersister;->store(Lcom/ca/org/acra/collector/CrashReportData;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    .end local v1    # "persister":Lcom/ca/org/acra/CrashReportPersister;
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "An error occurred while writing the report file..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ca/org/acra/ErrorReporter;->crashReportDataFactory:Lcom/ca/org/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1, p2}, Lcom/ca/org/acra/collector/CrashReportDataFactory;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    return-void
.end method

.method public addReportSender(Lcom/ca/org/acra/sender/ReportSender;)V
    .locals 1
    .param p1, "sender"    # Lcom/ca/org/acra/sender/ReportSender;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ca/org/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public checkReportsOnApplicationStart()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 400
    iget-object v12, p0, Lcom/ca/org/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    const-string v13, "acra.lastVersionNr"

    invoke-interface {v12, v13, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    int-to-long v1, v12

    .line 401
    .local v1, "lastVersionNr":J
    new-instance v6, Lcom/ca/org/acra/util/PackageManagerWrapper;

    iget-object v12, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v12}, Lcom/ca/org/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 402
    .local v6, "packageManagerWrapper":Lcom/ca/org/acra/util/PackageManagerWrapper;
    invoke-virtual {v6}, Lcom/ca/org/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 403
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_7

    iget v12, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v12, v12

    cmp-long v12, v12, v1

    if-lez v12, :cond_7

    move v3, v10

    .line 404
    .local v3, "newVersion":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 405
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ca/org/acra/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/ca/org/acra/ErrorReporter;->deletePendingReports()V

    .line 408
    :cond_0
    iget-object v12, p0, Lcom/ca/org/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 409
    .local v7, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v12, "acra.lastVersionNr"

    iget v13, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v7, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 410
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 413
    .end local v7    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ca/org/acra/ACRAConfiguration;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object v12

    sget-object v13, Lcom/ca/org/acra/ReportingInteractionMode;->NOTIFICATION:Lcom/ca/org/acra/ReportingInteractionMode;

    if-eq v12, v13, :cond_2

    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ca/org/acra/ACRAConfiguration;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object v12

    sget-object v13, Lcom/ca/org/acra/ReportingInteractionMode;->DIALOG:Lcom/ca/org/acra/ReportingInteractionMode;

    if-ne v12, v13, :cond_3

    .line 414
    :cond_2
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ca/org/acra/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 421
    invoke-virtual {p0, v10}, Lcom/ca/org/acra/ErrorReporter;->deletePendingNonApprovedReports(Z)V

    .line 424
    :cond_3
    new-instance v8, Lcom/ca/org/acra/CrashReportFinder;

    iget-object v12, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12}, Lcom/ca/org/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v8, "reportFinder":Lcom/ca/org/acra/CrashReportFinder;
    invoke-virtual {v8}, Lcom/ca/org/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "filesList":[Ljava/lang/String;
    if-eqz v0, :cond_6

    array-length v12, v0

    if-lez v12, :cond_6

    .line 435
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ca/org/acra/ACRAConfiguration;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object v9

    .line 437
    .local v9, "reportingInteractionMode":Lcom/ca/org/acra/ReportingInteractionMode;
    invoke-virtual {v8}, Lcom/ca/org/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-direct {p0, v0}, Lcom/ca/org/acra/ErrorReporter;->containsOnlySilentOrApprovedReports([Ljava/lang/String;)Z

    move-result v4

    .line 440
    .local v4, "onlySilentOrApprovedReports":Z
    sget-object v12, Lcom/ca/org/acra/ReportingInteractionMode;->SILENT:Lcom/ca/org/acra/ReportingInteractionMode;

    if-eq v9, v12, :cond_4

    sget-object v12, Lcom/ca/org/acra/ReportingInteractionMode;->TOAST:Lcom/ca/org/acra/ReportingInteractionMode;

    if-eq v9, v12, :cond_4

    if-eqz v4, :cond_8

    sget-object v12, Lcom/ca/org/acra/ReportingInteractionMode;->NOTIFICATION:Lcom/ca/org/acra/ReportingInteractionMode;

    if-eq v9, v12, :cond_4

    sget-object v12, Lcom/ca/org/acra/ReportingInteractionMode;->DIALOG:Lcom/ca/org/acra/ReportingInteractionMode;

    if-ne v9, v12, :cond_8

    .line 444
    :cond_4
    sget-object v12, Lcom/ca/org/acra/ReportingInteractionMode;->TOAST:Lcom/ca/org/acra/ReportingInteractionMode;

    if-ne v9, v12, :cond_5

    if-nez v4, :cond_5

    .line 447
    iget-object v12, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ca/org/acra/ACRAConfiguration;->resToastText()I

    move-result v13

    invoke-static {v12, v13, v10}, Lcom/ca/org/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    .line 450
    :cond_5
    sget-object v10, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v12, "About to start ReportSenderWorker from #checkReportOnApplicationStart"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0, v11, v11}, Lcom/ca/org/acra/ErrorReporter;->startSendingReports(ZZ)Lcom/ca/org/acra/SendWorker;

    .line 468
    .end local v4    # "onlySilentOrApprovedReports":Z
    .end local v9    # "reportingInteractionMode":Lcom/ca/org/acra/ReportingInteractionMode;
    :cond_6
    :goto_1
    return-void

    .end local v0    # "filesList":[Ljava/lang/String;
    .end local v3    # "newVersion":Z
    .end local v8    # "reportFinder":Lcom/ca/org/acra/CrashReportFinder;
    :cond_7
    move v3, v11

    .line 403
    goto/16 :goto_0

    .line 452
    .restart local v0    # "filesList":[Ljava/lang/String;
    .restart local v3    # "newVersion":Z
    .restart local v4    # "onlySilentOrApprovedReports":Z
    .restart local v8    # "reportFinder":Lcom/ca/org/acra/CrashReportFinder;
    .restart local v9    # "reportingInteractionMode":Lcom/ca/org/acra/ReportingInteractionMode;
    :cond_8
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ca/org/acra/ACRAConfiguration;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object v10

    sget-object v11, Lcom/ca/org/acra/ReportingInteractionMode;->NOTIFICATION:Lcom/ca/org/acra/ReportingInteractionMode;

    if-ne v10, v11, :cond_9

    .line 456
    invoke-direct {p0, v0}, Lcom/ca/org/acra/ErrorReporter;->getLatestNonSilentReport([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/ca/org/acra/ErrorReporter;->notifySendReport(Ljava/lang/String;)V

    goto :goto_1

    .line 457
    :cond_9
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ca/org/acra/ACRAConfiguration;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object v10

    sget-object v11, Lcom/ca/org/acra/ReportingInteractionMode;->DIALOG:Lcom/ca/org/acra/ReportingInteractionMode;

    if-ne v10, v11, :cond_6

    .line 464
    invoke-direct {p0, v0}, Lcom/ca/org/acra/ErrorReporter;->getLatestNonSilentReport([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ca/org/acra/ErrorReporter;->notifyDialog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method deletePendingNonApprovedReports(Z)V
    .locals 3
    .param p1, "keepOne"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 480
    if-eqz p1, :cond_0

    move v0, v1

    .line 481
    .local v0, "nbReportsToKeep":I
    :goto_0
    invoke-direct {p0, v2, v1, v0}, Lcom/ca/org/acra/ErrorReporter;->deletePendingReports(ZZI)V

    .line 482
    return-void

    .end local v0    # "nbReportsToKeep":I
    :cond_0
    move v0, v2

    .line 480
    goto :goto_0
.end method

.method deletePendingReports()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/ca/org/acra/ErrorReporter;->deletePendingReports(ZZI)V

    .line 390
    return-void
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ca/org/acra/ErrorReporter;->crashReportDataFactory:Lcom/ca/org/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1}, Lcom/ca/org/acra/collector/CrashReportDataFactory;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 509
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/org/acra/ACRAConfiguration;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/ca/org/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/ca/org/acra/ReportingInteractionMode;ZZ)V

    .line 510
    return-void
.end method

.method public handleException(Ljava/lang/Throwable;Z)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "endApplication"    # Z

    .prologue
    .line 496
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/org/acra/ACRAConfiguration;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/ca/org/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/ca/org/acra/ReportingInteractionMode;ZZ)V

    .line 497
    return-void
.end method

.method public handleSilentException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/ca/org/acra/ErrorReporter;->enabled:Z

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/ca/org/acra/ReportingInteractionMode;->SILENT:Lcom/ca/org/acra/ReportingInteractionMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ca/org/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/ca/org/acra/ReportingInteractionMode;ZZ)V

    .line 351
    sget-object v0, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA sent Silent report."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_0
    return-void

    .line 355
    :cond_0
    sget-object v0, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA is disabled. Silent report not sent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method notifyDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "reportFileName"    # Ljava/lang/String;

    .prologue
    .line 681
    sget-object v1, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating Dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/ca/org/acra/CrashReportDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 683
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string v1, "REPORT_FILE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 685
    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 686
    return-void
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ca/org/acra/ErrorReporter;->crashReportDataFactory:Lcom/ca/org/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1, p2}, Lcom/ca/org/acra/collector/CrashReportDataFactory;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAllReportSenders()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ca/org/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 262
    return-void
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ca/org/acra/ErrorReporter;->crashReportDataFactory:Lcom/ca/org/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1}, Lcom/ca/org/acra/collector/CrashReportDataFactory;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeReportSender(Lcom/ca/org/acra/sender/ReportSender;)V
    .locals 1
    .param p1, "sender"    # Lcom/ca/org/acra/sender/ReportSender;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ca/org/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public removeReportSenders(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "senderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/ca/org/acra/sender/ReportSender;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/org/acra/sender/ReportSender;

    .line 248
    .local v0, "sender":Lcom/ca/org/acra/sender/ReportSender;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    .end local v0    # "sender":Lcom/ca/org/acra/sender/ReportSender;
    :cond_1
    return-void
.end method

.method public setDefaultReportSenders()V
    .locals 6

    .prologue
    .line 842
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v0

    .line 843
    .local v0, "conf":Lcom/ca/org/acra/annotation/ReportsCrashes;
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 844
    .local v1, "mApplication":Landroid/app/Application;
    invoke-virtual {p0}, Lcom/ca/org/acra/ErrorReporter;->removeAllReportSenders()V

    .line 848
    const-string v3, ""

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 849
    sget-object v3, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reports will be sent by email (if accepted by user)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    new-instance v3, Lcom/ca/org/acra/sender/EmailIntentSender;

    invoke-direct {v3, v1}, Lcom/ca/org/acra/sender/EmailIntentSender;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/ca/org/acra/ErrorReporter;->setReportSender(Lcom/ca/org/acra/sender/ReportSender;)V

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    new-instance v2, Lcom/ca/org/acra/util/PackageManagerWrapper;

    invoke-direct {v2, v1}, Lcom/ca/org/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 855
    .local v2, "pm":Lcom/ca/org/acra/util/PackageManagerWrapper;
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Lcom/ca/org/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 861
    sget-object v3, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " should be granted permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.INTERNET"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " if you want your crash reports to be sent. If you don\'t want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 861
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 871
    :cond_2
    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, ""

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 872
    new-instance v3, Lcom/ca/org/acra/sender/HttpPostSender;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/ca/org/acra/sender/HttpPostSender;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/ca/org/acra/ErrorReporter;->setReportSender(Lcom/ca/org/acra/sender/ReportSender;)V

    goto :goto_0

    .line 878
    :cond_3
    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->formKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->formKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 879
    new-instance v3, Lcom/ca/org/acra/sender/GoogleFormSender;

    invoke-direct {v3}, Lcom/ca/org/acra/sender/GoogleFormSender;-><init>()V

    invoke-virtual {p0, v3}, Lcom/ca/org/acra/ErrorReporter;->addReportSender(Lcom/ca/org/acra/sender/ReportSender;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 366
    sget-object v1, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iput-boolean p1, p0, Lcom/ca/org/acra/ErrorReporter;->enabled:Z

    .line 368
    return-void

    .line 366
    :cond_0
    const-string v0, "disabled"

    goto :goto_0
.end method

.method public setReportSender(Lcom/ca/org/acra/sender/ReportSender;)V
    .locals 0
    .param p1, "sender"    # Lcom/ca/org/acra/sender/ReportSender;

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/ca/org/acra/ErrorReporter;->removeAllReportSenders()V

    .line 273
    invoke-virtual {p0, p1}, Lcom/ca/org/acra/ErrorReporter;->addReportSender(Lcom/ca/org/acra/sender/ReportSender;)V

    .line 274
    return-void
.end method

.method startSendingReports(ZZ)Lcom/ca/org/acra/SendWorker;
    .locals 3
    .param p1, "onlySendSilentReports"    # Z
    .param p2, "approveReportsFirst"    # Z

    .prologue
    .line 380
    new-instance v0, Lcom/ca/org/acra/SendWorker;

    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ca/org/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/ca/org/acra/SendWorker;-><init>(Landroid/content/Context;Ljava/util/List;ZZ)V

    .line 381
    .local v0, "worker":Lcom/ca/org/acra/SendWorker;
    invoke-virtual {v0}, Lcom/ca/org/acra/SendWorker;->start()V

    .line 382
    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 287
    :try_start_0
    iget-boolean v1, p0, Lcom/ca/org/acra/ErrorReporter;->enabled:Z

    if-nez v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 289
    sget-object v1, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA is disabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - forwarding uncaught Exception on to default ExceptionHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    sget-object v1, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA is disabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - no default ExceptionHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 311
    .local v0, "fatality":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/ca/org/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 299
    .end local v0    # "fatality":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/ca/org/acra/ErrorReporter;->brokenThread:Ljava/lang/Thread;

    .line 300
    iput-object p2, p0, Lcom/ca/org/acra/ErrorReporter;->unhandledThrowable:Ljava/lang/Throwable;

    .line 302
    sget-object v1, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA caught a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 303
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ca/org/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Building report."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/org/acra/ACRAConfiguration;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p2, v1, v2, v3}, Lcom/ca/org/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/ca/org/acra/ReportingInteractionMode;ZZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
