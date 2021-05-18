.class public Lcom/ca/android/wrapper/config/SignConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static CONF:Ljava/lang/String;

.field private static JAR_SIGNER_PROPERTIES:Ljava/lang/String;

.field private static MDO_KEYSTORE:Ljava/lang/String;

.field public static defaultConfig:Lcom/ca/android/wrapper/config/SignConfig;

.field private static logger:Lcom/ca/android/wrapper/util/Logger;


# instance fields
.field private alias:Ljava/lang/String;

.field private digestAlgorithm:Ljava/lang/String;

.field private emmHome:Ljava/lang/String;

.field private keyPassword:Ljava/lang/String;

.field private keyStoreFilePath:Ljava/lang/String;

.field private noSign:Z

.field private noTsa:Z

.field private signatureAlgorithm:Ljava/lang/String;

.field private signingProperties:Ljava/lang/String;

.field private storePassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/ca/android/wrapper/util/Logger;->getLogger()Lcom/ca/android/wrapper/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/ca/android/wrapper/config/SignConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    .line 17
    const-string v0, "jarsigner.properties"

    sput-object v0, Lcom/ca/android/wrapper/config/SignConfig;->JAR_SIGNER_PROPERTIES:Ljava/lang/String;

    .line 18
    const-string v0, "conf"

    sput-object v0, Lcom/ca/android/wrapper/config/SignConfig;->CONF:Ljava/lang/String;

    .line 19
    const-string v0, "mdo.keystore"

    sput-object v0, Lcom/ca/android/wrapper/config/SignConfig;->MDO_KEYSTORE:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/ca/android/wrapper/config/SignConfig;->defaultConfig:Lcom/ca/android/wrapper/config/SignConfig;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->emmHome:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/ca/android/wrapper/config/SignConfig;->signingProperties:Ljava/lang/String;

    .line 34
    iput-boolean p2, p0, Lcom/ca/android/wrapper/config/SignConfig;->noSign:Z

    .line 35
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/SignConfig;->initializeProperties()V

    .line 38
    :cond_0
    return-void
.end method

.method public static getDefault()Lcom/ca/android/wrapper/config/SignConfig;
    .locals 3

    .prologue
    .line 172
    sget-object v0, Lcom/ca/android/wrapper/config/SignConfig;->defaultConfig:Lcom/ca/android/wrapper/config/SignConfig;

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lcom/ca/android/wrapper/config/SignConfig;->logger:Lcom/ca/android/wrapper/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ca/android/wrapper/config/SignConfig;->CONF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ca/android/wrapper/config/SignConfig;->JAR_SIGNER_PROPERTIES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/util/Logger;->debug(Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/ca/android/wrapper/config/SignConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ca/android/wrapper/config/SignConfig;->CONF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ca/android/wrapper/config/SignConfig;->JAR_SIGNER_PROPERTIES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ca/android/wrapper/config/SignConfig;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/ca/android/wrapper/config/SignConfig;->defaultConfig:Lcom/ca/android/wrapper/config/SignConfig;

    .line 175
    sget-object v0, Lcom/ca/android/wrapper/config/SignConfig;->defaultConfig:Lcom/ca/android/wrapper/config/SignConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ca/android/wrapper/config/SignConfig;->CONF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ca/android/wrapper/config/SignConfig;->MDO_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/android/wrapper/config/SignConfig;->setKeyStoreFilePath(Ljava/lang/String;)V

    .line 177
    :cond_0
    sget-object v0, Lcom/ca/android/wrapper/config/SignConfig;->defaultConfig:Lcom/ca/android/wrapper/config/SignConfig;

    return-object v0
.end method

.method public static isValid(Lcom/ca/android/wrapper/config/SignConfig;)Z
    .locals 1

    .prologue
    .line 181
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/SignConfig;->getKeyStoreFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/SignConfig;->getKeyPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ca/android/wrapper/config/SignConfig;->getSignatureAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static noKeyStoreFilePath(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 189
    if-eqz p0, :cond_0

    if-eqz p0, :cond_1

    const-string v0, "$EMMHOME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->digestAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEmmHome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->emmHome:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->keyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyStoreFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->keyStoreFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/ca/android/wrapper/config/SignConfig;->noKeyStoreFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ca/android/wrapper/config/SignConfig;->CONF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ca/android/wrapper/config/SignConfig;->MDO_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->keyStoreFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSignatureAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->signatureAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getSigningProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->signingProperties:Ljava/lang/String;

    return-object v0
.end method

.method public getStorePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->storePassword:Ljava/lang/String;

    return-object v0
.end method

.method public initializeProperties()V
    .locals 4

    .prologue
    .line 113
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 114
    const/4 v2, 0x0

    .line 116
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/ca/android/wrapper/config/SignConfig;->signingProperties:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 118
    const-string v2, "noTsa"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ca/android/wrapper/config/SignConfig;->noTsa:Z

    .line 119
    const-string v2, "keyStoreFilePath"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/android/wrapper/config/SignConfig;->keyStoreFilePath:Ljava/lang/String;

    .line 121
    const-string v2, "keyPassword"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/android/wrapper/config/SignConfig;->keyPassword:Ljava/lang/String;

    .line 122
    const-string v2, "storePassword"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/android/wrapper/config/SignConfig;->storePassword:Ljava/lang/String;

    .line 123
    const-string v2, "alias"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/android/wrapper/config/SignConfig;->alias:Ljava/lang/String;

    .line 124
    const-string v2, "signatureAlgorithm"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/android/wrapper/config/SignConfig;->signatureAlgorithm:Ljava/lang/String;

    .line 125
    const-string v2, "digestAlgorithm"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->digestAlgorithm:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    if-eqz v1, :cond_0

    .line 131
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 127
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    if-eqz v1, :cond_0

    .line 131
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 132
    :catch_2
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    .line 131
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 134
    :cond_1
    :goto_3
    throw v0

    .line 132
    :catch_3
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 129
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 126
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public isNoSign()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->noSign:Z

    return v0
.end method

.method public isNoTsa()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->noTsa:Z

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ca/android/wrapper/config/SignConfig;->alias:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setDigestAlgorithm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/ca/android/wrapper/config/SignConfig;->digestAlgorithm:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setEmmHome(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ca/android/wrapper/config/SignConfig;->emmHome:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setKeyPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ca/android/wrapper/config/SignConfig;->keyPassword:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setKeyStoreFilePath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    invoke-static {p1}, Lcom/ca/android/wrapper/config/SignConfig;->noKeyStoreFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ca/android/wrapper/config/CommonConfig;->productHome:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ca/android/wrapper/config/SignConfig;->CONF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ca/android/wrapper/config/SignConfig;->MDO_KEYSTORE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/android/wrapper/config/SignConfig;->keyStoreFilePath:Ljava/lang/String;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/ca/android/wrapper/config/SignConfig;->keyStoreFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setNoSign(Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/ca/android/wrapper/config/SignConfig;->noSign:Z

    .line 109
    return-void
.end method

.method public setNoTsa(Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/ca/android/wrapper/config/SignConfig;->noTsa:Z

    .line 101
    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/ca/android/wrapper/config/SignConfig;->signatureAlgorithm:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setSigningProperties(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ca/android/wrapper/config/SignConfig;->signingProperties:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setStorePassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ca/android/wrapper/config/SignConfig;->storePassword:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignConfig{keyStoreFilePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/SignConfig;->keyStoreFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/SignConfig;->keyPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storePassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/SignConfig;->storePassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alias=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/SignConfig;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signatureAlgorithm=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/SignConfig;->signatureAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", digestAlgorithm=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/SignConfig;->digestAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noTsa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ca/android/wrapper/config/SignConfig;->noTsa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ca/android/wrapper/config/SignConfig;->noSign:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signingProperties=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/wrapper/config/SignConfig;->signingProperties:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
