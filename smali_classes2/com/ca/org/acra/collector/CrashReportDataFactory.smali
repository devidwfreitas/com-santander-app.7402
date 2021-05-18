.class public final Lcom/ca/org/acra/collector/CrashReportDataFactory;
.super Ljava/lang/Object;
.source "CrashReportDataFactory.java"


# instance fields
.field private final appStartDate:Landroid/text/format/Time;

.field private final context:Landroid/content/Context;

.field private final crashReportFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ca/org/acra/ReportField;",
            ">;"
        }
    .end annotation
.end field

.field private final customParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final initialConfiguration:Ljava/lang/String;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/text/format/Time;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "appStartDate"    # Landroid/text/format/Time;
    .param p4, "initialConfiguration"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    .line 102
    iput-object p1, p0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    .line 104
    iput-object p3, p0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->appStartDate:Landroid/text/format/Time;

    .line 105
    iput-object p4, p0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->initialConfiguration:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v0

    .line 108
    .local v0, "config":Lcom/ca/org/acra/annotation/ReportsCrashes;
    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->customReportContent()[Lcom/ca/org/acra/ReportField;

    move-result-object v1

    .line 111
    .local v1, "customReportFields":[Lcom/ca/org/acra/ReportField;
    array-length v3, v1

    if-eqz v3, :cond_0

    .line 112
    sget-object v3, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Using custom Report Fields"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move-object v2, v1

    .line 122
    .local v2, "fieldsList":[Lcom/ca/org/acra/ReportField;
    :goto_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    .line 123
    return-void

    .line 114
    .end local v2    # "fieldsList":[Lcom/ca/org/acra/ReportField;
    :cond_0
    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    :cond_1
    sget-object v3, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Using default Report Fields"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v2, Lcom/ca/org/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lcom/ca/org/acra/ReportField;

    .restart local v2    # "fieldsList":[Lcom/ca/org/acra/ReportField;
    goto :goto_0

    .line 118
    .end local v2    # "fieldsList":[Lcom/ca/org/acra/ReportField;
    :cond_2
    sget-object v3, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Using default Mail Report Fields"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v2, Lcom/ca/org/acra/ACRA;->DEFAULT_MAIL_REPORT_FIELDS:[Lcom/ca/org/acra/ReportField;

    .restart local v2    # "fieldsList":[Lcom/ca/org/acra/ReportField;
    goto :goto_0
.end method

.method private createCustomInfoString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .local v2, "customInfo":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    .local v0, "currentKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 415
    .local v1, "currentVal":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 420
    .end local v0    # "currentKey":Ljava/lang/String;
    .end local v1    # "currentVal":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 425
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 426
    .local v2, "result":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 430
    .local v1, "printWriter":Ljava/io/PrintWriter;
    move-object v0, p1

    .line 431
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 433
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "stacktraceAsString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 438
    return-object v3
.end method


# virtual methods
.method public createCrashData(Ljava/lang/Throwable;ZLjava/lang/Thread;)Lcom/ca/org/acra/collector/CrashReportData;
    .locals 21
    .param p1, "th"    # Ljava/lang/Throwable;
    .param p2, "isSilentReport"    # Z
    .param p3, "brokenThread"    # Ljava/lang/Thread;

    .prologue
    .line 179
    new-instance v4, Lcom/ca/org/acra/collector/CrashReportData;

    invoke-direct {v4}, Lcom/ca/org/acra/collector/CrashReportData;-><init>()V

    .line 186
    .local v4, "crashReportData":Lcom/ca/org/acra/collector/CrashReportData;
    :try_start_0
    sget-object v17, Lcom/ca/org/acra/ReportField;->STACK_TRACE:Lcom/ca/org/acra/ReportField;

    invoke-direct/range {p0 .. p1}, Lcom/ca/org/acra/collector/CrashReportDataFactory;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 189
    const/4 v13, 0x0

    .line 190
    .local v13, "prev":Ljava/lang/Throwable;
    move-object/from16 v16, p1

    .line 191
    .local v16, "thLoop":Ljava/lang/Throwable;
    :goto_0
    if-eqz v16, :cond_0

    .line 193
    move-object/from16 v13, v16

    .line 194
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, "exception":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v14, v17, v18

    .line 198
    .local v14, "stackElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, "methodName":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    .line 202
    .local v9, "lineNumber":I
    sget-object v17, Lcom/ca/org/acra/ReportField;->EXCEPTION_CAUSE:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v8}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v17, Lcom/ca/org/acra/ReportField;->EXCEPTION_CLASSNAME:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v3}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v17, Lcom/ca/org/acra/ReportField;->EXCEPTION_METHODNAME:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v10}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v17, Lcom/ca/org/acra/ReportField;->EXCEPTION_LINENUMBER:Lcom/ca/org/acra/ReportField;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 210
    .end local v3    # "className":Ljava/lang/String;
    .end local v8    # "exception":Ljava/lang/String;
    .end local v9    # "lineNumber":I
    .end local v10    # "methodName":Ljava/lang/String;
    .end local v14    # "stackElement":Ljava/lang/StackTraceElement;
    :goto_1
    :try_start_2
    sget-object v17, Lcom/ca/org/acra/ReportField;->USER_APP_START_DATE:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->appStartDate:Landroid/text/format/Time;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    if-eqz p2, :cond_1

    .line 213
    sget-object v17, Lcom/ca/org/acra/ReportField;->IS_SILENT:Lcom/ca/org/acra/ReportField;

    const-string v18, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->REPORT_ID:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 218
    sget-object v17, Lcom/ca/org/acra/ReportField;->REPORT_ID:Lcom/ca/org/acra/ReportField;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->INSTALLATION_ID:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 223
    sget-object v17, Lcom/ca/org/acra/ReportField;->INSTALLATION_ID:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->INITIAL_CONFIGURATION:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 228
    sget-object v17, Lcom/ca/org/acra/ReportField;->INITIAL_CONFIGURATION:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->initialConfiguration:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->CRASH_CONFIGURATION:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 231
    sget-object v17, Lcom/ca/org/acra/ReportField;->CRASH_CONFIGURATION:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/collector/ConfigurationCollector;->collectConfiguration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    move/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 236
    sget-object v17, Lcom/ca/org/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/ca/org/acra/ReportField;

    invoke-static {}, Lcom/ca/org/acra/collector/DumpSysCollector;->collectMemInfo()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->PACKAGE_NAME:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 241
    sget-object v17, Lcom/ca/org/acra/ReportField;->PACKAGE_NAME:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->BUILD:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 246
    sget-object v17, Lcom/ca/org/acra/ReportField;->BUILD:Lcom/ca/org/acra/ReportField;

    const-class v18, Landroid/os/Build;

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/collector/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->PHONE_MODEL:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 251
    sget-object v17, Lcom/ca/org/acra/ReportField;->PHONE_MODEL:Lcom/ca/org/acra/ReportField;

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->ANDROID_VERSION:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 255
    sget-object v17, Lcom/ca/org/acra/ReportField;->ANDROID_VERSION:Lcom/ca/org/acra/ReportField;

    sget-object v18, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->BRAND:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 260
    sget-object v17, Lcom/ca/org/acra/ReportField;->BRAND:Lcom/ca/org/acra/ReportField;

    sget-object v18, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->PRODUCT:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 263
    sget-object v17, Lcom/ca/org/acra/ReportField;->PRODUCT:Lcom/ca/org/acra/ReportField;

    sget-object v18, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 268
    sget-object v17, Lcom/ca/org/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/ca/org/acra/ReportField;

    invoke-static {}, Lcom/ca/org/acra/util/ReportUtils;->getTotalInternalMemorySize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 271
    sget-object v17, Lcom/ca/org/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/ca/org/acra/ReportField;

    invoke-static {}, Lcom/ca/org/acra/util/ReportUtils;->getAvailableInternalMemorySize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->FILE_PATH:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 276
    sget-object v17, Lcom/ca/org/acra/ReportField;->FILE_PATH:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/util/ReportUtils;->getApplicationFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->DISPLAY:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 281
    sget-object v17, Lcom/ca/org/acra/ReportField;->DISPLAY:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/util/ReportUtils;->getDisplayDetails(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->USER_CRASH_DATE:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 286
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 287
    .local v5, "curDate":Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 288
    sget-object v17, Lcom/ca/org/acra/ReportField;->USER_CRASH_DATE:Lcom/ca/org/acra/ReportField;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v5    # "curDate":Landroid/text/format/Time;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->CUSTOM_DATA:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 293
    sget-object v17, Lcom/ca/org/acra/ReportField;->CUSTOM_DATA:Lcom/ca/org/acra/ReportField;

    invoke-direct/range {p0 .. p0}, Lcom/ca/org/acra/collector/CrashReportDataFactory;->createCustomInfoString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->USER_EMAIL:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 298
    sget-object v17, Lcom/ca/org/acra/ReportField;->USER_EMAIL:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "acra.user.email"

    const-string v20, "N/A"

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->DEVICE_FEATURES:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 303
    sget-object v17, Lcom/ca/org/acra/ReportField;->DEVICE_FEATURES:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/collector/DeviceFeaturesCollector;->getFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->ENVIRONMENT:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 308
    sget-object v17, Lcom/ca/org/acra/ReportField;->ENVIRONMENT:Lcom/ca/org/acra/ReportField;

    const-class v18, Landroid/os/Environment;

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/collector/ReflectionCollector;->collectStaticGettersResults(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->SETTINGS_SYSTEM:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 313
    sget-object v17, Lcom/ca/org/acra/ReportField;->SETTINGS_SYSTEM:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/collector/SettingsCollector;->collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->SETTINGS_SECURE:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 318
    sget-object v17, Lcom/ca/org/acra/ReportField;->SETTINGS_SECURE:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/collector/SettingsCollector;->collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->SHARED_PREFERENCES:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 323
    sget-object v17, Lcom/ca/org/acra/ReportField;->SHARED_PREFERENCES:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/collector/SharedPreferencesCollector;->collect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_18
    new-instance v12, Lcom/ca/org/acra/util/PackageManagerWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/ca/org/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 330
    .local v12, "pm":Lcom/ca/org/acra/util/PackageManagerWrapper;
    invoke-virtual {v12}, Lcom/ca/org/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 331
    .local v11, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_26

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->APP_VERSION_CODE:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 334
    sget-object v17, Lcom/ca/org/acra/ReportField;->APP_VERSION_CODE:Lcom/ca/org/acra/ReportField;

    iget v0, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->APP_VERSION_NAME:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 337
    sget-object v18, Lcom/ca/org/acra/ReportField;->APP_VERSION_NAME:Lcom/ca/org/acra/ReportField;

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_25

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_1a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->DEVICE_ID:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "acra.deviceid.enable"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_1b

    const-string v17, "android.permission.READ_PHONE_STATE"

    .line 346
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/ca/org/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ca/org/acra/util/ReportUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "deviceId":Ljava/lang/String;
    if-eqz v6, :cond_1b

    .line 349
    sget-object v17, Lcom/ca/org/acra/ReportField;->DEVICE_ID:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .end local v6    # "deviceId":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "acra.syslog.enable"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_1c

    const-string v17, "android.permission.READ_LOGS"

    .line 358
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/ca/org/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1d

    .line 359
    :cond_1c
    invoke-static {}, Lcom/ca/org/acra/collector/Compatibility;->getAPILevel()I

    move-result v17

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_27

    .line 360
    :cond_1d
    sget-object v17, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v18, "READ_LOGS granted! ACRA can include LogCat and DropBox data."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->LOGCAT:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 362
    sget-object v17, Lcom/ca/org/acra/ReportField;->LOGCAT:Lcom/ca/org/acra/ReportField;

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->EVENTSLOG:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 365
    sget-object v17, Lcom/ca/org/acra/ReportField;->EVENTSLOG:Lcom/ca/org/acra/ReportField;

    const-string v18, "events"

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->RADIOLOG:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 368
    sget-object v17, Lcom/ca/org/acra/ReportField;->RADIOLOG:Lcom/ca/org/acra/ReportField;

    const-string v18, "radio"

    invoke-static/range {v18 .. v18}, Lcom/ca/org/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->DROPBOX:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 371
    sget-object v17, Lcom/ca/org/acra/ReportField;->DROPBOX:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 372
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/ca/org/acra/ACRAConfiguration;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/ca/org/acra/collector/DropBoxCollector;->read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 371
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_21
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->APPLICATION_LOG:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 380
    sget-object v17, Lcom/ca/org/acra/ReportField;->APPLICATION_LOG:Lcom/ca/org/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v19

    .line 381
    invoke-virtual/range {v19 .. v19}, Lcom/ca/org/acra/ACRAConfiguration;->applicationLogFile()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/ca/org/acra/ACRAConfiguration;->applicationLogFileLines()I

    move-result v20

    .line 380
    invoke-static/range {v18 .. v20}, Lcom/ca/org/acra/collector/LogFileCollector;->collectLogFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->MEDIA_CODEC_LIST:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 386
    sget-object v17, Lcom/ca/org/acra/ReportField;->MEDIA_CODEC_LIST:Lcom/ca/org/acra/ReportField;

    invoke-static {}, Lcom/ca/org/acra/collector/MediaCodecListCollector;->collecMediaCodecList()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->crashReportFields:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ca/org/acra/ReportField;->THREAD_DETAILS:Lcom/ca/org/acra/ReportField;

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_24

    .line 391
    sget-object v17, Lcom/ca/org/acra/ReportField;->THREAD_DETAILS:Lcom/ca/org/acra/ReportField;

    invoke-static/range {p3 .. p3}, Lcom/ca/org/acra/collector/ThreadCollector;->collect(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .end local v11    # "pi":Landroid/content/pm/PackageInfo;
    .end local v12    # "pm":Lcom/ca/org/acra/util/PackageManagerWrapper;
    .end local v13    # "prev":Ljava/lang/Throwable;
    .end local v16    # "thLoop":Ljava/lang/Throwable;
    :cond_24
    :goto_5
    return-object v4

    .line 206
    .restart local v13    # "prev":Ljava/lang/Throwable;
    .restart local v16    # "thLoop":Ljava/lang/Throwable;
    :catch_0
    move-exception v15

    .line 207
    .local v15, "th2":Ljava/lang/Throwable;
    sget-object v17, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v18, "Error while retrieving crash data"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 394
    .end local v13    # "prev":Ljava/lang/Throwable;
    .end local v15    # "th2":Ljava/lang/Throwable;
    .end local v16    # "thLoop":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 395
    .local v7, "e":Ljava/lang/RuntimeException;
    sget-object v17, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v18, "Error while retrieving crash data"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 337
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v12    # "pm":Lcom/ca/org/acra/util/PackageManagerWrapper;
    .restart local v13    # "prev":Ljava/lang/Throwable;
    .restart local v16    # "thLoop":Ljava/lang/Throwable;
    :cond_25
    :try_start_3
    const-string v17, "not set"

    goto/16 :goto_2

    .line 341
    :cond_26
    sget-object v17, Lcom/ca/org/acra/ReportField;->APP_VERSION_NAME:Lcom/ca/org/acra/ReportField;

    const-string v18, "Package info unavailable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 396
    .end local v11    # "pi":Landroid/content/pm/PackageInfo;
    .end local v12    # "pm":Lcom/ca/org/acra/util/PackageManagerWrapper;
    .end local v13    # "prev":Ljava/lang/Throwable;
    .end local v16    # "thLoop":Ljava/lang/Throwable;
    :catch_2
    move-exception v7

    .line 397
    .local v7, "e":Ljava/io/FileNotFoundException;
    sget-object v17, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error : application log file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/ca/org/acra/ACRAConfiguration;->applicationLogFile()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 375
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v11    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v12    # "pm":Lcom/ca/org/acra/util/PackageManagerWrapper;
    .restart local v13    # "prev":Ljava/lang/Throwable;
    .restart local v16    # "thLoop":Ljava/lang/Throwable;
    :cond_27
    :try_start_4
    sget-object v17, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v18, "READ_LOGS not allowed. ACRA will not include LogCat and DropBox data."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_4

    .line 398
    .end local v11    # "pi":Landroid/content/pm/PackageInfo;
    .end local v12    # "pm":Lcom/ca/org/acra/util/PackageManagerWrapper;
    .end local v13    # "prev":Ljava/lang/Throwable;
    .end local v16    # "thLoop":Ljava/lang/Throwable;
    :catch_3
    move-exception v7

    .line 399
    .local v7, "e":Ljava/io/IOException;
    sget-object v17, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error while reading application log file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/ca/org/acra/ACRAConfiguration;->applicationLogFile()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/ca/org/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
