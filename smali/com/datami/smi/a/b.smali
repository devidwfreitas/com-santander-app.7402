.class public final Lcom/datami/smi/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "[dmi]DataUsage"

.field private static final b:Ljava/lang/String; = "fg_data_usage"

.field private static final c:Ljava/lang/String; = "Bg_data_usage"

.field private static volatile d:J

.field private static volatile e:J

.field private static volatile f:J

.field private static final g:[B

.field private static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/16 v0, 0xe8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/a/b;->g:[B

    const/16 v0, 0x6e

    sput v0, Lcom/datami/smi/a/b;->h:I

    sput-wide v2, Lcom/datami/smi/a/b;->d:J

    sput-wide v2, Lcom/datami/smi/a/b;->e:J

    sput-wide v2, Lcom/datami/smi/a/b;->f:J

    return-void

    :array_0
    .array-data 1
        0x30t
        0x67t
        0x6at
        -0x49t
        -0x14t
        0xct
        0xat
        -0xft
        -0x44t
        0x4at
        0xbt
        -0x52t
        0x4ft
        -0x8t
        0x3t
        -0x5t
        0x14t
        -0xat
        0xet
        -0x10t
        -0x44t
        0x9t
        0x6t
        0x4at
        -0x10t
        -0x3bt
        0x1et
        0x14t
        -0x12t
        -0x40t
        0x56t
        -0x1t
        -0x11t
        0x7t
        -0x1t
        -0x44t
        0x42t
        0xct
        0x7t
        -0xct
        -0x3t
        0x4t
        0x16t
        -0x58t
        0x4at
        0x6t
        -0x4t
        0xct
        -0xat
        -0x7t
        0xct
        -0x2t
        0xbt
        -0xdt
        0x0t
        -0x43t
        0x1bt
        -0x19t
        0x1t
        0x4et
        0x3t
        -0xct
        0x8t
        0x4t
        -0x6t
        -0x20t
        0x1et
        0x14t
        -0x12t
        -0xbt
        0x1ft
        -0x11t
        0x7t
        -0x1t
        -0x1et
        0x2t
        -0x26t
        0x1bt
        -0x19t
        0x22t
        0x12t
        -0xct
        -0x5t
        0x3t
        -0x44t
        0x4at
        0xbt
        -0x52t
        0x4at
        0x6t
        -0x4dt
        0x38t
        -0xdt
        -0x2t
        0x4t
        0x54t
        0x2t
        -0x4t
        0x4t
        -0xct
        0x0t
        0x2dt
        0x0t
        0x7t
        -0xet
        0x14t
        -0x3t
        -0x53t
        0x4at
        0xbt
        -0x52t
        0x4ft
        0x8t
        -0x8t
        0x1t
        -0x4bt
        0x54t
        -0x3t
        -0x4et
        0x4ft
        0x2t
        0x6t
        -0x53t
        0x54t
        -0x11t
        0x16t
        -0xct
        0x6t
        -0x6t
        -0x46t
        0x25t
        0x1et
        0x14t
        -0x12t
        -0x40t
        0x42t
        0xet
        -0xct
        0xct
        0xet
        -0x4t
        -0xat
        -0x5t
        0x11t
        -0x52t
        0x57t
        -0x14t
        0xct
        0xat
        -0xft
        0xft
        0xat
        0xat
        -0x3t
        -0xbt
        -0x18t
        0x1et
        0x14t
        -0x12t
        -0xbt
        0x1ft
        -0x11t
        0x7t
        -0x1t
        0x4et
        0x3t
        -0xct
        0x8t
        0x4t
        -0x6t
        -0x20t
        0x1et
        0x14t
        -0x12t
        -0xbt
        0x1ft
        -0x11t
        0x7t
        -0x1t
        -0x22t
        0x6t
        -0x26t
        0x1bt
        -0x19t
        0x26t
        -0x7t
        0x6t
        -0x2t
        0x14t
        -0x12t
        -0x1t
        0x17t
        -0x1t
        -0x11t
        0x7t
        -0x1t
        -0x19t
        0x2t
        -0x7t
        0x6t
        -0x2t
        0x14t
        -0x12t
        -0x1t
        0x17t
        -0x1t
        -0x11t
        0x7t
        -0x1t
        0x22t
        0x12t
        -0xct
        -0x5t
        0x3t
        -0x44t
        0x4et
        0x3t
        0x8t
        -0x10t
        0x0t
        -0x43t
        0x55t
        -0x4t
        -0x4et
        0x44t
        0x3t
        0x8t
        0x1t
        0xat
        -0x8t
        -0xat
        0x12t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v3, 0x81

    const/16 v8, 0x36

    const/16 v5, 0x4f

    const-wide/16 v6, 0x0

    const/16 v4, 0x29

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/datami/smi/a/b;->d:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    sget-wide v0, Lcom/datami/smi/a/b;->e:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    aget-byte v1, v1, v3

    neg-int v1, v1

    const/16 v2, 0xc0

    invoke-static {v1, v2, v4}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    aget-byte v1, v1, v3

    neg-int v1, v1

    const/16 v2, 0xc0

    invoke-static {v1, v2, v4}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/datami/smi/a/b;->e:J

    :cond_0
    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    aget-byte v1, v1, v5

    or-int/lit16 v2, v1, 0x91

    invoke-static {v1, v2, v4}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    aget-byte v1, v1, v5

    or-int/lit16 v2, v1, 0x91

    invoke-static {v1, v2, v4}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/datami/smi/a/b;->d:J

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/datami/smi/a/b;->g:[B

    const/16 v1, 0x19

    aget-byte v0, v0, v1

    neg-int v0, v0

    const/16 v1, 0x92

    sget v2, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v2, v2, 0xb8

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v1, v1, 0xb5

    sget-object v2, Lcom/datami/smi/a/b;->g:[B

    const/16 v3, 0x2a

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/a/b;->g:[B

    aget-byte v3, v3, v8

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/a/b;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    aget-byte v1, v1, v8

    or-int/lit16 v2, v1, 0x9f

    sget-object v3, Lcom/datami/smi/a/b;->g:[B

    aget-byte v3, v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/a/b;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a()J
    .locals 5

    sget-wide v0, Lcom/datami/smi/a/b;->e:J

    sget-wide v2, Lcom/datami/smi/a/b;->d:J

    add-long/2addr v0, v2

    invoke-static {}, Lcom/datami/smi/f/g;->e()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    :cond_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    rsub-int/lit8 v2, p2, 0x36

    new-instance v7, Ljava/lang/String;

    add-int/lit8 v0, p0, 0x20

    add-int/lit8 v3, p1, 0x4

    sget-object v8, Lcom/datami/smi/a/b;->g:[B

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v3, v4

    if-ne v4, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    aget-byte v0, v8, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v0

    goto :goto_1
.end method

.method private static a(J)V
    .locals 4

    sget-wide v0, Lcom/datami/smi/a/b;->e:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/datami/smi/a/b;->e:J

    sget-object v0, Lcom/datami/smi/a/b;->g:[B

    const/16 v1, 0x81

    aget-byte v0, v0, v1

    neg-int v0, v0

    const/16 v1, 0xc0

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/a/b;->e:J

    invoke-static {v0, v2, v3}, Lcom/datami/smi/a/b;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private static a(Ljava/lang/String;J)V
    .locals 5

    const/16 v3, 0x92

    const/16 v2, 0x19

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/datami/smi/a/b;->g:[B

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget v1, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v1, v1, 0xb8

    invoke-static {v0, v3, v1}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/a/b;->g:[B

    const/16 v1, 0x1e

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    const/16 v2, 0x1f

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/b;->g:[B

    const/16 v3, 0x46

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    sget-object v0, Lcom/datami/smi/a/b;->g:[B

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget v1, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v1, v1, 0xb8

    invoke-static {v0, v3, v1}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/a/b;->g:[B

    const/16 v1, 0x4f

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v1, v1, 0x1f0

    sget-object v2, Lcom/datami/smi/a/b;->g:[B

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/datami/smi/a/b;->g:[B

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget v1, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v1, v1, 0xb8

    invoke-static {v0, v3, v1}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    const/16 v2, 0x38

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    or-int/lit16 v2, v1, 0xa5

    and-int/lit8 v3, v2, 0x74

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    const/16 v2, 0x36

    aget-byte v1, v1, v2

    or-int/lit8 v2, v1, 0x5a

    sget-object v3, Lcom/datami/smi/a/b;->g:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Z)V
    .locals 7

    const/16 v6, 0x29

    invoke-static {}, Lcom/datami/smi/f/g;->e()J

    move-result-wide v0

    sget-wide v2, Lcom/datami/smi/a/b;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    if-eqz p0, :cond_1

    sget-wide v4, Lcom/datami/smi/a/b;->d:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/datami/smi/a/b;->d:J

    sget-object v2, Lcom/datami/smi/a/b;->g:[B

    const/16 v3, 0x4f

    aget-byte v2, v2, v3

    or-int/lit16 v3, v2, 0x91

    invoke-static {v2, v3, v6}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v2

    sget-wide v4, Lcom/datami/smi/a/b;->d:J

    invoke-static {v2, v4, v5}, Lcom/datami/smi/a/b;->a(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    sput-wide v0, Lcom/datami/smi/a/b;->f:J

    return-void

    :cond_1
    sget-wide v4, Lcom/datami/smi/a/b;->e:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/datami/smi/a/b;->e:J

    sget-object v2, Lcom/datami/smi/a/b;->g:[B

    const/16 v3, 0x81

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0xc0

    invoke-static {v2, v3, v6}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v2

    sget-wide v4, Lcom/datami/smi/a/b;->e:J

    invoke-static {v2, v4, v5}, Lcom/datami/smi/a/b;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static a(ZZ)V
    .locals 4

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/datami/smi/a/b;->a(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/datami/smi/a/b;->g:[B

    const/16 v1, 0x19

    aget-byte v0, v0, v1

    neg-int v0, v0

    const/16 v1, 0x92

    sget v2, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v2, v2, 0xb8

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    sget v0, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v0, v0, 0xb5

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    const/16 v2, 0x9

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/b;->g:[B

    const/16 v3, 0x82

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    goto :goto_0
.end method

.method public static b()J
    .locals 5

    sget-wide v0, Lcom/datami/smi/a/b;->e:J

    sget-wide v2, Lcom/datami/smi/a/b;->d:J

    add-long/2addr v0, v2

    invoke-static {}, Lcom/datami/smi/f/g;->e()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private static b(J)V
    .locals 4

    sget-wide v0, Lcom/datami/smi/a/b;->d:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/datami/smi/a/b;->d:J

    sget-object v0, Lcom/datami/smi/a/b;->g:[B

    const/16 v1, 0x4f

    aget-byte v0, v0, v1

    or-int/lit16 v1, v0, 0x91

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/a/b;->d:J

    invoke-static {v0, v2, v3}, Lcom/datami/smi/a/b;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static b(ZZ)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/datami/smi/a/b;->a(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/datami/smi/a/b;->g:[B

    const/16 v1, 0x19

    aget-byte v0, v0, v1

    neg-int v0, v0

    const/16 v1, 0x92

    sget v2, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v2, v2, 0xb8

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    sget v0, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v0, v0, 0xb5

    const/16 v1, 0xcc

    sget-object v2, Lcom/datami/smi/a/b;->g:[B

    const/16 v3, 0x1a

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    goto :goto_0
.end method

.method private static c()J
    .locals 2

    sget-wide v0, Lcom/datami/smi/a/b;->d:J

    return-wide v0
.end method

.method public static c(ZZ)V
    .locals 4

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/datami/smi/a/b;->a(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/datami/smi/a/b;->g:[B

    const/16 v1, 0x19

    aget-byte v0, v0, v1

    neg-int v0, v0

    const/16 v1, 0x92

    sget v2, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v2, v2, 0xb8

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    sget v0, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v0, v0, 0xb5

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    const/16 v2, 0x9

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/b;->g:[B

    const/16 v3, 0x82

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    goto :goto_0
.end method

.method private static d()J
    .locals 2

    sget-wide v0, Lcom/datami/smi/a/b;->e:J

    return-wide v0
.end method

.method private static e()V
    .locals 9

    const/16 v3, 0x81

    const/16 v8, 0x36

    const/16 v5, 0x4f

    const-wide/16 v6, 0x0

    const/16 v4, 0x29

    sget-wide v0, Lcom/datami/smi/a/b;->d:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    sget-wide v0, Lcom/datami/smi/a/b;->e:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    aget-byte v1, v1, v3

    neg-int v1, v1

    const/16 v2, 0xc0

    invoke-static {v1, v2, v4}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    aget-byte v1, v1, v3

    neg-int v1, v1

    const/16 v2, 0xc0

    invoke-static {v1, v2, v4}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/datami/smi/a/b;->e:J

    :cond_0
    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    aget-byte v1, v1, v5

    or-int/lit16 v2, v1, 0x91

    invoke-static {v1, v2, v4}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    aget-byte v1, v1, v5

    or-int/lit16 v2, v1, 0x91

    invoke-static {v1, v2, v4}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/datami/smi/a/b;->d:J

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/datami/smi/a/b;->g:[B

    const/16 v1, 0x19

    aget-byte v0, v0, v1

    neg-int v0, v0

    const/16 v1, 0x92

    sget v2, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v2, v2, 0xb8

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/datami/smi/a/b;->h:I

    and-int/lit16 v1, v1, 0xb5

    sget-object v2, Lcom/datami/smi/a/b;->g:[B

    const/16 v3, 0x2a

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/a/b;->g:[B

    aget-byte v3, v3, v8

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/a/b;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/a/b;->g:[B

    aget-byte v1, v1, v8

    or-int/lit16 v2, v1, 0x9f

    sget-object v3, Lcom/datami/smi/a/b;->g:[B

    aget-byte v3, v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/datami/smi/a/b;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
