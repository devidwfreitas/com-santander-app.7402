.class public Ldi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldh;


# static fields
.field private static final a:[B

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ldi;->a:[B

    .line 36
    return-void

    .line 38
    :array_0
    .array-data 1
        0x30t
        0x62t
        0x66t
        0x38t
        0x39t
        0x65t
        0x61t
        0x30t
        0x32t
        0x33t
        0x63t
        0x34t
        0x35t
        0x64t
        0x34t
        0x33t
        0x34t
        0x64t
        0x37t
        0x66t
        0x38t
        0x65t
        0x39t
        0x63t
        0x31t
        0x62t
        0x30t
        0x61t
        0x36t
        0x65t
        0x32t
        0x65t
        0x31t
        0x35t
        0x62t
        0x65t
        0x36t
        0x61t
        0x38t
        0x63t
        0x39t
        0x65t
        0x64t
        0x30t
        0x32t
        0x62t
        0x61t
        0x39t
        0x37t
        0x63t
        0x38t
        0x33t
        0x31t
        0x32t
        0x62t
        0x66t
        0x30t
        0x61t
        0x38t
        0x37t
        0x63t
        0x33t
        0x32t
        0x62t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroid/content/Context;)[B
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Ldi;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-direct {p0, p1}, Ldi;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    sget-object v1, Ldi;->a:[B

    invoke-static {v0, v1}, Lcs;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    .line 67
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 68
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 75
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 100
    :cond_0
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    goto :goto_1

    .line 93
    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)[B
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ldi;->c(Landroid/content/Context;)[B

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ldi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
