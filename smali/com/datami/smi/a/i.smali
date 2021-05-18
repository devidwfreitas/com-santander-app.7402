.class public final Lcom/datami/smi/a/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "[dmi]SessionTime"

.field private static final b:Ljava/lang/String; = "fg_wifi_session"

.field private static final c:Ljava/lang/String; = "Bg_wifi_session"

.field private static final d:Ljava/lang/String; = "fg_mobile_session"

.field private static final e:Ljava/lang/String; = "bg_mobile_session"

.field private static volatile f:J

.field private static volatile g:J

.field private static volatile h:J

.field private static volatile i:J

.field private static volatile j:J

.field private static volatile k:J

.field private static final l:[B

.field private static m:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/16 v0, 0xaa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/a/i;->l:[B

    const/16 v0, 0x47

    sput v0, Lcom/datami/smi/a/i;->m:I

    sput-wide v2, Lcom/datami/smi/a/i;->f:J

    sput-wide v2, Lcom/datami/smi/a/i;->g:J

    sput-wide v2, Lcom/datami/smi/a/i;->h:J

    sput-wide v2, Lcom/datami/smi/a/i;->i:J

    sput-wide v2, Lcom/datami/smi/a/i;->j:J

    sput-wide v2, Lcom/datami/smi/a/i;->k:J

    return-void

    :array_0
    .array-data 1
        0x3t
        0x70t
        0x43t
        0x21t
        -0x2t
        0x7t
        -0xft
        -0x3t
        0xct
        -0x8t
        -0x4t
        0x6t
        0x5t
        -0x15t
        0xdt
        -0xft
        -0x1t
        0x9t
        -0x7t
        0x0t
        -0x26t
        0x7t
        -0x19t
        0xdt
        0x2t
        -0x4t
        0x9t
        -0x15t
        0xdt
        -0xft
        -0x1t
        0x9t
        -0x7t
        0x0t
        -0x13t
        -0xft
        -0x1t
        0x9t
        -0x7t
        0x0t
        0x4dt
        -0x45t
        0x2t
        -0x14t
        0x12t
        0x40t
        -0x42t
        -0xct
        -0x7t
        0xct
        0x3t
        -0x4t
        -0x16t
        0x58t
        -0x4at
        -0x6t
        0x4t
        -0xct
        0xat
        0x7t
        -0xct
        0x2t
        -0xbt
        0xdt
        0x0t
        -0x54t
        -0x2t
        0x4t
        -0x4t
        0xct
        0x0t
        0x19t
        -0x2dt
        0x0t
        -0x7t
        0xet
        -0x14t
        0x3t
        0x53t
        -0x4at
        -0xbt
        0x52t
        -0x4ft
        -0x8t
        0x8t
        -0x1t
        0x4bt
        -0x54t
        0x3t
        0x4et
        -0x4ft
        -0x2t
        -0x6t
        0x53t
        -0x54t
        0x11t
        -0x16t
        0xct
        -0x6t
        0x6t
        0x46t
        -0x34t
        -0x13t
        -0xft
        -0x1t
        0x9t
        -0x7t
        0x0t
        0x4dt
        -0x42t
        -0xet
        0xct
        -0xct
        -0xet
        0x4t
        0xat
        0x5t
        -0x11t
        0x52t
        -0x57t
        0x14t
        -0xct
        -0xat
        0xft
        -0xft
        -0x2t
        0x7t
        -0x19t
        0xdt
        0x2t
        -0x4t
        0x9t
        -0x15t
        0xdt
        -0xft
        -0x1t
        0x9t
        -0x7t
        0x0t
        -0xat
        -0xat
        0x3t
        0xbt
        0x9t
        -0x13t
        -0xft
        -0x1t
        0x9t
        -0x7t
        0x0t
        0x19t
        -0x16t
        -0x5t
        0x7t
        -0x6t
        0x7t
        -0xft
        -0x3t
        0xct
        -0x8t
        -0x4t
        0x6t
        0x5t
        -0x15t
        0xdt
        -0xft
        -0x1t
        0x9t
        -0x7t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v9, 0x10

    const/16 v8, 0x27

    const/16 v7, 0x25

    const/16 v6, 0x13

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/datami/smi/a/i;->f:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    sget-wide v0, Lcom/datami/smi/a/i;->g:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    sget-wide v0, Lcom/datami/smi/a/i;->h:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    sget-wide v0, Lcom/datami/smi/a/i;->i:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    aget-byte v1, v1, v6

    or-int/lit8 v2, v1, 0x78

    invoke-static {v8, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    aget-byte v1, v1, v6

    or-int/lit8 v2, v1, 0x78

    invoke-static {v8, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/datami/smi/a/i;->f:J

    :cond_0
    const/16 v1, 0x24

    sget-object v2, Lcom/datami/smi/a/i;->l:[B

    const/16 v3, 0x7b

    aget-byte v2, v2, v3

    invoke-static {v8, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x24

    sget-object v2, Lcom/datami/smi/a/i;->l:[B

    const/16 v3, 0x7b

    aget-byte v2, v2, v3

    invoke-static {v8, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/datami/smi/a/i;->g:J

    :cond_1
    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    aget-byte v1, v1, v6

    sget-object v2, Lcom/datami/smi/a/i;->l:[B

    aget-byte v2, v2, v9

    invoke-static {v7, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    aget-byte v1, v1, v6

    sget-object v2, Lcom/datami/smi/a/i;->l:[B

    aget-byte v2, v2, v9

    invoke-static {v7, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/datami/smi/a/i;->h:J

    :cond_2
    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    const/16 v2, 0x38

    aget-byte v1, v1, v2

    or-int/lit16 v2, v1, 0x91

    invoke-static {v7, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    const/16 v2, 0x38

    aget-byte v1, v1, v2

    or-int/lit16 v2, v1, 0x91

    invoke-static {v7, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/datami/smi/a/i;->i:J

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-object v0, Lcom/datami/smi/a/i;->l:[B

    const/16 v1, 0x14

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    const/16 v2, 0x8e

    aget-byte v1, v1, v2

    const/16 v2, 0x86

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/a/i;->l:[B

    const/16 v1, 0x34

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    const/16 v2, 0x22

    aget-byte v1, v1, v2

    neg-int v1, v1

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    goto :goto_0
.end method

.method public static a()J
    .locals 2

    sget-wide v0, Lcom/datami/smi/a/i;->h:J

    return-wide v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 11

    const/4 v5, 0x0

    add-int/lit8 v0, p2, 0x4

    sget-object v7, Lcom/datami/smi/a/i;->l:[B

    rsub-int/lit8 v3, p1, 0x66

    new-instance v8, Ljava/lang/String;

    rsub-int/lit8 v2, p0, 0x36

    new-array v1, v2, [B

    if-nez v7, :cond_1

    move-object v3, v1

    move v4, v5

    move v6, v0

    move v1, v2

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    move v0, v4

    :goto_1
    add-int/lit8 v6, v6, 0x1

    int-to-byte v9, v1

    add-int/lit8 v4, v0, 0x1

    aput-byte v9, v3, v0

    if-ne v4, v2, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v6, v0

    move v0, v5

    move-object v10, v1

    move v1, v3

    move-object v3, v10

    goto :goto_1
.end method

.method private static a(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    :cond_0
    sget-wide v0, Lcom/datami/smi/a/i;->f:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/datami/smi/a/i;->f:J

    const/16 v0, 0x27

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    const/16 v2, 0x13

    aget-byte v1, v1, v2

    or-int/lit8 v2, v1, 0x78

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/a/i;->f:J

    invoke-static {v0, v2, v3}, Lcom/datami/smi/a/i;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private static a(Ljava/lang/String;J)V
    .locals 5

    const/16 v3, 0x8e

    const/16 v2, 0x86

    const/16 v1, 0x14

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/datami/smi/a/i;->l:[B

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    aget-byte v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/a/i;->l:[B

    const/16 v1, 0x13

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0x23

    sget-object v2, Lcom/datami/smi/a/i;->l:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/datami/smi/a/i;->l:[B

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    aget-byte v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    const/16 v2, 0x65

    aget-byte v1, v1, v2

    neg-int v1, v1

    const/16 v2, 0x2c

    sget-object v3, Lcom/datami/smi/a/i;->l:[B

    const/16 v4, 0x2e

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    sget-object v2, Lcom/datami/smi/a/i;->l:[B

    const/16 v3, 0x64

    aget-byte v2, v2, v3

    const/16 v3, 0x3c

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(ZZ)V
    .locals 2

    invoke-static {}, Lcom/datami/smi/a/i;->h()J

    move-result-wide v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/datami/smi/a/i;->b(J)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/datami/smi/a/i;->a(J)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {v0, v1}, Lcom/datami/smi/a/i;->d(J)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lcom/datami/smi/a/i;->c(J)V

    goto :goto_0
.end method

.method public static b()J
    .locals 2

    sget-wide v0, Lcom/datami/smi/a/i;->i:J

    return-wide v0
.end method

.method private static b(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    :cond_0
    sget-wide v0, Lcom/datami/smi/a/i;->g:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/datami/smi/a/i;->g:J

    const/16 v0, 0x27

    const/16 v1, 0x24

    sget-object v2, Lcom/datami/smi/a/i;->l:[B

    const/16 v3, 0x7b

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/a/i;->g:J

    invoke-static {v0, v2, v3}, Lcom/datami/smi/a/i;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static b(ZZ)V
    .locals 2

    invoke-static {}, Lcom/datami/smi/a/i;->h()J

    move-result-wide v0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Lcom/datami/smi/a/i;->c(J)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/datami/smi/a/i;->a(J)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-static {v0, v1}, Lcom/datami/smi/a/i;->d(J)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lcom/datami/smi/a/i;->b(J)V

    goto :goto_0
.end method

.method public static c()J
    .locals 2

    sget-wide v0, Lcom/datami/smi/a/i;->f:J

    return-wide v0
.end method

.method private static c(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    :cond_0
    sget-wide v0, Lcom/datami/smi/a/i;->h:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/datami/smi/a/i;->h:J

    const/16 v0, 0x25

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    const/16 v2, 0x13

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/i;->l:[B

    const/16 v3, 0x10

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/a/i;->h:J

    invoke-static {v0, v2, v3}, Lcom/datami/smi/a/i;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static c(ZZ)V
    .locals 2

    invoke-static {}, Lcom/datami/smi/a/i;->h()J

    move-result-wide v0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Lcom/datami/smi/a/i;->a(J)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/datami/smi/a/i;->c(J)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-static {v0, v1}, Lcom/datami/smi/a/i;->b(J)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lcom/datami/smi/a/i;->d(J)V

    goto :goto_0
.end method

.method public static d()J
    .locals 2

    sget-wide v0, Lcom/datami/smi/a/i;->g:J

    return-wide v0
.end method

.method private static d(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    :cond_0
    sget-wide v0, Lcom/datami/smi/a/i;->i:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/datami/smi/a/i;->i:J

    const/16 v0, 0x25

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    const/16 v2, 0x38

    aget-byte v1, v1, v2

    or-int/lit16 v2, v1, 0x91

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/a/i;->i:J

    invoke-static {v0, v2, v3}, Lcom/datami/smi/a/i;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static e()J
    .locals 4

    sget-wide v0, Lcom/datami/smi/a/i;->h:J

    sget-wide v2, Lcom/datami/smi/a/i;->f:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method private static f()V
    .locals 10

    const/16 v9, 0x10

    const/16 v8, 0x27

    const/16 v7, 0x25

    const/16 v6, 0x13

    const-wide/16 v4, 0x0

    sget-wide v0, Lcom/datami/smi/a/i;->f:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    sget-wide v0, Lcom/datami/smi/a/i;->g:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    sget-wide v0, Lcom/datami/smi/a/i;->h:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    sget-wide v0, Lcom/datami/smi/a/i;->i:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    aget-byte v1, v1, v6

    or-int/lit8 v2, v1, 0x78

    invoke-static {v8, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    aget-byte v1, v1, v6

    or-int/lit8 v2, v1, 0x78

    invoke-static {v8, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/datami/smi/a/i;->f:J

    :cond_0
    const/16 v1, 0x24

    sget-object v2, Lcom/datami/smi/a/i;->l:[B

    const/16 v3, 0x7b

    aget-byte v2, v2, v3

    invoke-static {v8, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x24

    sget-object v2, Lcom/datami/smi/a/i;->l:[B

    const/16 v3, 0x7b

    aget-byte v2, v2, v3

    invoke-static {v8, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/datami/smi/a/i;->g:J

    :cond_1
    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    aget-byte v1, v1, v6

    sget-object v2, Lcom/datami/smi/a/i;->l:[B

    aget-byte v2, v2, v9

    invoke-static {v7, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    aget-byte v1, v1, v6

    sget-object v2, Lcom/datami/smi/a/i;->l:[B

    aget-byte v2, v2, v9

    invoke-static {v7, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/datami/smi/a/i;->h:J

    :cond_2
    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    const/16 v2, 0x38

    aget-byte v1, v1, v2

    or-int/lit16 v2, v1, 0x91

    invoke-static {v7, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    const/16 v2, 0x38

    aget-byte v1, v1, v2

    or-int/lit16 v2, v1, 0x91

    invoke-static {v7, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/datami/smi/a/i;->i:J

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-object v0, Lcom/datami/smi/a/i;->l:[B

    const/16 v1, 0x14

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    const/16 v2, 0x8e

    aget-byte v1, v1, v2

    const/16 v2, 0x86

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/a/i;->l:[B

    const/16 v1, 0x34

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/a/i;->l:[B

    const/16 v2, 0x22

    aget-byte v1, v1, v2

    neg-int v1, v1

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/i;->a(III)Ljava/lang/String;

    goto :goto_0
.end method

.method private static g()J
    .locals 4

    sget-wide v0, Lcom/datami/smi/a/i;->h:J

    sget-wide v2, Lcom/datami/smi/a/i;->i:J

    add-long/2addr v0, v2

    sget-wide v2, Lcom/datami/smi/a/i;->f:J

    add-long/2addr v0, v2

    sget-wide v2, Lcom/datami/smi/a/i;->g:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method private static h()J
    .locals 4

    const-wide/16 v0, 0x0

    sget-wide v2, Lcom/datami/smi/a/i;->j:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/datami/smi/a/i;->j:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/datami/smi/a/i;->k:J

    sget-wide v2, Lcom/datami/smi/a/i;->j:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/datami/smi/a/i;->k:J

    sput-wide v2, Lcom/datami/smi/a/i;->j:J

    goto :goto_0
.end method
