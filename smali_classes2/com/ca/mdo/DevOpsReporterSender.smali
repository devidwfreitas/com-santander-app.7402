.class public Lcom/ca/mdo/DevOpsReporterSender;
.super Ljava/lang/Object;
.source "DevOpsReporterSender.java"

# interfaces
.implements Lcom/ca/org/acra/sender/ReportSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Lcom/ca/org/acra/collector/CrashReportData;)V
    .locals 11
    .param p1, "report"    # Lcom/ca/org/acra/collector/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/org/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lcom/ca/mdo/PolicyManager;->isCrashEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 18
    sget-object v9, Lcom/ca/org/acra/ReportField;->STACK_TRACE:Lcom/ca/org/acra/ReportField;

    invoke-virtual {p1, v9}, Lcom/ca/org/acra/collector/CrashReportData;->getProperty(Lcom/ca/org/acra/ReportField;)Ljava/lang/String;

    move-result-object v8

    .line 19
    .local v8, "stackTrace":Ljava/lang/String;
    sget-object v9, Lcom/ca/org/acra/ReportField;->APP_VERSION_NAME:Lcom/ca/org/acra/ReportField;

    invoke-virtual {p1, v9}, Lcom/ca/org/acra/collector/CrashReportData;->getProperty(Lcom/ca/org/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "Version":Ljava/lang/String;
    sget-object v9, Lcom/ca/org/acra/ReportField;->USER_CRASH_DATE:Lcom/ca/org/acra/ReportField;

    invoke-virtual {p1, v9}, Lcom/ca/org/acra/collector/CrashReportData;->getProperty(Lcom/ca/org/acra/ReportField;)Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, "crashDate":Ljava/lang/String;
    sget-object v9, Lcom/ca/org/acra/ReportField;->EXCEPTION_CAUSE:Lcom/ca/org/acra/ReportField;

    invoke-virtual {p1, v9}, Lcom/ca/org/acra/collector/CrashReportData;->getProperty(Lcom/ca/org/acra/ReportField;)Ljava/lang/String;

    move-result-object v4

    .line 22
    .local v4, "exception":Ljava/lang/String;
    sget-object v9, Lcom/ca/org/acra/ReportField;->EXCEPTION_CLASSNAME:Lcom/ca/org/acra/ReportField;

    invoke-virtual {p1, v9}, Lcom/ca/org/acra/collector/CrashReportData;->getProperty(Lcom/ca/org/acra/ReportField;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "className":Ljava/lang/String;
    sget-object v9, Lcom/ca/org/acra/ReportField;->EXCEPTION_METHODNAME:Lcom/ca/org/acra/ReportField;

    invoke-virtual {p1, v9}, Lcom/ca/org/acra/collector/CrashReportData;->getProperty(Lcom/ca/org/acra/ReportField;)Ljava/lang/String;

    move-result-object v6

    .line 24
    .local v6, "methodName":Ljava/lang/String;
    sget-object v9, Lcom/ca/org/acra/ReportField;->EXCEPTION_LINENUMBER:Lcom/ca/org/acra/ReportField;

    invoke-virtual {p1, v9}, Lcom/ca/org/acra/collector/CrashReportData;->getProperty(Lcom/ca/org/acra/ReportField;)Ljava/lang/String;

    move-result-object v5

    .line 25
    .local v5, "lineNumber":Ljava/lang/String;
    sget-object v9, Lcom/ca/org/acra/ReportField;->BUILD:Lcom/ca/org/acra/ReportField;

    invoke-virtual {p1, v9}, Lcom/ca/org/acra/collector/CrashReportData;->getProperty(Lcom/ca/org/acra/ReportField;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "build":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v7, "sb":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USER_CRASH_DATE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APP_VERSION_NAME="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EXCEPTION_CAUSE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EXCEPTION_CLASSNAME="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EXCEPTION_METHODNAME="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EXCEPTION_LINENUMBER="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MEM="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getMemoryUsage()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DISK="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getDiskUsage()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CPU="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getCPUUsage()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v9, "BUILD_FINGERPRINT=49b85022-2f19-416e-a06d-9854673246d7\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PROCESS_ID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getSessionManager()Lcom/ca/mdo/SessionManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 43
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CA_MAA_SESSION_ID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getSessionManager()Lcom/ca/mdo/SessionManager;

    move-result-object v10

    iget-object v10, v10, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ca/mdo/CAMobileDevOps;->crash(Ljava/lang/String;)V

    .line 54
    .end local v0    # "Version":Ljava/lang/String;
    .end local v1    # "build":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "crashDate":Ljava/lang/String;
    .end local v4    # "exception":Ljava/lang/String;
    .end local v5    # "lineNumber":Ljava/lang/String;
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "stackTrace":Ljava/lang/String;
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v9, "Crash CALogging disabled"

    invoke-static {v9}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto :goto_0
.end method
