.class public Lcom/datami/smi/SmiResult;
.super Ljava/lang/Object;


# static fields
.field private static final $:[B

.field private static $$:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cpLogoUri:Ljava/lang/String;

.field private datamiLogoUri:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private operatorLogoUri:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private sdHost:Ljava/lang/String;

.field private sdPort:I

.field private sdReason:Lcom/datami/smi/SdReason;

.field private sdState:Lcom/datami/smi/SdState;

.field private sponsorLogoUri:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private videoObject:Ljava/lang/Object;


# direct methods
.method private static $(III)Ljava/lang/String;
    .locals 11

    const/4 v5, 0x0

    mul-int/lit8 v0, p0, 0x7

    rsub-int/lit8 v2, v0, 0xc

    mul-int/lit8 v0, p2, 0x16

    add-int/lit8 v3, v0, 0x45

    mul-int/lit8 v0, p1, 0x4

    rsub-int/lit8 v0, v0, 0x8

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/datami/smi/SmiResult;->$:[B

    new-array v1, v2, [B

    if-nez v8, :cond_1

    move-object v3, v1

    move v4, v5

    move v6, v0

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0xd

    add-int/lit8 v6, v6, 0x1

    move v0, v4

    :goto_1
    int-to-byte v9, v1

    add-int/lit8 v4, v0, 0x1

    aput-byte v9, v3, v0

    if-ne v4, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v6, v0

    move v0, v5

    move v10, v3

    move-object v3, v1

    move v1, v10

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/SmiResult;->$:[B

    const/16 v0, 0xf

    sput v0, Lcom/datami/smi/SmiResult;->$$:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/SmiResult;->$:[B

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    invoke-static {v1, v1, v1}, Lcom/datami/smi/SmiResult;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/datami/smi/SmiResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/SmiResult;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x18t
        0x38t
        -0x72t
        0x16t
        0x16t
        0x9t
        0x1t
        0x40t
        -0x8t
        0xft
        0x18t
        0x11t
        0x2t
        0x13t
        0xct
        -0x41t
        0x27t
        -0xdt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->mUrl:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->sdState:Lcom/datami/smi/SdState;

    sget-object v0, Lcom/datami/smi/SdReason;->SD_REASON_NONE:Lcom/datami/smi/SdReason;

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->sdReason:Lcom/datami/smi/SdReason;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->sponsorLogoUri:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->operatorLogoUri:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->cpLogoUri:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->datamiLogoUri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->videoObject:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->sdHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/datami/smi/SmiResult;->sdPort:I

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->userName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/datami/smi/b/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->mUrl:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/SdState;->SD_NOT_AVAILABLE:Lcom/datami/smi/SdState;

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->sdState:Lcom/datami/smi/SdState;

    sget-object v0, Lcom/datami/smi/SdReason;->SD_REASON_NONE:Lcom/datami/smi/SdReason;

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->sdReason:Lcom/datami/smi/SdReason;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->sponsorLogoUri:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->operatorLogoUri:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->cpLogoUri:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->datamiLogoUri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->videoObject:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->sdHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/datami/smi/SmiResult;->sdPort:I

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->userName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->password:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/datami/smi/SmiResult;->setZmi(Lcom/datami/smi/b/m;)V

    return-void
.end method

.method private generatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string v0, ""

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/c/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/datami/smi/c/t;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/SmiResult;->$:[B

    aget-byte v3, v3, v4

    invoke-static {v3, v3, v3}, Lcom/datami/smi/SmiResult;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/SmiResult;->$:[B

    aget-byte v3, v3, v4

    invoke-static {v3, v3, v3}, Lcom/datami/smi/SmiResult;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getCarrierName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/datami/smi/SdState;->WIFI:Lcom/datami/smi/SdState;

    iget-object v1, p0, Lcom/datami/smi/SmiResult;->sdState:Lcom/datami/smi/SdState;

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/datami/smi/c/c;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    sget-object v1, Lcom/datami/smi/SdState;->SD_AVAILABLE:Lcom/datami/smi/SdState;

    iget-object v2, p0, Lcom/datami/smi/SmiResult;->sdState:Lcom/datami/smi/SdState;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->q()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCpLogoUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/SmiResult;->cpLogoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDatamiLogoUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/SmiResult;->datamiLogoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorLogoUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/SmiResult;->operatorLogoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/SmiResult;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSdReason()Lcom/datami/smi/SdReason;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/SmiResult;->sdReason:Lcom/datami/smi/SdReason;

    return-object v0
.end method

.method public getSdState()Lcom/datami/smi/SdState;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/SmiResult;->sdState:Lcom/datami/smi/SdState;

    return-object v0
.end method

.method public getSponsorLogoUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/SmiResult;->sponsorLogoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/SmiResult;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/SmiResult;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/SmiResult;->videoObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getVpnSdHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/SmiResult;->sdHost:Ljava/lang/String;

    return-object v0
.end method

.method public getVpnSdPort()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/SmiResult;->sdPort:I

    return v0
.end method

.method public setCpLogoUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/SmiResult;->cpLogoUri:Ljava/lang/String;

    return-void
.end method

.method public setDatamiLogoUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/SmiResult;->datamiLogoUri:Ljava/lang/String;

    return-void
.end method

.method public setOperatorLogoUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/SmiResult;->operatorLogoUri:Ljava/lang/String;

    return-void
.end method

.method public setSdReason(Lcom/datami/smi/SdReason;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/SmiResult;->sdReason:Lcom/datami/smi/SdReason;

    return-void
.end method

.method public setSdState(Lcom/datami/smi/SdState;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/SmiResult;->sdState:Lcom/datami/smi/SdState;

    return-void
.end method

.method public setSponsorLogoUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/SmiResult;->sponsorLogoUri:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/SmiResult;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/SmiResult;->videoObject:Ljava/lang/Object;

    return-void
.end method

.method public setZmi(Lcom/datami/smi/b/m;)V
    .locals 1

    invoke-virtual {p1}, Lcom/datami/smi/b/m;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/datami/smi/b/m;->e()I

    move-result v0

    invoke-static {v0}, Lcom/datami/smi/SdState;->valueOf(I)Lcom/datami/smi/SdState;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->sdState:Lcom/datami/smi/SdState;

    invoke-virtual {p1}, Lcom/datami/smi/b/m;->g()I

    move-result v0

    invoke-static {v0}, Lcom/datami/smi/SdReason;->valueOf(I)Lcom/datami/smi/SdReason;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->sdReason:Lcom/datami/smi/SdReason;

    invoke-virtual {p1}, Lcom/datami/smi/b/m;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->sponsorLogoUri:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/datami/smi/b/m;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->operatorLogoUri:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/datami/smi/b/m;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->cpLogoUri:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/datami/smi/b/m;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->datamiLogoUri:Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/b/m;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->sdHost:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/datami/smi/b/m;->d()I

    move-result v0

    iput v0, p0, Lcom/datami/smi/SmiResult;->sdPort:I

    invoke-static {}, Lcom/datami/smi/b/m;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->userName:Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/b/m;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/datami/smi/SmiResult;->generatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/SmiResult;->password:Ljava/lang/String;

    return-void
.end method
