.class public Lcom/ca/android/wrapper/Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static emmHome:Ljava/lang/String;

.field private static logger:Lcom/ca/android/wrapper/util/Logger;


# instance fields
.field private apkFile:Ljava/io/File;

.field private commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

.field private mdoPlistFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/ca/android/wrapper/util/Logger;->getLogger()Lcom/ca/android/wrapper/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/ca/android/wrapper/Wrapper;->emmHome:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    .line 36
    iput-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->apkFile:Ljava/io/File;

    .line 37
    iput-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->mdoPlistFile:Ljava/io/File;

    return-void
.end method

.method private calculateTotalDexs([J)I
    .locals 8

    .prologue
    const-wide/high16 v6, 0x40f0000000000000L    # 65536.0

    .line 90
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 92
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    add-long/2addr v2, v4

    long-to-double v2, v2

    .line 93
    cmpl-double v4, v2, v6

    if-lez v4, :cond_0

    .line 94
    div-double v0, v2, v6

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 97
    :cond_0
    double-to-int v0, v0

    return v0
.end method

.method private cleanUp()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/android/wrapper/util/FileUtil;->deleteDir(Ljava/io/File;)V

    .line 396
    return-void
.end method

.method public static doWrap(Lcom/ca/android/wrapper/config/WrapConfig;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/WrapConfig;->getRulesFile()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/WrapConfig;->isVerbose()Z

    move-result v2

    .line 45
    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/WrapConfig;->getListener()Ljava/beans/PropertyChangeListener;

    move-result-object v3

    .line 46
    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/WrapConfig;->getBuildType()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v4, "debug"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "release"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 48
    const-string v0, "release"

    .line 50
    :cond_0
    if-eqz v2, :cond_1

    .line 51
    invoke-static {}, Lcom/ca/android/wrapper/util/Logger;->getLogger()Lcom/ca/android/wrapper/util/Logger;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/ca/android/wrapper/util/Logger;->enableDebug()V

    .line 53
    invoke-virtual {v2}, Lcom/ca/android/wrapper/util/Logger;->enableInfo()V

    .line 55
    :cond_1
    new-instance v2, Lcom/ca/android/wrapper/Wrapper;

    invoke-direct {v2}, Lcom/ca/android/wrapper/Wrapper;-><init>()V

    .line 56
    new-instance v4, Lcom/ca/android/wrapper/WrapperStatusBean;

    invoke-direct {v4}, Lcom/ca/android/wrapper/WrapperStatusBean;-><init>()V

    .line 57
    new-instance v5, Lcom/ca/android/wrapper/WrapperStatusListener;

    invoke-direct {v5}, Lcom/ca/android/wrapper/WrapperStatusListener;-><init>()V

    invoke-virtual {v4, v5}, Lcom/ca/android/wrapper/WrapperStatusBean;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 58
    if-eqz v3, :cond_2

    .line 59
    invoke-virtual {v4, v3}, Lcom/ca/android/wrapper/WrapperStatusBean;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 61
    :cond_2
    invoke-virtual {p0, v4}, Lcom/ca/android/wrapper/config/WrapConfig;->setBean(Lcom/ca/android/wrapper/WrapperStatusBean;)V

    .line 63
    :try_start_0
    invoke-direct {v2, p0, v1, v0}, Lcom/ca/android/wrapper/Wrapper;->initializeConfigurations(Lcom/ca/android/wrapper/config/WrapConfig;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v1, "Wrapping Failure : Cannot read configuration"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 66
    const-string v0, "FAILURE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-direct {v2}, Lcom/ca/android/wrapper/Wrapper;->cleanUp()V

    .line 81
    :goto_0
    return-object v0

    .line 68
    :cond_3
    :try_start_1
    invoke-direct {v2}, Lcom/ca/android/wrapper/Wrapper;->generateSDK()Z

    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    invoke-direct {v2, p0}, Lcom/ca/android/wrapper/Wrapper;->startWrapping(Lcom/ca/android/wrapper/config/WrapConfig;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_1
    invoke-direct {v2}, Lcom/ca/android/wrapper/Wrapper;->cleanUp()V

    .line 81
    const-string v0, "SUCCESS"

    goto :goto_0

    .line 73
    :cond_4
    :try_start_2
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v1, "Wrapping Failure : SDK Generation failed. Wrapping did not start"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    :try_start_3
    sget-object v1, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v3, "Wrapping Failure :  Wrapping unsuccessful"

    invoke-virtual {v1, v3}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 77
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :catchall_0
    move-exception v0

    invoke-direct {v2}, Lcom/ca/android/wrapper/Wrapper;->cleanUp()V

    throw v0
.end method

.method private generateSDK()Z
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/ca/android/wrapper/tools/SDKGenerator;

    invoke-direct {v0}, Lcom/ca/android/wrapper/tools/SDKGenerator;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/tools/SDKGenerator;->generateSDK(Lcom/ca/android/wrapper/config/CommonConfig;)Z

    move-result v0

    return v0
.end method

.method private getDexMethodCount(Ljava/lang/String;)J
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 269
    iget-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    const-string v1, "TOOLS_DIR"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v1, Lorg/apache/commons/exec/CommandLine;

    const-string v2, "java"

    invoke-direct {v1, v2}, Lorg/apache/commons/exec/CommandLine;-><init>(Ljava/lang/String;)V

    .line 274
    const-string v2, "-jar"

    invoke-virtual {v1, v2}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dex-method-counts.jar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    .line 276
    invoke-virtual {v1, p1, v3}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    .line 278
    new-instance v0, Lorg/apache/commons/exec/DefaultExecutor;

    invoke-direct {v0}, Lorg/apache/commons/exec/DefaultExecutor;-><init>()V

    .line 279
    invoke-virtual {v0}, Lorg/apache/commons/exec/DefaultExecutor;->getStreamHandler()Lorg/apache/commons/exec/ExecuteStreamHandler;

    move-result-object v2

    .line 280
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 281
    new-instance v4, Lorg/apache/commons/exec/PumpStreamHandler;

    invoke-direct {v4, v3}, Lorg/apache/commons/exec/PumpStreamHandler;-><init>(Ljava/io/OutputStream;)V

    .line 282
    invoke-virtual {v0, v4}, Lorg/apache/commons/exec/DefaultExecutor;->setStreamHandler(Lorg/apache/commons/exec/ExecuteStreamHandler;)V

    .line 283
    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-interface {v2, v4}, Lorg/apache/commons/exec/ExecuteStreamHandler;->setProcessOutputStream(Ljava/io/InputStream;)V

    .line 284
    invoke-virtual {v0, v1}, Lorg/apache/commons/exec/DefaultExecutor;->execute(Lorg/apache/commons/exec/CommandLine;)I

    .line 297
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 299
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 300
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 301
    const-string v1, "[^0-9]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getDexMethodCounts()[J
    .locals 6

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ca/android/wrapper/Wrapper;->getDexMethodCount(Ljava/lang/String;)J

    move-result-wide v0

    .line 263
    iget-object v2, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    const-string v3, "SDK_APK"

    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ca/android/wrapper/Wrapper;->getDexMethodCount(Ljava/lang/String;)J

    move-result-wide v2

    .line 264
    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v0, v4, v5

    const/4 v0, 0x1

    aput-wide v2, v4, v0

    .line 265
    return-object v4
.end method

.method private getTargetDexDir(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 306
    .line 307
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 308
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 310
    array-length v6, v5

    move v3, v0

    move v1, v0

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v0, v5, v3

    .line 311
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "smali"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 312
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v0, v1, 0x1

    .line 310
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v4}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    sub-int v3, p2, v1

    .line 322
    if-ne v3, v2, :cond_2

    .line 324
    const-string v1, "smali"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 325
    const-string v1, "smali_classes"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 327
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smali_classes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    const-string v2, "sdkDirectory"

    invoke-virtual {v1, v2, v0}, Lcom/ca/android/wrapper/config/CommonConfig;->putProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-object v0

    .line 331
    :cond_2
    if-le v3, v2, :cond_1

    .line 332
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Apk should have "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dex but found only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_1
.end method

.method private initializeConfigurations(Lcom/ca/android/wrapper/config/WrapConfig;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 379
    new-instance v0, Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-direct {v0}, Lcom/ca/android/wrapper/config/CommonConfig;-><init>()V

    iput-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    .line 381
    iget-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    sget-object v1, Lcom/ca/android/wrapper/Wrapper;->emmHome:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Lcom/ca/android/wrapper/config/CommonConfig;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 382
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->getSignConfig()Lcom/ca/android/wrapper/config/SignConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->getSignConfig()Lcom/ca/android/wrapper/config/SignConfig;

    move-result-object v1

    sget-object v2, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ca/android/wrapper/config/SignConfig;->setEmmHome(Ljava/lang/String;)V

    .line 386
    :cond_0
    if-nez v0, :cond_1

    .line 387
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v1, "Exiting, Reading config failed!"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x0

    .line 391
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private integrateSDK(ZI)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 340
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    const-string v4, "SDK_DIR"

    invoke-virtual {v3, v4}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "smali/com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {v2}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 343
    const-string v3, "apktoolExtract"

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/ca/android/wrapper/Wrapper;->getTargetDexDir(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 345
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/com/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    iget-object v6, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/ca/android/wrapper/config/CommonConfig;->sdkSmaliDir:Ljava/lang/String;

    .line 348
    :try_start_0
    invoke-static {v1, v5}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/assets/conf/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ca/android/wrapper/Wrapper;->mdoPlistFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    :try_start_1
    iget-object v4, p0, Lcom/ca/android/wrapper/Wrapper;->mdoPlistFile:Ljava/io/File;

    invoke-static {v4, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 363
    if-nez p1, :cond_0

    .line 365
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/assets/CaMDOInterceptor.js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    :try_start_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    const-string v5, "SDK_DIR"

    invoke-virtual {v4, v5}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "assets/CaMDOInterceptor.js"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-static {v2, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 375
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 349
    :catch_0
    move-exception v1

    .line 350
    sget-object v2, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :catch_1
    move-exception v1

    .line 358
    sget-object v2, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :catch_2
    move-exception v1

    .line 370
    sget-object v2, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startWrapping(Lcom/ca/android/wrapper/config/WrapConfig;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->getApkFile()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->getPlistFile()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->getListener()Ljava/beans/PropertyChangeListener;

    .line 105
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->isNores()Z

    move-result v2

    .line 106
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->getSignConfig()Lcom/ca/android/wrapper/config/SignConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ca/android/wrapper/config/SignConfig;->isNoSign()Z

    move-result v3

    .line 107
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->isDisableJsInterception()Z

    move-result v4

    .line 108
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->getBean()Lcom/ca/android/wrapper/WrapperStatusBean;

    move-result-object v5

    .line 109
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/ca/android/wrapper/Wrapper;->apkFile:Ljava/io/File;

    .line 110
    iget-object v6, p0, Lcom/ca/android/wrapper/Wrapper;->apkFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 111
    sget-object v1, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting, Provided APK File does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting, Provided APK File does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->mdoPlistFile:Ljava/io/File;

    .line 116
    iget-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->mdoPlistFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    const-string v0, "Exiting, Provided MDO Plist File does not exist"

    .line 118
    sget-object v1, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v1, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Step 1 of 4: Extracting Target APK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/Wrapper;->apkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->APK_EXTRACTION:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStep(Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;)V

    .line 129
    new-instance v1, Lcom/ca/android/wrapper/tools/APKExtractor;

    iget-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->apkFile:Ljava/io/File;

    invoke-direct {v1, v0, v2}, Lcom/ca/android/wrapper/tools/APKExtractor;-><init>(Ljava/io/File;Z)V

    .line 130
    iget-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->isVerbose()Z

    move-result v6

    invoke-virtual {v1, v0, v6}, Lcom/ca/android/wrapper/tools/APKExtractor;->extractAPKUsingAPKTool(Lcom/ca/android/wrapper/config/CommonConfig;Z)Z

    move-result v0

    .line 133
    if-nez v0, :cond_2

    .line 134
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v1, "Exiting, APK Extraction failed!"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Exiting, APK Extraction failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v6, "APK Extraction Completed!"

    invoke-virtual {v0, v6}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 141
    new-instance v6, Lcom/ca/android/wrapper/tools/SmaliParser;

    iget-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->apkFile:Ljava/io/File;

    invoke-direct {v6, v0}, Lcom/ca/android/wrapper/tools/SmaliParser;-><init>(Ljava/io/File;)V

    .line 142
    const-string v0, "Step 2 of 4: Instrumenting"

    .line 144
    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->INSTRUMENTATION:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStep(Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;)V

    .line 146
    iget-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {v6, v0}, Lcom/ca/android/wrapper/tools/SmaliParser;->instrument(Lcom/ca/android/wrapper/config/CommonConfig;)Z

    move-result v0

    .line 148
    if-nez v0, :cond_3

    .line 149
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v1, "Exiting, Smali manipulation failed!"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Exiting, Smali manipulation failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_3
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v7, "Smali manipulation Completed!"

    invoke-virtual {v0, v7}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/ca/android/wrapper/Wrapper;->getDexMethodCounts()[J

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/ca/android/wrapper/Wrapper;->calculateTotalDexs([J)I

    move-result v0

    .line 158
    invoke-direct {p0, v4, v0}, Lcom/ca/android/wrapper/Wrapper;->integrateSDK(ZI)Z

    move-result v0

    .line 159
    if-nez v0, :cond_4

    .line 160
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v1, "Exiting, SDK Integration failed!"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Exiting, SDK Integration failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_4
    sget-object v4, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v7, "SDK Integration Completed!"

    invoke-virtual {v4, v7}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 166
    sget-object v4, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v7, "Processing custom overrides"

    invoke-virtual {v4, v7}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v6}, Lcom/ca/android/wrapper/tools/SmaliParser;->processCustomReplacements()V

    .line 169
    if-nez v2, :cond_6

    .line 171
    iget-object v0, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {v1, v0}, Lcom/ca/android/wrapper/tools/APKExtractor;->processManifestChanges(Lcom/ca/android/wrapper/config/CommonConfig;)Z

    move-result v0

    .line 172
    if-nez v0, :cond_5

    .line 173
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v1, "Exiting, AndroidManifest Binary to Text failed!"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Exiting, AndroidManifest Binary to Text failed!!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_5
    sget-object v2, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v4, "AndroidManifest.xml permission modification Completed!"

    invoke-virtual {v2, v4}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 184
    :goto_0
    const-string v2, "Step 3 of 4: Packaging instrumented APK."

    .line 186
    invoke-virtual {v5, v2}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 187
    sget-object v2, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->PACK:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    invoke-virtual {v5, v2}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStep(Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;)V

    .line 188
    iget-object v2, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->isVerbose()Z

    move-result v4

    invoke-virtual {v1, v2, v5, v4}, Lcom/ca/android/wrapper/tools/APKExtractor;->packageAPKUsingAPKTool(Lcom/ca/android/wrapper/config/CommonConfig;Lcom/ca/android/wrapper/WrapperStatusBean;Z)Ljava/lang/String;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_8

    .line 190
    const-string v2, "NORES-RETRY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 192
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 193
    const-string v0, "Retrying Wrapping with nores Option."

    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 194
    const-string v0, "-------------------"

    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ca/android/wrapper/config/WrapConfig;->setNores(Z)V

    .line 196
    invoke-static {p1}, Lcom/ca/android/wrapper/Wrapper;->doWrap(Lcom/ca/android/wrapper/config/WrapConfig;)Ljava/lang/String;

    .line 197
    const-string v0, "SUCCESS"

    .line 252
    :goto_1
    return-object v0

    .line 179
    :cond_6
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "resources not extracted. Won\'t modify AndroidManifest.xml"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_7
    const-string v2, "ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 201
    const-string v0, "Wrapping Failure : : Error in packaging APK"

    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    .line 205
    :cond_8
    const-string v1, "Exiting, Packaging using apktool failed!"

    .line 206
    if-nez v0, :cond_9

    .line 207
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_9
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v1, "Packing with apktool Completed!"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/ca/android/wrapper/tools/APKSigner;

    iget-object v1, p0, Lcom/ca/android/wrapper/Wrapper;->apkFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/ca/android/wrapper/tools/APKSigner;-><init>(Ljava/io/File;)V

    .line 214
    if-nez v3, :cond_b

    .line 216
    const-string v1, "Step 4 of 4: Signing APK with certificate."

    .line 219
    invoke-virtual {v5, v1}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 220
    sget-object v1, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->SIGN:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    invoke-virtual {v5, v1}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStep(Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;)V

    .line 221
    iget-object v1, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->getSignConfig()Lcom/ca/android/wrapper/config/SignConfig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ca/android/wrapper/tools/APKSigner;->sign(Lcom/ca/android/wrapper/config/CommonConfig;Lcom/ca/android/wrapper/config/SignConfig;)Z

    move-result v1

    .line 223
    if-nez v1, :cond_a

    .line 224
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v1, "Exiting, Signing APK failed!"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Exiting, Signing APK failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_a
    sget-object v1, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v2, "Signing APK Completed!"

    invoke-virtual {v1, v2}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 240
    :goto_2
    iget-object v1, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/WrapConfig;->getOutputFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ca/android/wrapper/tools/APKSigner;->align(Lcom/ca/android/wrapper/config/CommonConfig;Ljava/lang/String;)Z

    move-result v0

    .line 241
    const-string v1, ""

    .line 242
    if-nez v0, :cond_c

    .line 243
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v1, "Exiting, Align APK failed!"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Exiting, Align APK failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_b
    const-string v1, "Not signing the APK file since -nosign is passed in"

    invoke-virtual {v5, v1}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 232
    sget-object v1, Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;->SIGN:Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;

    invoke-virtual {v5, v1}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStep(Lcom/ca/android/wrapper/WrapperStatusBean$WrappingStep;)V

    .line 233
    iget-object v1, p0, Lcom/ca/android/wrapper/Wrapper;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {v1}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 234
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "manifest_modded_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ca/android/wrapper/Wrapper;->apkFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "signed_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/ca/android/wrapper/Wrapper;->apkFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_2

    .line 246
    :cond_c
    sget-object v0, Lcom/ca/android/wrapper/Wrapper;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v1, "Align APK Completed!"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 248
    const-string v0, "Smart Containerization completed successfully. Please sign with your enterprise certificate and deploy!"

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrapping Success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ca/android/wrapper/WrapperStatusBean;->setWrappingStatus(Ljava/lang/String;)V

    .line 252
    const-string v0, "SUCCESS"

    goto/16 :goto_1
.end method
