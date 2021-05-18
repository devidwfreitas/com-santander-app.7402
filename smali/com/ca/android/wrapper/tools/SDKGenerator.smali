.class public Lcom/ca/android/wrapper/tools/SDKGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private logger:Lcom/ca/android/wrapper/util/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/ca/android/wrapper/util/Logger;->getLogger()Lcom/ca/android/wrapper/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/android/wrapper/tools/SDKGenerator;->logger:Lcom/ca/android/wrapper/util/Logger;

    return-void
.end method


# virtual methods
.method public generateSDK(Lcom/ca/android/wrapper/config/CommonConfig;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 19
    :try_start_0
    const-string v0, "SDK_APK"

    invoke-virtual {p1, v0}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v2, p0, Lcom/ca/android/wrapper/tools/SDKGenerator;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using container file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 21
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SDKGenerator;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exiting, Provided SDK APK File does not exist. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exiting, Provided SDK APK File does not exist. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    iget-object v2, p0, Lcom/ca/android/wrapper/tools/SDKGenerator;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    move v0, v1

    .line 43
    :goto_0
    return v0

    .line 30
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ca/android/wrapper/tools/APKExtractor;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/ca/android/wrapper/tools/APKExtractor;-><init>(Ljava/io/File;Z)V

    .line 31
    invoke-virtual {v0, p1}, Lcom/ca/android/wrapper/tools/APKExtractor;->extractSDKAPKUsingAPKTool(Lcom/ca/android/wrapper/config/CommonConfig;)Z

    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/ca/android/wrapper/tools/SDKGenerator;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v2, "Exiting, SDK APK Extraction failed!"

    invoke-virtual {v0, v2}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Exiting, SDK APK Extraction failed!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/ca/android/wrapper/tools/SDKGenerator;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v3, "SDK APK Extraction Completed!"

    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
