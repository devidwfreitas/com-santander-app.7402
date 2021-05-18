.class public final Lcom/datami/smi/c/u;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Ljava/lang/String; = "[dmi]Uram Service"

.field private static b:I

.field private static g:Ljava/lang/String;

.field private static final h:[B

.field private static i:I


# instance fields
.field private c:I

.field private d:I

.field private final e:Landroid/content/Context;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xed

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/u;->h:[B

    const/16 v0, 0xe4

    sput v0, Lcom/datami/smi/c/u;->i:I

    const/4 v0, 0x3

    sput v0, Lcom/datami/smi/c/u;->b:I

    const-string v0, ""

    sput-object v0, Lcom/datami/smi/c/u;->g:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x3ct
        -0x78t
        -0x24t
        0x57t
        0xdt
        0x0t
        -0x3t
        0x3t
        -0x13t
        0xct
        -0x6t
        0x14t
        -0xft
        0x11t
        0x1t
        -0xet
        -0x1bt
        0x29t
        -0x4t
        -0x1t
        -0x18t
        0xbt
        0xbt
        0x9t
        -0x10t
        -0x45t
        0x35t
        0x0t
        -0xct
        -0x5t
        -0x24t
        -0x3t
        -0x11t
        0xct
        -0x4dt
        0x55t
        -0x5t
        -0xct
        -0x3t
        0x13t
        -0xft
        -0x1t
        -0x3t
        0x13t
        -0x13t
        0xct
        -0x4t
        -0x3ct
        0x46t
        -0xet
        -0x2t
        0x12t
        -0x3t
        -0xdt
        -0x38t
        0x3et
        -0x6t
        0x14t
        -0xct
        -0x5t
        -0xet
        0x11t
        -0x3t
        -0x11t
        0xct
        -0x2dt
        0x35t
        0x1dt
        -0x6t
        -0x4ct
        0x9t
        0x9t
        -0x4t
        -0xct
        -0x8t
        0x1dt
        -0x11t
        0xct
        -0x4dt
        0x33t
        0x12t
        0xdt
        0x4t
        -0xdt
        -0x6t
        0x2t
        0xft
        0x0t
        -0x27t
        0x1bt
        -0x3t
        -0x11t
        0xct
        -0x4dt
        0x53t
        0x2t
        -0x12t
        0x0t
        0x2t
        0xet
        0x0t
        -0xdt
        0xft
        -0x9t
        0xdt
        0x0t
        -0x3t
        0x3t
        -0x13t
        0xet
        0x6t
        -0xct
        -0x8t
        0xct
        -0x6t
        0x14t
        -0x3t
        -0x11t
        0xct
        -0x4dt
        0x46t
        -0x5t
        0x8t
        0x3t
        -0x7t
        -0x1t
        -0x3t
        -0x11t
        0xct
        -0x4dt
        0x53t
        0x1t
        -0x13t
        0x13t
        0x1t
        -0x2t
        -0x53t
        0x4ft
        -0x4t
        -0x8t
        0xet
        0x0t
        -0x12t
        0x6t
        -0x2t
        -0x3t
        -0x11t
        0xct
        -0x4dt
        0x53t
        0x1t
        -0x13t
        0x11t
        0x2t
        -0xft
        -0x1t
        0x2t
        -0xbt
        0x1t
        0x7t
        -0x3t
        -0x11t
        0xct
        -0x2dt
        0x32t
        0x13t
        0xet
        -0x3t
        -0x1t
        -0x1t
        0x5t
        -0xet
        -0x45t
        0x35t
        -0x3t
        -0x11t
        0xct
        -0x2dt
        0x32t
        0x13t
        0xct
        0x4t
        -0x10t
        0xet
        0x1t
        -0x54t
        -0x3t
        -0x11t
        0xct
        -0x4dt
        0x45t
        0xdt
        0x0t
        -0x3t
        0x3t
        -0x38t
        -0x1at
        0x0t
        -0xct
        -0x5t
        -0x3t
        -0x11t
        0xct
        -0x2dt
        0x43t
        -0x2t
        0xbt
        0x0t
        -0x4ct
        0x46t
        -0x5t
        0x8t
        0x3t
        -0x7t
        -0x1t
        -0x2at
        -0x1at
        0x8t
        -0xbt
        0x3t
        -0x1t
        -0x5t
        0x6t
        0xdt
        0x0t
        -0x3t
        0x3t
        -0x13t
        0xct
        -0x6t
        0x14t
        0xct
        -0xbt
        0x1t
        -0xct
        0xat
        -0x6t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/datami/smi/c/u;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/datami/smi/c/u;->d:I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/datami/smi/c/u;->f:Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v0}, Lcom/datami/smi/c/o;->a()Lcom/datami/smi/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datami/smi/c/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v0}, Lcom/datami/smi/c/o;->a()Lcom/datami/smi/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datami/smi/c/q;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/u;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/datami/smi/c/u;->e:Landroid/content/Context;

    return-void

    :cond_1
    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-static {p1}, Lcom/datami/smi/c/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/u;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/datami/smi/c/u;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/datami/smi/c/u;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    add-int/lit8 v0, p0, 0x4

    add-int/lit8 v1, p2, 0x3

    const/4 v3, -0x1

    sget-object v6, Lcom/datami/smi/c/u;->h:[B

    rsub-int/lit8 v4, p1, 0x75

    new-instance v7, Ljava/lang/String;

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v6, :cond_1

    move v4, v3

    move v5, v0

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    add-int/2addr v2, v0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    int-to-byte v0, v2

    aput-byte v0, v3, v4

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {v7, v3, v0}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v5, v0

    move v8, v3

    move-object v3, v2

    move v2, v4

    move v4, v8

    goto :goto_1
.end method

.method protected static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/datami/smi/c/u;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/datami/smi/c/u;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 11

    const/16 v10, 0xc4

    const/16 v9, 0x63

    const/16 v8, 0x41

    const/4 v7, 0x5

    :try_start_0
    sget v0, Lcom/datami/smi/c/u;->i:I

    and-int/lit16 v0, v0, 0x3d0

    sget-object v1, Lcom/datami/smi/c/u;->h:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/datami/smi/c/u;->i:I

    and-int/lit16 v0, v0, 0x3d0

    sget-object v1, Lcom/datami/smi/c/u;->h:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/u;->g:Ljava/lang/String;

    const/16 v0, 0x41

    sget-object v1, Lcom/datami/smi/c/u;->h:[B

    const/16 v2, 0xc4

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0x63

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/c/u;->h:[B

    const/16 v2, 0x9f

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0xaa

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v4, 0xd

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/u;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/datami/smi/c/u;->b()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const/16 v3, 0x86

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/16 v5, 0x7a

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v6, 0x52

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x37

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v4, 0x55

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    aget-byte v4, v4, v7

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/datami/smi/d/c;->c:Lcom/datami/smi/d/c;

    invoke-static {v3}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/datami/smi/d/d;->b:Lcom/datami/smi/d/d;

    invoke-static {v0}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    if-eqz v1, :cond_0

    sget-object v0, Lcom/datami/smi/c/u;->h:[B

    aget-byte v0, v0, v10

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/c/u;->h:[B

    aget-byte v1, v1, v9

    invoke-static {v8, v0, v1}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method private b()V
    .locals 12

    const/16 v11, 0x9

    const/4 v10, 0x5

    const/16 v9, 0xc4

    const/16 v8, 0x63

    const/16 v7, 0x18

    iget-object v0, p0, Lcom/datami/smi/c/u;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    :try_start_0
    new-instance v0, Lcom/datami/smi/c/a;

    const/16 v3, 0x25

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/16 v5, 0xd

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v6, 0x63

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/datami/smi/c/a;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/datami/smi/c/u;->g:Ljava/lang/String;

    if-nez v3, :cond_0

    sget-object v3, Lcom/datami/smi/c/u;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    sget v3, Lcom/datami/smi/c/u;->i:I

    and-int/lit16 v3, v3, 0x3d0

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v6, 0xe

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/c/u;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/datami/smi/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0x13

    aget-byte v0, v0, v3

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    aget-byte v3, v3, v7

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/16 v5, 0x6e

    aget-byte v4, v4, v5

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0x13

    aget-byte v0, v0, v3

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    aget-byte v3, v3, v7

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/16 v5, 0x6e

    aget-byte v4, v4, v5

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const/16 v0, 0xd4

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    aget-byte v3, v3, v7

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    aget-byte v4, v4, v11

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xd4

    sget-object v1, Lcom/datami/smi/c/u;->h:[B

    aget-byte v1, v1, v7

    neg-int v1, v1

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    aget-byte v3, v3, v11

    invoke-static {v0, v1, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v0, 0x41

    sget-object v1, Lcom/datami/smi/c/u;->h:[B

    aget-byte v1, v1, v9

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    aget-byte v2, v2, v8

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/u;->h:[B

    aget-byte v1, v1, v9

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    aget-byte v2, v2, v10

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v4, 0x17

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const/16 v3, 0x41

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    aget-byte v4, v4, v9

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    aget-byte v5, v5, v8

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    const/16 v9, 0xe

    const/4 v8, 0x5

    const/16 v7, 0x18

    iget-object v0, p0, Lcom/datami/smi/c/u;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v4, 0x13

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    aget-byte v4, v4, v7

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v6, 0x6e

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v2, -0x2

    iget v3, p0, Lcom/datami/smi/c/u;->c:I

    if-eq v2, v3, :cond_0

    const/16 v2, 0xd4

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    aget-byte v3, v3, v7

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/16 v5, 0x9

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/datami/smi/c/u;->c:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-eqz p1, :cond_1

    const/16 v2, 0x63

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    aget-byte v3, v3, v7

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/16 v5, 0xeb

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    sget v2, Lcom/datami/smi/c/u;->i:I

    and-int/lit16 v2, v2, 0x3d0

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    aget-byte v3, v3, v8

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    aget-byte v4, v4, v9

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/datami/smi/c/u;->i:I

    and-int/lit16 v0, v0, 0x3d0

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    aget-byte v2, v2, v8

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    aget-byte v3, v3, v9

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 13

    const/16 v12, 0xeb

    const/4 v11, 0x5

    const/16 v10, 0xe

    const/16 v9, 0x63

    const/16 v8, 0x18

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lcom/datami/smi/c/u;->i:I

    add-int/lit8 v1, v1, -0x2

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0x33

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v4, 0xe

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/datami/smi/c/u;->i:I

    add-int/lit8 v1, v1, -0x2

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0x33

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v4, 0xe

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/datami/smi/c/u;->c:I

    const/16 v1, 0x41

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0xc4

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v4, 0x63

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xb5

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v6, 0x17

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/datami/smi/c/u;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/16 v1, 0x63

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0x18

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v4, 0xeb

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x63

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0x18

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v4, 0xeb

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/datami/smi/c/u;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/16 v5, 0x13

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    aget-byte v5, v5, v8

    neg-int v5, v5

    sget-object v6, Lcom/datami/smi/c/u;->h:[B

    const/16 v7, 0x6e

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v3, -0x2

    iget v4, p0, Lcom/datami/smi/c/u;->c:I

    if-eq v3, v4, :cond_2

    const/16 v3, 0xd4

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    aget-byte v4, v4, v8

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v6, 0x9

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/datami/smi/c/u;->c:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    if-eqz v0, :cond_3

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    aget-byte v3, v3, v8

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    aget-byte v4, v4, v12

    invoke-static {v9, v3, v4}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    sget v0, Lcom/datami/smi/c/u;->i:I

    and-int/lit16 v0, v0, 0x3d0

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    aget-byte v3, v3, v11

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    aget-byte v4, v4, v10

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/datami/smi/c/u;->i:I

    and-int/lit16 v0, v0, 0x3d0

    sget-object v1, Lcom/datami/smi/c/u;->h:[B

    aget-byte v1, v1, v11

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    aget-byte v3, v3, v10

    invoke-static {v0, v1, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    return-void

    :cond_6
    const/16 v1, 0xc8

    :try_start_1
    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v1

    iput v1, p0, Lcom/datami/smi/c/u;->c:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0x41

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0xc4

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    aget-byte v3, v3, v9

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    goto/16 :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v0, 0x0

    const/16 v2, 0x41

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v4, 0xc4

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/16 v5, 0x63

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8c

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x17

    aget-byte v5, v5, v8

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v2, p0, Lcom/datami/smi/c/u;->d:I

    sget v3, Lcom/datami/smi/c/u;->b:I

    if-gt v2, v3, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v5, Lcom/datami/smi/c/p;->a:Lcom/datami/smi/c/p;

    sget-object v5, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    if-eqz v5, :cond_0

    sget-object v4, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v4}, Lcom/datami/smi/c/o;->c()Z

    move-result v4

    sget-object v5, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    sget-object v5, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v5}, Lcom/datami/smi/c/o;->a()Lcom/datami/smi/c/q;

    move-result-object v5

    invoke-virtual {v5}, Lcom/datami/smi/c/q;->b()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v8}, Lcom/datami/smi/c/o;->a()Lcom/datami/smi/c/q;

    move-result-object v8

    invoke-virtual {v8}, Lcom/datami/smi/c/q;->a()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sget v8, Lcom/datami/smi/c/u;->i:I

    add-int/lit8 v8, v8, 0x1

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/16 v10, 0x7a

    aget-byte v9, v9, v10

    sget-object v10, Lcom/datami/smi/c/u;->h:[B

    const/16 v11, 0xe

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v8, 0x97

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/16 v10, 0x7a

    aget-byte v9, v9, v10

    sget-object v10, Lcom/datami/smi/c/u;->h:[B

    const/16 v11, 0x55

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0x1a

    aget-byte v8, v8, v9

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/4 v10, 0x5

    aget-byte v9, v9, v10

    invoke-static {v8, v9, v9}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v8, 0x51

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/16 v10, 0xb

    aget-byte v9, v9, v10

    sget-object v10, Lcom/datami/smi/c/u;->h:[B

    const/16 v11, 0x55

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/datami/smi/c/u;->e:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v8, 0x41

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/16 v10, 0xc4

    aget-byte v9, v9, v10

    neg-int v9, v9

    sget-object v10, Lcom/datami/smi/c/u;->h:[B

    const/16 v11, 0x63

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lcom/datami/smi/c/u;->i:I

    ushr-int/lit8 v9, v9, 0x2

    and-int/lit16 v10, v9, 0xe0

    sget-object v11, Lcom/datami/smi/c/u;->h:[B

    const/16 v12, 0x6e

    aget-byte v11, v11, v12

    invoke-static {v9, v10, v11}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/datami/smi/c/u;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa8

    sget-object v10, Lcom/datami/smi/c/u;->h:[B

    const/16 v11, 0x23

    aget-byte v10, v10, v11

    sget-object v11, Lcom/datami/smi/c/u;->h:[B

    const/16 v12, 0x15

    aget-byte v11, v11, v12

    invoke-static {v9, v10, v11}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/datami/smi/c/u;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/datami/smi/c/u;->f:Ljava/lang/String;

    invoke-static {v2, v5, v4}, Lcom/datami/smi/g/c;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v4

    const/16 v0, 0x41

    :try_start_1
    sget-object v1, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0xc4

    aget-byte v1, v1, v8

    neg-int v1, v1

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0x63

    aget-byte v8, v8, v9

    invoke-static {v0, v1, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9b

    sget v8, Lcom/datami/smi/c/u;->i:I

    and-int/lit8 v8, v8, 0x38

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/16 v10, 0x15

    aget-byte v9, v9, v10

    invoke-static {v1, v8, v9}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v0, 0xc8

    :try_start_2
    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v2

    if-ne v0, v2, :cond_e

    const/16 v0, 0x41

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0xc4

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x63

    aget-byte v3, v3, v8

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x79

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/4 v8, 0x5

    aget-byte v3, v3, v8

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0x15

    aget-byte v8, v8, v9

    invoke-static {v2, v3, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput v0, Lcom/datami/smi/c/c;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget v0, Lcom/datami/smi/c/u;->i:I

    and-int/lit16 v0, v0, 0x3d0

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0xe

    aget-byte v3, v3, v8

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/datami/smi/c/u;->i:I

    and-int/lit16 v0, v0, 0x3d0

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0xe

    aget-byte v3, v3, v8

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/u;->g:Ljava/lang/String;

    const/16 v0, 0x41

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0xc4

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x63

    aget-byte v3, v3, v8

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0x9f

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0xaa

    aget-byte v3, v3, v8

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0xd

    aget-byte v8, v8, v9

    invoke-static {v2, v3, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/c/u;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lcom/datami/smi/c/u;->b()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/16 v2, 0x37

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x55

    aget-byte v3, v3, v8

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/4 v9, 0x5

    aget-byte v8, v8, v9

    invoke-static {v2, v3, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/datami/smi/d/c;->a:Lcom/datami/smi/d/c;

    invoke-static {v3}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/datami/smi/d/d;->b:Lcom/datami/smi/d/d;

    invoke-static {v2}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    const/16 v0, 0x41

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0xc4

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x63

    aget-byte v3, v3, v8

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0x23

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/4 v8, 0x5

    aget-byte v3, v3, v8

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0x9

    aget-byte v8, v8, v9

    invoke-static {v2, v3, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-wide v0, v4

    :cond_2
    sub-long v2, v0, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    invoke-static {}, Lcom/datami/smi/a/d;->a()Lcom/datami/smi/a/d;

    move-result-object v2

    sub-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lcom/datami/smi/a/d;->d(J)V

    :cond_3
    return-void

    :cond_4
    :try_start_5
    iget-object v2, p0, Lcom/datami/smi/c/u;->e:Landroid/content/Context;

    iget-object v8, p0, Lcom/datami/smi/c/u;->f:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v2, v8, v5, v9, v4}, Lcom/datami/smi/g/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    const/16 v8, 0x86

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/16 v10, 0x7a

    aget-byte v9, v9, v10

    sget-object v10, Lcom/datami/smi/c/u;->h:[B

    const/16 v11, 0x52

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v8, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x37

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0x55

    aget-byte v8, v8, v9

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/4 v10, 0x5

    aget-byte v9, v9, v10

    invoke-static {v0, v8, v9}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/datami/smi/d/c;->c:Lcom/datami/smi/d/c;

    invoke-static {v8}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/datami/smi/d/d;->b:Lcom/datami/smi/d/d;

    invoke-static {v0}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    if-eqz v2, :cond_1

    const/16 v0, 0x41

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0xc4

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x63

    aget-byte v3, v3, v8

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-wide v2, v4

    :goto_4
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const/16 v5, 0x86

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0x7a

    aget-byte v8, v8, v9

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/16 v10, 0x52

    aget-byte v9, v9, v10

    invoke-static {v5, v8, v9}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x37

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x55

    aget-byte v5, v5, v8

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/4 v9, 0x5

    aget-byte v8, v8, v9

    invoke-static {v0, v5, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/datami/smi/d/c;->c:Lcom/datami/smi/d/c;

    invoke-static {v5}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/datami/smi/d/d;->b:Lcom/datami/smi/d/d;

    invoke-static {v0}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    const/16 v0, 0x41

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/16 v5, 0xc4

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x63

    aget-byte v5, v5, v8

    invoke-static {v0, v4, v5}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    const/16 v0, 0xc3

    sget v4, Lcom/datami/smi/c/u;->i:I

    and-int/lit8 v4, v4, 0x38

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x56

    aget-byte v5, v5, v8

    invoke-static {v0, v4, v5}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-object v4, v1

    move-wide v0, v2

    :goto_6
    if-eqz v4, :cond_b

    const/4 v2, 0x0

    :try_start_7
    sget v3, Lcom/datami/smi/c/u;->i:I

    add-int/lit8 v3, v3, -0x2

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x33

    aget-byte v5, v5, v8

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0xe

    aget-byte v8, v8, v9

    invoke-static {v3, v5, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget v3, Lcom/datami/smi/c/u;->i:I

    add-int/lit8 v3, v3, -0x2

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x33

    aget-byte v5, v5, v8

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0xe

    aget-byte v8, v8, v9

    invoke-static {v3, v5, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/datami/smi/c/u;->c:I

    const/16 v3, 0x41

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0xc4

    aget-byte v5, v5, v8

    neg-int v5, v5

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0x63

    aget-byte v8, v8, v9

    invoke-static {v3, v5, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0xb5

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/4 v10, 0x5

    aget-byte v9, v9, v10

    sget-object v10, Lcom/datami/smi/c/u;->h:[B

    const/16 v11, 0x17

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/datami/smi/c/u;->c:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_7
    const/16 v3, 0x63

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x18

    aget-byte v5, v5, v8

    neg-int v5, v5

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0xeb

    aget-byte v8, v8, v9

    invoke-static {v3, v5, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x63

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x18

    aget-byte v5, v5, v8

    neg-int v5, v5

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0xeb

    aget-byte v8, v8, v9

    invoke-static {v3, v5, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v2

    :cond_6
    :goto_8
    iget-object v3, p0, Lcom/datami/smi/c/u;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_a

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/16 v10, 0x13

    aget-byte v9, v9, v10

    sget-object v10, Lcom/datami/smi/c/u;->h:[B

    const/16 v11, 0x18

    aget-byte v10, v10, v11

    neg-int v10, v10

    sget-object v11, Lcom/datami/smi/c/u;->h:[B

    const/16 v12, 0x6e

    aget-byte v11, v11, v12

    invoke-static {v9, v10, v11}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v8, -0x2

    iget v9, p0, Lcom/datami/smi/c/u;->c:I

    if-eq v8, v9, :cond_7

    const/16 v8, 0xd4

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/16 v10, 0x18

    aget-byte v9, v9, v10

    neg-int v9, v9

    sget-object v10, Lcom/datami/smi/c/u;->h:[B

    const/16 v11, 0x9

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/datami/smi/c/u;->c:I

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_7
    if-eqz v2, :cond_8

    const/16 v8, 0x63

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/16 v10, 0x18

    aget-byte v9, v9, v10

    neg-int v9, v9

    sget-object v10, Lcom/datami/smi/c/u;->h:[B

    const/16 v11, 0xeb

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_8
    sget v2, Lcom/datami/smi/c/u;->i:I

    and-int/lit16 v2, v2, 0x3d0

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/4 v9, 0x5

    aget-byte v8, v8, v9

    sget-object v9, Lcom/datami/smi/c/u;->h:[B

    const/16 v10, 0xe

    aget-byte v9, v9, v10

    invoke-static {v2, v8, v9}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/datami/smi/c/u;->i:I

    and-int/lit16 v2, v2, 0x3d0

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/4 v8, 0x5

    aget-byte v3, v3, v8

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0xe

    aget-byte v8, v8, v9

    invoke-static {v2, v3, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_9
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_a
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const/16 v3, 0x86

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x7a

    aget-byte v5, v5, v8

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0x52

    aget-byte v8, v8, v9

    invoke-static {v3, v5, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x37

    sget-object v4, Lcom/datami/smi/c/u;->h:[B

    const/16 v5, 0x55

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/4 v8, 0x5

    aget-byte v5, v5, v8

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/datami/smi/d/c;->b:Lcom/datami/smi/d/c;

    invoke-static {v4}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/datami/smi/d/d;->b:Lcom/datami/smi/d/d;

    invoke-static {v3}, Lcom/datami/smi/d/a;->a(Lcom/datami/smi/d/d;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/datami/smi/b/m;->b(Ljava/lang/String;Ljava/util/Properties;)V

    :cond_b
    const/16 v2, 0x3e7

    iget v3, p0, Lcom/datami/smi/c/u;->c:I

    if-eq v2, v3, :cond_c

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/datami/smi/c/u;->c:I

    if-eq v2, v3, :cond_c

    const/4 v2, -0x1

    iget v3, p0, Lcom/datami/smi/c/u;->c:I

    if-eq v2, v3, :cond_c

    const/4 v2, -0x2

    iget v3, p0, Lcom/datami/smi/c/u;->c:I

    if-ne v2, v3, :cond_2

    :cond_c
    iget v2, p0, Lcom/datami/smi/c/u;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/datami/smi/c/u;->d:I

    goto/16 :goto_0

    :cond_d
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_3

    :cond_e
    const/16 v0, 0x41

    sget-object v2, Lcom/datami/smi/c/u;->h:[B

    const/16 v3, 0xc4

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0x63

    aget-byte v3, v3, v8

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    sget-object v3, Lcom/datami/smi/c/u;->h:[B

    const/4 v8, 0x5

    aget-byte v3, v3, v8

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0x7a

    aget-byte v8, v8, v9

    invoke-static {v2, v3, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput v0, Lcom/datami/smi/c/c;->d:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object v13, v1

    move-wide v0, v4

    move-object v4, v13

    goto/16 :goto_6

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_5

    :cond_10
    const/16 v3, 0xc8

    :try_start_9
    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v5

    if-eq v3, v5, :cond_5

    invoke-static {}, Lcom/datami/smi/g/c;->a()I

    move-result v3

    iput v3, p0, Lcom/datami/smi/c/u;->c:I
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const/16 v3, 0x41

    sget-object v5, Lcom/datami/smi/c/u;->h:[B

    const/16 v8, 0xc4

    aget-byte v5, v5, v8

    neg-int v5, v5

    sget-object v8, Lcom/datami/smi/c/u;->h:[B

    const/16 v9, 0x63

    aget-byte v8, v8, v9

    invoke-static {v3, v5, v8}, Lcom/datami/smi/c/u;->a(III)Ljava/lang/String;

    goto/16 :goto_8

    :catch_3
    move-exception v2

    move-object v13, v2

    move-object v14, v3

    move-wide v2, v0

    move-object v0, v13

    move-object v1, v14

    goto/16 :goto_4

    :catch_4
    move-exception v0

    move-object v1, v3

    move-wide v2, v4

    goto/16 :goto_4
.end method
