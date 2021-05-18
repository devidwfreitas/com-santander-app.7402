.class public Lcom/ca/android/wrapper/tools/SmaliParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANDROID_APP_INSTRUMENTATION_FILE:Ljava/lang/String; = "android.xml"

.field private static final CAMDOCALLBACK_CLIENT_FILE:Ljava/lang/String;

.field private static final CAMDOINTEGRATION_CLIENT_FILE:Ljava/lang/String;

.field private static final CORDOVA_APP_INSTRUMENTATION_FILE:Ljava/lang/String; = "android-cordova.xml"

.field private static final methodReturnPattern:Ljava/util/regex/Pattern;


# instance fields
.field private THREAD_MAX_SIZE:I

.field private apkFile:Ljava/io/File;

.field private callbackAppJava:Ljava/lang/String;

.field private callbackClientJava:Ljava/lang/String;

.field private commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

.field private df:Ljava/text/DecimalFormat;

.field private fromIntegrationReplace:Ljava/lang/String;

.field private integrationAppJava:Ljava/lang/String;

.field private integrationClientJava:Ljava/lang/String;

.field private logger:Lcom/ca/android/wrapper/util/Logger;

.field specialFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private toIntegrationReplace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ca"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "integration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CaMDOIntegration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/tools/SmaliParser;->CAMDOINTEGRATION_CLIENT_FILE:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ca"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "integration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CaMDOCallback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/tools/SmaliParser;->CAMDOCALLBACK_CLIENT_FILE:Ljava/lang/String;

    .line 50
    const-string v0, "return\\-*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/tools/SmaliParser;->methodReturnPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/ca/android/wrapper/util/Logger;->getLogger()Lcom/ca/android/wrapper/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    .line 34
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    iput-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->df:Ljava/text/DecimalFormat;

    .line 35
    const/16 v0, 0xa

    iput v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->THREAD_MAX_SIZE:I

    .line 37
    iput-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->specialFiles:Ljava/util/ArrayList;

    .line 41
    iput-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->integrationClientJava:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->callbackClientJava:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->integrationAppJava:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->callbackAppJava:Ljava/lang/String;

    .line 47
    const-string v0, "Lcom/ca/integration/CaMDOIntegration"

    iput-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->toIntegrationReplace:Ljava/lang/String;

    .line 48
    const-string v0, "Lcom/ca/android/app/CaMDOIntegration"

    iput-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->fromIntegrationReplace:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->apkFile:Ljava/io/File;

    .line 54
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->df:Ljava/text/DecimalFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 55
    return-void
.end method

.method private autoDetect(Lcom/ca/android/wrapper/config/CommonConfig;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 78
    const-string v1, "SMALI_REPLACEMENT_FILE"

    invoke-virtual {p1, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "AUTO_DETECT"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 84
    iget-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v2, "Auto-detecting App\'s Instrumentation file"

    invoke-virtual {v1, v2}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apktoolExtract"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 90
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "smali"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 92
    if-nez v1, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 93
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ca/android/wrapper/tools/SmaliParser;->checkCordovaApp(Ljava/lang/String;)Z

    move-result v1

    .line 95
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    .line 96
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ca/android/wrapper/tools/SmaliParser;->checkCrossWalkApp(Ljava/lang/String;)Z

    move-result v0

    .line 89
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_2
    if-eqz v0, :cond_3

    .line 102
    const-string v0, "isCrossWalk"

    const-string v2, "true"

    invoke-virtual {p1, v0, v2}, Lcom/ca/android/wrapper/config/CommonConfig;->putProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App is cordova based app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 106
    if-eqz v1, :cond_4

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONF_DIR"

    invoke-virtual {p1, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android-cordova.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_1
    iget-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrapper is using Instrumentation file :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v0}, Lcom/ca/android/wrapper/config/CommonConfig;->parseXML(Ljava/lang/String;)Z

    move-result v0

    .line 114
    :goto_2
    return v0

    .line 109
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONF_DIR"

    invoke-virtual {p1, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 114
    :cond_5
    invoke-virtual {p1, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->parseXML(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2
.end method

.method private checkCordovaApp(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cordova"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private checkCrossWalkApp(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xwalk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "core"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private collectFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 470
    const-string v0, ".smali"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    iget-object v2, v2, Lcom/ca/android/wrapper/config/CommonConfig;->sdkSmaliDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_0
    return-object v1

    .line 476
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    iget-object v2, v2, Lcom/ca/android/wrapper/config/CommonConfig;->sdkSmaliDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 478
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".smali"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 479
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAllSmaliDirs(Ljava/lang/String;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 283
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 285
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 286
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "smali"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    return-object v1
.end method

.method private insertWrapperMethod(Ljava/lang/String;Ljava/io/File;Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-virtual {p3}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->getFromMethod()Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-virtual {p3}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->getToMethod()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-virtual {p3}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->getCopyDirFrom()Ljava/lang/String;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_0
    invoke-virtual {p3}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->getCopyDirTo()Ljava/lang/String;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_1

    .line 303
    const-string v5, "$SDK_SMALI_DIR"

    invoke-virtual {v1, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    :cond_1
    invoke-virtual {p3}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->getWrapperMethodSmalicode()Ljava/lang/String;

    move-result-object v5

    .line 315
    const-string v6, "&lt;"

    const-string v7, "<"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 316
    const-string v6, "&gt;"

    const-string v7, ">"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 317
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 318
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    :try_start_0
    invoke-static {v6, v0}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_2
    :goto_0
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 333
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 335
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 336
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 337
    const/4 v0, 0x1

    move-object v1, v2

    .line 341
    :cond_3
    if-eqz v0, :cond_4

    const-string v8, ".end method"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 343
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v3

    goto :goto_1

    .line 322
    :catch_0
    move-exception v1

    .line 323
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 324
    iget-object v7, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Copy failed from:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " to="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "Exception="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_4
    :try_start_2
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 357
    :catch_1
    move-exception v0

    .line 358
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 359
    iget-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while modifying smali file :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 361
    :goto_2
    return-void

    .line 349
    :cond_5
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 350
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 352
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 356
    :cond_6
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private insertWrapperMethods(Ljava/lang/String;Lcom/ca/android/wrapper/config/CommonConfig;)V
    .locals 9

    .prologue
    .line 260
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/CommonConfig;->getWrapperMethodElements()Ljava/util/List;

    move-result-object v1

    .line 262
    invoke-direct {p0, p1}, Lcom/ca/android/wrapper/tools/SmaliParser;->getAllSmaliDirs(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    .line 263
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v2

    .line 264
    const-string v0, "smali"

    .line 266
    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smali_classes"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 269
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;->getTargetFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 272
    new-instance v7, Ljava/io/File;

    const-string v8, "$SMALI_DIR"

    invoke-virtual {v5, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-direct {p0, v2, v7, v1, p1}, Lcom/ca/android/wrapper/tools/SmaliParser;->insertWrapperMethod(Ljava/lang/String;Ljava/io/File;Lcom/ca/android/wrapper/config/WrapperMethodInsertElement;Ljava/lang/String;)V

    goto :goto_1

    .line 279
    :cond_2
    return-void

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method private replaceCallbackFile()V
    .locals 6

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    const-string v1, "appCallbackFile"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->callbackAppJava:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->callbackClientJava:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->callbackAppJava:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 182
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->callbackAppJava:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->callbackClientJava:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->fromIntegrationReplace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->fromIntegrationReplace:Ljava/lang/String;

    iget-object v5, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->toIntegrationReplace:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 218
    iget-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while modifying smali file :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 222
    :cond_1
    :goto_2
    return-void

    .line 186
    :catch_1
    move-exception v2

    .line 187
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    iget-object v3, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback Copy failed from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " to="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Exception="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 201
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 202
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 205
    :cond_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 208
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {v3}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sdk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "smali"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ca/android/wrapper/tools/SmaliParser;->CAMDOCALLBACK_CLIENT_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".smali"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 211
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 212
    :catch_2
    move-exception v1

    .line 213
    :try_start_4
    iget-object v2, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in deleting SDK  CAMdoCallBack file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " file:- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2
.end method

.method private replaceIntegrationFile()V
    .locals 6

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    const-string v1, "appIntegrationFile"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->integrationAppJava:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->integrationClientJava:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->integrationAppJava:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->integrationAppJava:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->integrationClientJava:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 238
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 239
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->fromIntegrationReplace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    iget-object v4, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->fromIntegrationReplace:Ljava/lang/String;

    iget-object v5, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->toIntegrationReplace:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 253
    iget-object v1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while modifying smali file :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 256
    :cond_1
    :goto_2
    return-void

    .line 231
    :catch_1
    move-exception v2

    .line 232
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 233
    iget-object v3, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Integration Copy failed from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " to="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Exception="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 246
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 247
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 250
    :cond_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public addSpecialz(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/CommonConfig;->getSpecialReplaceDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/android/wrapper/config/ReplacementElement;

    .line 432
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    :cond_1
    return-void
.end method

.method public getFileNames(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 365
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move v0, v1

    .line 367
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_7

    .line 368
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    move v2, v1

    .line 370
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_6

    .line 371
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".smali"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ca/android/wrapper/tools/SmaliParser;->CAMDOINTEGRATION_CLIENT_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 374
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->integrationClientJava:Ljava/lang/String;

    .line 376
    :cond_0
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ca/android/wrapper/tools/SmaliParser;->CAMDOCALLBACK_CLIENT_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 377
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->callbackClientJava:Ljava/lang/String;

    .line 381
    :cond_1
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 382
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 383
    invoke-virtual {p0, v5, p2, p3}, Lcom/ca/android/wrapper/tools/SmaliParser;->getFileNames(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 370
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 388
    :cond_3
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".smali"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 389
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/ca/android/wrapper/tools/SmaliParser;->CAMDOINTEGRATION_CLIENT_FILE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 390
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->integrationClientJava:Ljava/lang/String;

    .line 392
    :cond_4
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/ca/android/wrapper/tools/SmaliParser;->CAMDOCALLBACK_CLIENT_FILE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 393
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->callbackClientJava:Ljava/lang/String;

    .line 395
    :cond_5
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 399
    :cond_7
    return-void
.end method

.method public instrument(Lcom/ca/android/wrapper/config/CommonConfig;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 126
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ca/android/wrapper/tools/SmaliParser;->autoDetect(Lcom/ca/android/wrapper/config/CommonConfig;)Z

    move-result v0

    .line 127
    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v2, "Exiting, Reading Instrumentation file failed!"

    invoke-virtual {v0, v2}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    move v0, v1

    .line 175
    :goto_0
    return v0

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    .line 134
    iget v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->THREAD_MAX_SIZE:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 139
    const-string v4, "apktoolExtract"

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->specialFiles:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v0, v6}, Lcom/ca/android/wrapper/tools/SmaliParser;->getFileNames(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 144
    iget v5, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->THREAD_MAX_SIZE:I

    invoke-virtual {p0, v0, v5}, Lcom/ca/android/wrapper/tools/SmaliParser;->splitList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 145
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 147
    new-instance v7, Lcom/ca/android/wrapper/tools/SmaliReplaceTask;

    invoke-direct {v7, p1, v0}, Lcom/ca/android/wrapper/tools/SmaliReplaceTask;-><init>(Lcom/ca/android/wrapper/config/CommonConfig;Ljava/util/List;)V

    .line 148
    invoke-interface {v2, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 149
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    iget-object v2, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    move v0, v1

    .line 175
    goto :goto_0

    .line 152
    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 156
    :catch_1
    move-exception v0

    .line 157
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    iget-object v6, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    goto :goto_2

    .line 161
    :cond_2
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 162
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v2, "Inserting Wrapper Methods...."

    invoke-virtual {v0, v2}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ca/android/wrapper/tools/SmaliParser;->insertWrapperMethods(Ljava/lang/String;Lcom/ca/android/wrapper/config/CommonConfig;)V

    .line 164
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v2, "Replacing Integration Smali ....."

    invoke-virtual {v0, v2}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/ca/android/wrapper/tools/SmaliParser;->replaceIntegrationFile()V

    .line 166
    invoke-direct {p0}, Lcom/ca/android/wrapper/tools/SmaliParser;->replaceCallbackFile()V

    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Done Instrumenting.\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 171
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public processCustomReplacements()V
    .locals 7

    .prologue
    .line 440
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/CommonConfig;->configureStubs()V

    .line 441
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    const-string v1, "isCrossWalk"

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/config/CommonConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    const/4 v0, 0x0

    .line 443
    if-eqz v1, :cond_6

    const/4 v0, 0x1

    move v2, v0

    .line 445
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 446
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/CommonConfig;->getSpecialReplaceDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/android/wrapper/config/ReplacementElement;

    .line 447
    invoke-virtual {v0}, Lcom/ca/android/wrapper/config/ReplacementElement;->getFile()Ljava/lang/String;

    move-result-object v5

    .line 448
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 449
    if-nez v1, :cond_0

    .line 450
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 456
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    const-string v1, "JSCaMDOIntegration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    const-string v1, "JSCaMDOIntegration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 459
    :cond_4
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 460
    invoke-direct {p0, v0}, Lcom/ca/android/wrapper/tools/SmaliParser;->collectFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 461
    iget-object v6, p0, Lcom/ca/android/wrapper/tools/SmaliParser;->commonConfig:Lcom/ca/android/wrapper/config/CommonConfig;

    iget-boolean v6, v6, Lcom/ca/android/wrapper/config/CommonConfig;->isMultiDex:Z

    invoke-static {v0, v1, v6}, Lcom/ca/android/wrapper/tools/ReplaceUtil;->processSpecial(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_2

    .line 465
    :cond_5
    return-void

    :cond_6
    move v2, v0

    goto :goto_0
.end method

.method public splitList(Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 404
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 405
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int v1, v0, p2

    .line 406
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int v2, v0, p2

    .line 409
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v3, v5, :cond_1

    .line 411
    if-lez v0, :cond_0

    .line 413
    add-int/lit8 v2, v0, -0x1

    .line 415
    add-int/lit8 v0, v1, 0x1

    .line 422
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    add-int v7, v3, v0

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {p1, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/2addr v0, v3

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_0
    move v2, v0

    move v0, v1

    .line 419
    goto :goto_1

    .line 425
    :cond_1
    return-object v4
.end method
