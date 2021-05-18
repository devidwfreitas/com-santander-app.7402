.class public final Lcom/datami/smi/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "[dmi]LaunchCount"

.field private static final b:Ljava/lang/String; = "wifi_launch_count"

.field private static final c:Ljava/lang/String; = "mobile_launch_count"

.field private static volatile d:I

.field private static volatile e:I

.field private static final f:[B

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xdf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/a/c;->f:[B

    const/16 v0, 0x3f

    sput v0, Lcom/datami/smi/a/c;->g:I

    sput v1, Lcom/datami/smi/a/c;->d:I

    sput v1, Lcom/datami/smi/a/c;->e:I

    return-void

    nop

    :array_0
    .array-data 1
        0x77t
        -0x3ct
        -0x29t
        -0x69t
        -0x4et
        0x1ft
        -0x23t
        0xct
        -0x8t
        -0x4t
        0x6t
        0x18t
        -0x16t
        -0x15t
        0x6t
        0xat
        -0x6t
        0x24t
        -0x2dt
        -0x7t
        0x6t
        -0x7t
        0x53t
        -0x1bt
        0x19t
        0x14t
        -0xct
        -0xat
        0xft
        0x44t
        -0x4at
        -0xbt
        0x52t
        -0x4ft
        0x8t
        -0x3t
        0x5t
        -0x14t
        0xat
        -0xet
        0x10t
        0x44t
        -0x9t
        -0x6t
        -0x4at
        0x10t
        0x3bt
        -0x3t
        0xct
        -0x8t
        -0x4t
        0x6t
        0x5t
        -0xet
        0xat
        -0x15t
        0x6t
        0xat
        -0x6t
        0x8t
        -0x5t
        -0xdt
        -0x7t
        0x6t
        -0x7t
        -0x16t
        -0x15t
        0x6t
        0xat
        -0x6t
        0x47t
        -0x24t
        -0x2dt
        -0x7t
        0x6t
        -0x7t
        0x53t
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
        0x43t
        -0x4et
        0x15t
        -0x13t
        0x2t
        -0x4t
        0x1ct
        -0x16t
        -0x15t
        0x6t
        0xat
        -0x6t
        0x24t
        -0x2dt
        -0x7t
        0x6t
        -0x7t
        0x53t
        -0x1bt
        0x19t
        0xdt
        0x2t
        -0x4t
        0x9t
        -0xet
        0xat
        -0x15t
        0x6t
        0xat
        -0x6t
        0x8t
        -0x5t
        -0xdt
        -0x7t
        0x6t
        -0x7t
        -0x54t
        -0x2t
        0x4t
        -0x4t
        0xct
        0x0t
        0x19t
        -0xat
        -0xat
        0x3t
        0xbt
        0x10t
        -0x16t
        -0x15t
        0x6t
        0xat
        -0x6t
        0x24t
        -0x2dt
        -0x7t
        0x6t
        -0x7t
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
        -0x2dt
        -0x16t
        -0x15t
        0x6t
        0xat
        -0x6t
        0x47t
        -0x44t
        -0xdt
        -0x7t
        0x6t
        -0x7t
        0x53t
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
        -0x34t
        0x14t
        -0x3t
        -0xct
        -0x5t
        0xat
        -0x7t
        0x0t
        0x4dt
        -0x1bt
        0x19t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v6, 0xdc

    const/16 v5, 0xce

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/datami/smi/a/c;->d:I

    if-nez v0, :cond_2

    sget v0, Lcom/datami/smi/a/c;->e:I

    if-nez v0, :cond_2

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/a/c;->f:[B

    aget-byte v1, v1, v5

    neg-int v1, v1

    sget v2, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v2, v2, 0xea

    invoke-static {v1, v3, v2}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datami/smi/a/c;->f:[B

    aget-byte v1, v1, v5

    neg-int v1, v1

    sget v2, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v2, v2, 0xea

    invoke-static {v1, v3, v2}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/datami/smi/a/c;->d:I

    :cond_0
    sget-object v1, Lcom/datami/smi/a/c;->f:[B

    aget-byte v1, v1, v6

    sget v2, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v2, v2, 0xeb

    add-int/lit8 v3, v2, -0x3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/datami/smi/a/c;->f:[B

    aget-byte v1, v1, v6

    sget v2, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v2, v2, 0xeb

    add-int/lit8 v3, v2, -0x3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/datami/smi/a/c;->e:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/datami/smi/a/c;->f:[B

    const/16 v1, 0x2e

    aget-byte v0, v0, v1

    const/16 v1, 0x87

    sget v2, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v2, v2, 0xeb

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v1, v1, 0xec

    or-int/lit8 v2, v1, 0x11

    sget-object v3, Lcom/datami/smi/a/c;->f:[B

    const/16 v4, 0x5a

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/datami/smi/a/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/a/c;->f:[B

    const/16 v2, 0x5f

    aget-byte v1, v1, v2

    or-int/lit8 v2, v1, 0x25

    invoke-static {v1, v1, v2}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/datami/smi/a/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/datami/smi/a/c;->d:I

    return v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 8

    const/4 v3, -0x1

    rsub-int/lit8 v1, p2, 0x3b

    add-int/lit8 v0, p0, 0x20

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x4

    sget-object v7, Lcom/datami/smi/a/c;->f:[B

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v7, :cond_1

    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v0, -0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    int-to-byte v0, v2

    aput-byte v0, v3, v4

    if-ne v4, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {v6, v3, v0}, Ljava/lang/String;-><init>([BI)V

    return-object v6

    :cond_0
    aget-byte v0, v7, v5

    goto :goto_0

    :cond_1
    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 5

    const/16 v4, 0x5f

    const/16 v2, 0x87

    const/16 v1, 0x2e

    if-gtz p1, :cond_0

    sget-object v0, Lcom/datami/smi/a/c;->f:[B

    aget-byte v0, v0, v1

    sget v1, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v1, v1, 0xeb

    invoke-static {v0, v2, v1}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    const/16 v0, 0x56

    sget-object v1, Lcom/datami/smi/a/c;->f:[B

    const/16 v2, 0x62

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/a/c;->f:[B

    const/16 v3, 0x11

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    sget-object v0, Lcom/datami/smi/a/c;->f:[B

    aget-byte v0, v0, v1

    sget v1, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v1, v1, 0xeb

    invoke-static {v0, v2, v1}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/a/c;->f:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    neg-int v0, v0

    const/16 v1, 0x96

    sget-object v2, Lcom/datami/smi/a/c;->f:[B

    aget-byte v2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/datami/smi/a/c;->f:[B

    aget-byte v0, v0, v1

    sget v1, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v1, v1, 0xeb

    invoke-static {v0, v2, v1}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/datami/smi/a/c;->g:I

    and-int/lit8 v1, v1, 0x5a

    const/16 v2, 0x86

    sget v3, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v3, v3, 0xf9

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/a/c;->f:[B

    aget-byte v1, v1, v4

    or-int/lit16 v2, v1, 0x80

    sget-object v3, Lcom/datami/smi/a/c;->f:[B

    const/16 v4, 0xd4

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Z)V
    .locals 3

    if-eqz p0, :cond_0

    sget v0, Lcom/datami/smi/a/c;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/datami/smi/a/c;->d:I

    sget-object v0, Lcom/datami/smi/a/c;->f:[B

    const/16 v1, 0xce

    aget-byte v0, v0, v1

    neg-int v0, v0

    const/16 v1, 0x70

    sget v2, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v2, v2, 0xea

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/datami/smi/a/c;->d:I

    invoke-static {v0, v1}, Lcom/datami/smi/a/c;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/datami/smi/a/c;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/datami/smi/a/c;->e:I

    sget-object v0, Lcom/datami/smi/a/c;->f:[B

    const/16 v1, 0xdc

    aget-byte v0, v0, v1

    sget v1, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v1, v1, 0xeb

    add-int/lit8 v2, v1, -0x3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/datami/smi/a/c;->e:I

    invoke-static {v0, v1}, Lcom/datami/smi/a/c;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/datami/smi/a/c;->e:I

    return v0
.end method

.method public static c()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/datami/smi/b/m;->E()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    sget v0, Lcom/datami/smi/a/c;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/datami/smi/a/c;->d:I

    sget-object v0, Lcom/datami/smi/a/c;->f:[B

    const/16 v1, 0xce

    aget-byte v0, v0, v1

    neg-int v0, v0

    const/16 v1, 0x70

    sget v2, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v2, v2, 0xea

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/datami/smi/a/c;->d:I

    invoke-static {v0, v1}, Lcom/datami/smi/a/c;->a(Ljava/lang/String;I)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/datami/smi/a/c;->f:[B

    const/16 v3, 0x2e

    aget-byte v2, v2, v3

    const/16 v3, 0x87

    sget v4, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v4, v4, 0xeb

    invoke-static {v2, v3, v4}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v3, v3, 0xe5

    const/16 v4, 0xd0

    sget v5, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v5, v5, 0xef

    invoke-static {v3, v4, v5}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget v0, Lcom/datami/smi/a/c;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/datami/smi/a/c;->e:I

    sget-object v0, Lcom/datami/smi/a/c;->f:[B

    const/16 v1, 0xdc

    aget-byte v0, v0, v1

    sget v1, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v1, v1, 0xeb

    add-int/lit8 v2, v1, -0x3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/datami/smi/a/c;->e:I

    invoke-static {v0, v1}, Lcom/datami/smi/a/c;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private static d()V
    .locals 3

    sget v0, Lcom/datami/smi/a/c;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/datami/smi/a/c;->d:I

    sget-object v0, Lcom/datami/smi/a/c;->f:[B

    const/16 v1, 0xce

    aget-byte v0, v0, v1

    neg-int v0, v0

    const/16 v1, 0x70

    sget v2, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v2, v2, 0xea

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/datami/smi/a/c;->d:I

    invoke-static {v0, v1}, Lcom/datami/smi/a/c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private static e()V
    .locals 3

    sget v0, Lcom/datami/smi/a/c;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/datami/smi/a/c;->e:I

    sget-object v0, Lcom/datami/smi/a/c;->f:[B

    const/16 v1, 0xdc

    aget-byte v0, v0, v1

    sget v1, Lcom/datami/smi/a/c;->g:I

    and-int/lit16 v1, v1, 0xeb

    add-int/lit8 v2, v1, -0x3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/a/c;->a(III)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/datami/smi/a/c;->e:I

    invoke-static {v0, v1}, Lcom/datami/smi/a/c;->a(Ljava/lang/String;I)V

    return-void
.end method
