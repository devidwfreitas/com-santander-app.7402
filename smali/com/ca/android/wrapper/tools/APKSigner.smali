.class public Lcom/ca/android/wrapper/tools/APKSigner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private apkFile:Ljava/io/File;

.field private logger:Lcom/ca/android/wrapper/util/Logger;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/ca/android/wrapper/util/Logger;->getLogger()Lcom/ca/android/wrapper/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/android/wrapper/tools/APKSigner;->logger:Lcom/ca/android/wrapper/util/Logger;

    .line 24
    iput-object p1, p0, Lcom/ca/android/wrapper/tools/APKSigner;->apkFile:Ljava/io/File;

    .line 25
    return-void
.end method


# virtual methods
.method public align(Lcom/ca/android/wrapper/config/CommonConfig;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lcom/ca/android/wrapper/tools/APKSigner;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v3, "APK Align Started"

    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 83
    :try_start_0
    const-string v2, "TOOLS_DIR"

    invoke-virtual {p1, v2}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v3, "OSNAME"

    invoke-virtual {p1, v3}, Lcom/ca/android/wrapper/config/CommonConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "zipalign"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    iget-object v2, p0, Lcom/ca/android/wrapper/tools/APKSigner;->apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/ca/android/wrapper/tools/APKSigner;->apkFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "wrapped_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/ca/android/wrapper/tools/APKSigner;->apkFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    :cond_0
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    const-string v6, "-f"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "4"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "signed_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/ca/android/wrapper/tools/APKSigner;->apkFile:Ljava/io/File;

    .line 104
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x4

    aput-object v2, v5, v3

    .line 106
    invoke-static {v5}, Lcom/ca/android/wrapper/tools/APKExtractor;->executeCommand([Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "zipalign failed ..."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iget-object v2, p0, Lcom/ca/android/wrapper/tools/APKSigner;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    move v0, v1

    .line 115
    :goto_0
    return v0

    .line 109
    :cond_1
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrapped APK file is located at:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sign(Lcom/ca/android/wrapper/config/CommonConfig;Lcom/ca/android/wrapper/config/SignConfig;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/ca/android/wrapper/tools/APKSigner;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v3, "APK Signing Started"

    invoke-virtual {v2, v3}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 30
    :try_start_0
    invoke-virtual {p1}, Lcom/ca/android/wrapper/config/CommonConfig;->getTempFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 31
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "signed_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ca/android/wrapper/tools/APKSigner;->apkFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "manifest_modded_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ca/android/wrapper/tools/APKSigner;->apkFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {p2}, Lcom/ca/android/wrapper/config/SignConfig;->isValid(Lcom/ca/android/wrapper/config/SignConfig;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 34
    iget-object v5, p0, Lcom/ca/android/wrapper/tools/APKSigner;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using default configuration of jarsigner....."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getSigningProperties()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/ca/android/wrapper/config/SignConfig;->getDefault()Lcom/ca/android/wrapper/config/SignConfig;

    move-result-object p2

    .line 40
    :goto_0
    const/16 v5, 0xf

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "jarsigner"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "-tsa"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "http://timestamp.digicert.com"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "-sigalg"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 43
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getSignatureAlgorithm()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "-digestalg"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 44
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "-keystore"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 45
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getKeyStoreFilePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "manifest_modded_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ca/android/wrapper/tools/APKSigner;->apkFile:Ljava/io/File;

    .line 46
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    .line 47
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getAlias()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "-keypass"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    .line 48
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getKeyPassword()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "-storepass"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    .line 49
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getStorePassword()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 52
    const/16 v6, 0xd

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "jarsigner"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "-sigalg"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 54
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getSignatureAlgorithm()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "-digestalg"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 55
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "-keystore"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 56
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getKeyStoreFilePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "manifest_modded_"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/ca/android/wrapper/tools/APKSigner;->apkFile:Ljava/io/File;

    .line 57
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/16 v2, 0x8

    .line 58
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getAlias()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/16 v2, 0x9

    const-string v7, "-keypass"

    aput-object v7, v6, v2

    const/16 v2, 0xa

    .line 59
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getKeyPassword()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/16 v2, 0xb

    const-string v7, "-storepass"

    aput-object v7, v6, v2

    const/16 v2, 0xc

    .line 60
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getStorePassword()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 63
    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->isNoTsa()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/ca/android/wrapper/tools/APKSigner;->logger:Lcom/ca/android/wrapper/util/Logger;

    const-string v5, "APK Signing: Signing the jar without TSA option based on user request."

    invoke-virtual {v2, v5}, Lcom/ca/android/wrapper/util/Logger;->info(Ljava/lang/String;)V

    .line 65
    invoke-static {v6}, Lcom/ca/android/wrapper/tools/APKExtractor;->executeCommand([Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "jar signing failed..."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    iget-object v2, p0, Lcom/ca/android/wrapper/tools/APKSigner;->logger:Lcom/ca/android/wrapper/util/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ca/android/wrapper/util/Logger;->severe(Ljava/lang/String;)V

    move v0, v1

    .line 76
    :goto_1
    return v0

    .line 38
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/ca/android/wrapper/tools/APKSigner;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using user passed in jarsigner "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/ca/android/wrapper/config/SignConfig;->getSigningProperties()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_1
    invoke-static {v5}, Lcom/ca/android/wrapper/tools/APKExtractor;->executeCommand([Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "jar signing failed..."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
