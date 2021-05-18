.class public final Lcom/datami/smi/h/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/h/a;->a:[B

    const/16 v0, 0xd5

    sput v0, Lcom/datami/smi/h/a;->b:I

    return-void

    :array_0
    .array-data 1
        0x66t
        0x9t
        -0x70t
        -0x5ct
        -0x20t
        -0xft
        -0x2t
        -0x3t
        -0x7t
        0x52t
        -0x44t
        -0x5t
        0x43t
        -0x45t
        0x0t
        -0xdt
        -0x2t
        0x5t
        -0x1t
        0x42t
        -0x48t
        -0xet
        0x1t
        0x0t
        0x4bt
        -0x56t
        0xat
        0x1t
        0x43t
        -0x4ft
        0xat
        -0xat
        -0x7t
        0x4ct
        -0x56t
        0xat
        -0xct
        0xbt
        0x2t
        -0x5t
        -0xet
        0x0t
        0x3dt
        -0x3bt
        -0xat
        -0x2t
        0x6t
        -0x7t
        0x5t
        0x35t
        -0x35t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x3bt
        -0x8t
        -0x8t
        -0xet
        0x0t
        0x3dt
        -0x3bt
        -0xat
        -0x2t
        0x6t
        -0x7t
        0x5t
        0x35t
        -0x35t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x3bt
        -0x8t
        -0x8t
        0x43t
        -0x35t
        -0x5t
        -0x11t
        0x43t
        -0x3dt
        0x3t
        -0x3t
        -0xbt
        -0x8t
        0x9t
        0x1t
        -0x5t
        0x2t
        -0xft
        0x42t
        -0x47t
        0xct
        -0xft
        -0x6t
        0xbt
        0x4t
        -0x4t
        0x35t
        -0x27t
        -0x3t
        0x11t
        -0x13t
        -0x4t
        -0x2at
        -0x2t
        0x6t
        -0x7t
        0x5t
        0x43t
        -0x32t
        -0x1et
        0x9t
        -0x1at
        0x57t
        -0x45t
        -0xet
        -0x1t
        -0x2t
        0x7t
        0x0t
        -0x13t
        0x9t
        -0x8t
        -0x1t
        0x4ct
        -0x48t
        0x3t
        -0xat
        -0x5t
        0x5t
        -0x1t
        -0xet
        0x0t
        0x3dt
        -0x35t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x4at
        0xft
        -0xbt
        0x8t
        -0x7t
        -0x7t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/datami/smi/h/c;
    .locals 7

    const/16 v6, 0xe

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/datami/smi/h/a;->a:[B

    const/16 v2, 0x34

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/h/a;->a:[B

    const/16 v3, 0x12

    aget-byte v2, v2, v3

    and-int/lit8 v3, v2, 0x12

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/h/a;->a:[B

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    or-int/lit16 v2, v1, 0x86

    sget-object v3, Lcom/datami/smi/h/a;->a:[B

    const/16 v4, 0xe

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/a;->a(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/datami/smi/h/d;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/datami/smi/h/d;-><init>(Lcom/datami/smi/h/b;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/datami/smi/h/a;->a:[B

    aget-byte v2, v2, v6

    or-int/lit8 v3, v2, 0x38

    sget-object v4, Lcom/datami/smi/h/a;->a:[B

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/h/a;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/datami/smi/h/a;->a:[B

    aget-byte v2, v2, v6

    or-int/lit8 v3, v2, 0x23

    sget-object v4, Lcom/datami/smi/h/a;->a:[B

    const/16 v5, 0x38

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/h/a;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Lcom/datami/smi/h/e;

    invoke-virtual {v1}, Lcom/datami/smi/h/d;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/datami/smi/h/e;-><init>(Landroid/os/IBinder;)V

    new-instance v2, Lcom/datami/smi/h/c;

    invoke-virtual {v0}, Lcom/datami/smi/h/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/datami/smi/h/e;->b()Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/datami/smi/h/c;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lcom/datami/smi/h/a;->a:[B

    const/16 v2, 0x7e

    aget-byte v1, v1, v2

    sget v2, Lcom/datami/smi/h/a;->b:I

    ushr-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/datami/smi/h/a;->a:[B

    const/16 v4, 0x1a

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 8

    sget-object v5, Lcom/datami/smi/h/a;->a:[B

    add-int/lit8 v0, p1, 0x4

    const/4 v3, -0x1

    add-int/lit8 v4, p2, 0x13

    mul-int/lit8 v1, p0, 0x4

    rsub-int/lit8 v1, v1, 0x63

    new-instance v6, Ljava/lang/String;

    new-array v2, v4, [B

    add-int/lit8 v7, v4, -0x1

    if-nez v5, :cond_1

    move v4, v0

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    int-to-byte v0, v1

    add-int/lit8 v4, v4, 0x1

    aput-byte v0, v2, v3

    if-ne v3, v7, :cond_0

    const/4 v0, 0x0

    invoke-direct {v6, v2, v0}, Ljava/lang/String;-><init>([BI)V

    return-object v6

    :cond_0
    aget-byte v0, v5, v4

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1
.end method
