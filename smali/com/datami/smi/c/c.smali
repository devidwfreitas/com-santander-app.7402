.class public final Lcom/datami/smi/c/c;
.super Ljava/lang/Thread;


# static fields
.field public static a:Lcom/datami/smi/c/o; = null

.field public static b:Lcom/datami/smi/c/n; = null

.field public static c:Lcom/datami/smi/c/b; = null

.field protected static d:I = 0x0

.field public static e:Ljava/lang/String; = null

.field private static final f:Ljava/lang/String; = "[dmi]DiscoveryService"

.field private static k:Z

.field private static l:Z

.field private static m:Lcom/datami/smi/c/a;

.field private static final n:[B

.field private static o:I


# instance fields
.field private g:Z

.field private final h:Landroid/content/Context;

.field private final i:Landroid/content/SharedPreferences;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x263

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/c;->n:[B

    const/16 v0, 0xd7

    sput v0, Lcom/datami/smi/c/c;->o:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/datami/smi/c/c;->k:Z

    sput-boolean v2, Lcom/datami/smi/c/c;->l:Z

    sput-object v1, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    sput-object v1, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    sput-object v1, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    sput v2, Lcom/datami/smi/c/c;->d:I

    new-instance v0, Lcom/datami/smi/c/a;

    const/16 v1, 0x23d

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x11

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x15d

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/datami/smi/c/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/datami/smi/c/c;->m:Lcom/datami/smi/c/a;

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    const/16 v2, 0x34

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x1b

    aget-byte v2, v2, v3

    sget v3, Lcom/datami/smi/c/c;->o:I

    and-int/lit16 v3, v3, 0x17e

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x3et
        0x26t
        -0xet
        0x78t
        -0x7t
        0x6t
        0x9t
        0x3t
        0x19t
        -0x6t
        0xct
        -0xet
        -0x41t
        0x4ct
        0x7t
        -0x40t
        0x6t
        0x12t
        0xbt
        0x3bt
        -0x41t
        0x1bt
        -0x5t
        0x9t
        0xbt
        0x9t
        -0xdt
        0x15t
        0x3ct
        0x9t
        -0xdt
        0x19t
        -0x6t
        0xat
        0x42t
        -0x40t
        0x14t
        0x8t
        -0xct
        0x9t
        0x13t
        0x3et
        -0x38t
        0xct
        -0xet
        0x4t
        0x7t
        0x9t
        0x17t
        -0x7t
        0x5t
        0x10t
        0x0t
        0x7t
        0x12t
        -0x3et
        0x29t
        -0x1at
        0x4t
        -0x4t
        0xat
        0x35t
        0x20t
        0x12t
        -0x3et
        0x15t
        -0x1at
        0x12t
        0xbt
        0x30t
        0x20t
        0x5t
        0x19t
        -0xbt
        0x4t
        0x11t
        0x1t
        0xdt
        0x4dt
        -0x4ft
        0x9t
        0x17t
        -0x6t
        0x53t
        -0x40t
        0xbt
        -0x2t
        0x3t
        0xdt
        0x7t
        0x30t
        0x20t
        0x1t
        0x3t
        0x13t
        0x7t
        -0x5t
        0x52t
        -0x3et
        0x1t
        -0x4t
        0x16t
        -0x6t
        -0x1t
        0x17t
        -0x7t
        -0x1t
        0x5ft
        -0x4ct
        0x13t
        -0x9t
        0x5t
        0x9t
        0xat
        0xft
        0x7t
        0x4at
        -0x3bt
        -0x7t
        0x54t
        -0x3ft
        -0x7t
        0x6t
        0x9t
        0x3t
        0x57t
        0x9t
        -0x5t
        0x11t
        -0x5t
        0x8t
        0x0t
        -0x4t
        0x9t
        0x6t
        0x4t
        -0x4t
        0xat
        0x5t
        0x19t
        -0xbt
        0x4t
        0x11t
        0x1t
        0xdt
        0x4dt
        -0x41t
        0x1t
        0x3t
        0x13t
        0x7t
        -0x5t
        0x52t
        -0x3et
        0x1t
        -0x4t
        0x16t
        -0x6t
        -0x1t
        0x17t
        -0x7t
        -0x1t
        0x5ft
        -0x40t
        0xbt
        -0x2t
        0x3t
        0xdt
        0x7t
        0x30t
        0x20t
        0x12t
        -0x3et
        0x15t
        -0x17t
        0x17t
        -0x6t
        0x39t
        0x20t
        -0x3t
        -0x3t
        0xat
        0x12t
        0x1ft
        -0x1ft
        -0x4t
        0x16t
        -0x6t
        -0x1t
        0x17t
        -0x7t
        -0x1t
        0x2ct
        -0xct
        -0x7t
        0x2t
        0x13t
        0xct
        0x4t
        -0x6t
        0x9t
        0x6t
        0xdt
        0x8t
        -0xbt
        0xbt
        0x3t
        0xct
        0x0t
        -0x1t
        0x15t
        -0x1t
        0x51t
        -0x43t
        -0x4t
        0x59t
        -0x3ct
        -0x4t
        0x11t
        0x4t
        -0x2t
        0x5t
        0x9t
        -0x4t
        0x5t
        0x15t
        0x7t
        0x49t
        -0x1bt
        0x55t
        -0x41t
        0x1t
        0x3t
        0x13t
        0x7t
        -0x5t
        0x52t
        -0x3et
        0x1t
        -0x4t
        0x16t
        -0x6t
        -0x1t
        0x17t
        -0x7t
        -0x1t
        0x5ft
        -0x4dt
        0x11t
        0xdt
        -0xbt
        0x13t
        0x7t
        0x4at
        -0x4at
        0x4t
        0x13t
        0x5t
        0x7t
        -0x7t
        0x13t
        -0x3t
        0x11t
        0x4t
        -0x8t
        0x59t
        -0x40t
        -0x3t
        0x0t
        0xdt
        0x10t
        0x3et
        0x12t
        -0x3et
        0x1t
        -0x4t
        0xat
        -0x1t
        0x17t
        -0x7t
        -0x1t
        0x5ft
        -0x47t
        0xat
        0x8t
        0x5t
        -0x6t
        0x5at
        -0x48t
        0x5t
        0x1t
        0x5at
        -0x3ct
        0x3t
        0x4bt
        -0x3et
        -0x5t
        0x7t
        0xft
        0x4at
        -0x2dt
        0x1bt
        -0x7t
        0x11t
        -0x9t
        0x11t
        0x0t
        0x7t
        0x54t
        -0x43t
        0x1t
        0x54t
        -0x3et
        0x1t
        -0x4t
        0x16t
        -0x6t
        -0x1t
        0x17t
        -0x7t
        -0x1t
        0x5ft
        -0x4dt
        0x14t
        -0x7t
        0x2t
        0x13t
        0xct
        0x4t
        0x31t
        0x20t
        -0x17t
        0x17t
        -0x6t
        0x53t
        -0x3dt
        0x8t
        -0x5t
        0x6t
        0x52t
        -0x14t
        0x20t
        -0x1bt
        0x55t
        -0x3bt
        0x6t
        0x4t
        -0x4t
        0xat
        0x4ft
        -0x4ft
        0x9t
        0xct
        0x52t
        -0x40t
        -0x3t
        0x0t
        0xdt
        0x10t
        0x4at
        -0x43t
        0x1t
        0x54t
        -0x41t
        0x1t
        0x3t
        0x13t
        0x7t
        -0x5t
        0x52t
        -0x3et
        0x1t
        -0x4t
        0x16t
        -0x6t
        -0x1t
        0x17t
        -0x7t
        -0x1t
        0x5ft
        -0x4ct
        0x13t
        -0x8t
        0x9t
        0x7t
        0x7t
        0x1t
        0x14t
        0x3ft
        0x12t
        -0x3dt
        -0x6t
        0x7t
        0x1t
        0x10t
        0xbt
        0x5t
        -0x7t
        0xft
        0x1t
        0xdt
        0x4dt
        -0x48t
        0x5t
        0x55t
        -0x3et
        0x5t
        -0x5t
        0xat
        0x3t
        -0x4t
        0x12t
        0xet
        -0x3t
        0x0t
        0x5at
        -0x40t
        -0x3t
        0x3t
        0x58t
        -0x4et
        0x12t
        0x9t
        0x4bt
        -0x3bt
        -0x9t
        0x6t
        0x47t
        -0x3at
        0x5t
        0x11t
        -0x7t
        0x17t
        -0xdt
        0xbt
        0x3t
        0x57t
        -0x1bt
        0x8t
        -0x9t
        -0x1t
        0xft
        0x2t
        0x15t
        0x7t
        0x4at
        -0x3et
        0x1t
        -0x4t
        0x16t
        -0x6t
        -0x1t
        0x17t
        -0x7t
        -0x1t
        0x5ft
        -0x3et
        0x9t
        -0xdt
        0x19t
        0x2dt
        0x36t
        -0x5ft
        0x8t
        0x0t
        0x3ft
        0x20t
        -0x3t
        0xat
        0x7t
        0x34t
        -0x1ft
        -0x2dt
        0x1bt
        0x4t
        -0x5t
        0x2t
        0x11t
        0x0t
        0x7t
        0x54t
        -0x14t
        0x20t
        0xet
        -0x1t
        0x7t
        0xft
        0xdt
        0x1t
        0xdt
        0x12t
        -0x3et
        0x18t
        -0x1ct
        0x7t
        0x9t
        0x3ct
        0x20t
        -0x26t
        0x7t
        0x0t
        0x15t
        -0xdt
        0xat
        0x5at
        -0x43t
        -0x4t
        0x59t
        -0x48t
        -0x1t
        0xft
        0x6t
        0x52t
        -0x4dt
        0xat
        0x55t
        -0x48t
        0x5t
        0x1t
        0x5at
        -0x3dt
        -0x3t
        0xdt
        0xat
        -0xbt
        0xft
        0x1t
        0xdt
        0x4dt
        -0x3dt
        0x8t
        0x4t
        0x1t
        0x9t
        0x4at
        0x6t
        0x6t
        -0x15t
        -0x2t
        0x3t
        0xdt
        0x7t
        0x4at
        -0x4et
        0xbt
        0x55t
        -0x41t
        0x8t
        -0x9t
        0x5at
        -0x2et
        0x15t
        -0x1t
        0xdt
        -0x5t
        0xet
        -0x1t
        0x7t
        -0x5t
        0x0t
        0x12t
        0x14t
        -0x7t
        0x2t
        0x13t
        0xct
        0x4t
        0x6t
        0x12t
        0xbt
        0x10t
        0x6t
        0xat
        -0x8t
        0x5t
        0x11t
        -0x2dt
        0x1bt
        0x4t
        -0x5t
        0x2t
        0x11t
        0x0t
        0x7t
        0x54t
        -0x2t
        0x11t
        0x3t
        0x7t
        0xbt
        0x0t
        -0x7t
        0x6t
        0x9t
        0x3t
        0x19t
        -0x6t
        0xct
        -0xet
        0x9t
        0x17t
        -0x6t
        -0x7t
        0x10t
        -0x8t
        0x9t
        0xct
        0xbt
        0xbt
        -0x4t
        0xbt
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/datami/smi/c/c;->g:Z

    iput-object p1, p0, Lcom/datami/smi/c/c;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    sget-object v6, Lcom/datami/smi/c/c;->n:[B

    rsub-int v0, p0, 0x259

    rsub-int/lit8 v1, p1, 0x76

    new-instance v7, Ljava/lang/String;

    rsub-int/lit8 v3, p2, 0x60

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v6, :cond_1

    move v3, v4

    move v5, v0

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x6

    :goto_1
    add-int/lit8 v5, v5, 0x1

    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0x7d

    const/16 v6, 0x5c

    const/16 v4, 0x4c

    const/16 v3, 0x23

    const/16 v5, 0x4b

    if-nez p0, :cond_0

    const/16 v0, 0x1a7

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    const/16 v2, 0x15

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x126

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const/16 v0, 0x68

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    const/16 v2, 0x1d6

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x2a

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v0}, Lcom/datami/smi/c/c;->b(Landroid/content/SharedPreferences;)V

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v4

    invoke-static {v3, v2, v6}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v4

    invoke-static {v3, v2, v6}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-static {}, Lcom/datami/smi/b/m;->P()V

    const/16 v2, 0x256

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    aget-byte v3, v3, v5

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    aget-byte v4, v4, v7

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x256

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    aget-byte v3, v3, v5

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    aget-byte v4, v4, v7

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0xd4

    aget-byte v3, v3, v4

    invoke-static {v2, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/datami/smi/c/c;->n:[B

    aget-byte v0, v0, v5

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0xd4

    aget-byte v2, v2, v3

    invoke-static {v0, v0, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/datami/smi/c/c;->k:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/datami/smi/c/c;->k:Z

    return v0
.end method

.method public static a(Landroid/content/SharedPreferences;)Z
    .locals 9

    const/16 v8, 0x73

    const/16 v7, 0x5c

    const/4 v6, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v6

    invoke-static {v8, v2, v7}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, -0x1

    invoke-interface {p0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_4

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v6

    invoke-static {v8, v2, v7}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, -0x1

    invoke-interface {p0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    move v2, v0

    :goto_2
    if-eqz v2, :cond_3

    const/16 v2, 0x1d4

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x1b

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x11f

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    move v2, v0

    :goto_3
    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 11

    const/16 v10, 0x30

    const/16 v9, 0x38

    const/16 v8, 0x1a7

    const/16 v7, 0x126

    const/16 v6, 0x15

    invoke-static {p0}, Lcom/datami/smi/b/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/datami/smi/c/c;->n:[B

    aget-byte v0, v0, v6

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v7

    invoke-static {v8, v0, v1}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const/16 v0, 0x176

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v9

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v10

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const v0, 0x186a0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x73

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    const/16 v3, 0x5c

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    sget-object v0, Lcom/datami/smi/c/c;->n:[B

    aget-byte v0, v0, v6

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v7

    invoke-static {v8, v0, v1}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const/16 v0, 0x188

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x4e

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const v0, 0x186a4

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x4b

    aget-byte v0, v0, v4

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0xd4

    aget-byte v4, v4, v5

    invoke-static {v0, v0, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v6

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v7

    invoke-static {v8, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const/16 v1, 0x1fe

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x72

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x14f

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    sget-object v0, Lcom/datami/smi/c/c;->n:[B

    aget-byte v0, v0, v6

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v7

    invoke-static {v8, v0, v1}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const/16 v0, 0x176

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v9

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v10

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const v0, 0x186a0

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x1d4

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x1b

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x11f

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/datami/smi/c/c;->n:[B

    aget-byte v0, v0, v6

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v7

    invoke-static {v8, v0, v1}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const/16 v0, 0x104

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v9

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x34

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const v0, 0x186a1

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/SharedPreferences;)V
    .locals 9

    const/16 v8, 0xe

    const/4 v4, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/16 v5, 0x5c

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v1, 0x1d8

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v8

    const/16 v3, 0x5d

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1d8

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v8

    const/16 v3, 0x5d

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x4c

    aget-byte v2, v2, v3

    invoke-static {v1, v2, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x4c

    aget-byte v2, v2, v3

    invoke-static {v1, v2, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const/16 v1, 0x1d4

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x1b

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x11f

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1d4

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x1b

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x11f

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const/16 v1, 0x22d

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x2d

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x58

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x22d

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x2d

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x58

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    const/16 v1, 0x73

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v6

    invoke-static {v1, v2, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x73

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v6

    invoke-static {v1, v2, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    const/16 v1, 0x193

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x28

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x7d

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x193

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x28

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x7d

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    const/16 v1, 0x18b

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v7

    invoke-static {v1, v2, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x18b

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v7

    invoke-static {v1, v2, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/datami/smi/c/c;->l:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/datami/smi/c/c;->l:Z

    return v0
.end method

.method public static c()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    iget-object v2, v2, Lcom/datami/smi/c/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    iget-object v2, v2, Lcom/datami/smi/c/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    sget-object v2, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v2}, Lcom/datami/smi/c/o;->a()Lcom/datami/smi/c/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/datami/smi/c/q;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v2}, Lcom/datami/smi/c/o;->a()Lcom/datami/smi/c/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/datami/smi/c/q;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v2}, Lcom/datami/smi/c/o;->a()Lcom/datami/smi/c/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/datami/smi/c/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method private static c(Landroid/content/SharedPreferences;)Z
    .locals 4

    if-eqz p0, :cond_0

    const/16 v0, 0x73

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    const/16 v2, 0x5c

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    invoke-virtual {v0}, Lcom/datami/smi/c/n;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/content/SharedPreferences;)Z
    .locals 4

    if-eqz p0, :cond_0

    const/16 v0, 0x73

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    const/16 v2, 0x5c

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    invoke-virtual {v0}, Lcom/datami/smi/c/n;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x1d4

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x1b

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x11f

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/datami/smi/c/c;->m:Lcom/datami/smi/c/a;

    invoke-virtual {v0, v1}, Lcom/datami/smi/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    invoke-virtual {v0}, Lcom/datami/smi/c/n;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g()Z
    .locals 1

    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v0}, Lcom/datami/smi/c/o;->a()Lcom/datami/smi/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datami/smi/c/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v0}, Lcom/datami/smi/c/o;->a()Lcom/datami/smi/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datami/smi/c/q;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v0}, Lcom/datami/smi/c/o;->a()Lcom/datami/smi/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datami/smi/c/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h()Z
    .locals 1

    sget-object v0, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    iget-object v0, v0, Lcom/datami/smi/c/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    iget-object v0, v0, Lcom/datami/smi/c/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x24e

    const/16 v3, 0x1ab

    const/16 v4, 0x1a4

    const/4 v0, 0x0

    sget-object v1, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    iget-object v1, v1, Lcom/datami/smi/c/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/c/u;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v5, v1, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v3

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v4

    neg-int v2, v2

    invoke-static {v5, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j()V
    .locals 13

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v1, 0x1d8

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    const/16 v3, 0x5d

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x4c

    aget-byte v3, v3, v4

    const/16 v4, 0x5c

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v3, 0x1d4

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v6, 0x1b

    aget-byte v4, v4, v6

    sget-object v6, Lcom/datami/smi/c/c;->n:[B

    const/16 v7, 0x11f

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v4, 0x22d

    sget-object v6, Lcom/datami/smi/c/c;->n:[B

    const/16 v7, 0x2d

    aget-byte v6, v6, v7

    or-int/lit8 v7, v6, 0x58

    invoke-static {v4, v6, v7}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v6, 0x23

    sget-object v7, Lcom/datami/smi/c/c;->n:[B

    const/16 v8, 0x4c

    aget-byte v7, v7, v8

    const/16 v8, 0x5c

    invoke-static {v6, v7, v8}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v6, 0x193

    sget-object v7, Lcom/datami/smi/c/c;->n:[B

    const/16 v9, 0x28

    aget-byte v7, v7, v9

    sget-object v9, Lcom/datami/smi/c/c;->n:[B

    const/16 v10, 0x7d

    aget-byte v9, v9, v10

    invoke-static {v6, v7, v9}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v6, 0x73

    sget-object v7, Lcom/datami/smi/c/c;->n:[B

    const/4 v10, 0x5

    aget-byte v7, v7, v10

    const/16 v10, 0x5c

    invoke-static {v6, v7, v10}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v10, -0x1

    invoke-interface {v1, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    if-eqz v0, :cond_8

    sget-object v1, Lcom/datami/smi/c/c;->m:Lcom/datami/smi/c/a;

    invoke-virtual {v1, v0}, Lcom/datami/smi/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v2, :cond_7

    sget-object v0, Lcom/datami/smi/c/c;->m:Lcom/datami/smi/c/a;

    invoke-virtual {v0, v2}, Lcom/datami/smi/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v3, :cond_6

    sget-object v0, Lcom/datami/smi/c/c;->m:Lcom/datami/smi/c/a;

    invoke-virtual {v0, v3}, Lcom/datami/smi/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v4, :cond_5

    sget-object v0, Lcom/datami/smi/c/c;->m:Lcom/datami/smi/c/a;

    invoke-virtual {v0, v4}, Lcom/datami/smi/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-eqz v8, :cond_4

    sget-object v0, Lcom/datami/smi/c/c;->m:Lcom/datami/smi/c/a;

    invoke-virtual {v0, v8}, Lcom/datami/smi/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v9, :cond_0

    sget-object v5, Lcom/datami/smi/c/c;->m:Lcom/datami/smi/c/a;

    invoke-virtual {v5, v9}, Lcom/datami/smi/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v0}, Lcom/datami/smi/c/u;->a(Ljava/lang/String;)V

    :cond_1
    const/16 v8, 0x1a7

    sget-object v9, Lcom/datami/smi/c/c;->n:[B

    const/16 v10, 0x15

    aget-byte v9, v9, v10

    sget-object v10, Lcom/datami/smi/c/c;->n:[B

    const/16 v11, 0x126

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0xa5

    sget-object v10, Lcom/datami/smi/c/c;->n:[B

    const/16 v11, 0x149

    aget-byte v10, v10, v11

    add-int/lit8 v10, v10, 0x1

    sget-object v11, Lcom/datami/smi/c/c;->n:[B

    const/16 v12, 0xc

    aget-byte v11, v11, v12

    neg-int v11, v11

    invoke-static {v9, v10, v11}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x1af

    sget-object v10, Lcom/datami/smi/c/c;->n:[B

    const/16 v11, 0x74

    aget-byte v10, v10, v11

    sget-object v11, Lcom/datami/smi/c/c;->n:[B

    const/16 v12, 0x7d

    aget-byte v11, v11, v12

    invoke-static {v9, v10, v11}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x224

    sget-object v10, Lcom/datami/smi/c/c;->n:[B

    const/16 v11, 0x74

    aget-byte v10, v10, v11

    sget v11, Lcom/datami/smi/c/c;->o:I

    and-int/lit16 v11, v11, 0x17e

    invoke-static {v9, v10, v11}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x70

    sget-object v10, Lcom/datami/smi/c/c;->n:[B

    const/16 v11, 0x74

    aget-byte v10, v10, v11

    sget-object v11, Lcom/datami/smi/c/c;->n:[B

    const/16 v12, 0x7d

    aget-byte v11, v11, v12

    invoke-static {v9, v10, v11}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x21b

    sget-object v10, Lcom/datami/smi/c/c;->n:[B

    const/16 v11, 0x74

    aget-byte v10, v10, v11

    sget-object v11, Lcom/datami/smi/c/c;->n:[B

    const/16 v12, 0x7d

    aget-byte v11, v11, v12

    invoke-static {v9, v10, v11}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/datami/smi/c/b;

    invoke-direct/range {v0 .. v7}, Lcom/datami/smi/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    new-instance v0, Lcom/datami/smi/c/o;

    invoke-direct {v0}, Lcom/datami/smi/c/o;-><init>()V

    sput-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v1, 0x18b

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    const/16 v3, 0x5c

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v1, 0x18b

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    const/16 v3, 0x5c

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/datami/smi/c/o;

    invoke-direct {v0, v1}, Lcom/datami/smi/c/o;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_5
    :try_start_2
    new-instance v0, Lcom/datami/smi/c/n;

    invoke-direct {v0}, Lcom/datami/smi/c/n;-><init>()V

    sput-object v0, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v1, 0x1d6

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x4d

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x50

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v1, 0x1d6

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x4d

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x50

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v0, Lcom/datami/smi/c/n;

    invoke-direct {v0, v1}, Lcom/datami/smi/c/n;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_6
    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0x1a7

    :try_start_4
    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x15

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x126

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/datami/smi/c/c;->o:I

    and-int/lit16 v2, v2, 0x3af

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0xc0

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x15d

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    if-nez v0, :cond_3

    new-instance v0, Lcom/datami/smi/c/o;

    invoke-direct {v0}, Lcom/datami/smi/c/o;-><init>()V

    sput-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    goto :goto_6

    :catch_2
    move-exception v0

    const/16 v1, 0x1a7

    :try_start_5
    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x15

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x126

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/datami/smi/c/c;->o:I

    and-int/lit16 v2, v2, 0x3af

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0xc0

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x15d

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :cond_4
    move-object v0, v5

    goto/16 :goto_4

    :cond_5
    move-object v4, v5

    goto/16 :goto_3

    :cond_6
    move-object v3, v5

    goto/16 :goto_2

    :cond_7
    move-object v2, v5

    goto/16 :goto_1

    :cond_8
    move-object v1, v5

    goto/16 :goto_0
.end method

.method private k()Z
    .locals 8

    const/4 v1, 0x1

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/datami/smi/b/m;->j:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/datami/smi/b/m;->a(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v3, 0x73

    sget-object v6, Lcom/datami/smi/c/c;->n:[B

    const/4 v7, 0x5

    aget-byte v6, v6, v7

    const/16 v7, 0x5c

    invoke-static {v3, v6, v7}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :goto_1
    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_3

    :cond_2
    sput v0, Lcom/datami/smi/c/c;->d:I

    iput-boolean v1, p0, Lcom/datami/smi/c/c;->g:Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/datami/smi/c/c;->j()V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move-wide v2, v4

    goto :goto_1
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/datami/smi/b/m;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 7

    const/16 v6, 0x5c

    const/16 v4, 0x4c

    const/16 v3, 0x23

    const/16 v5, 0x15

    const/4 v0, 0x0

    invoke-static {}, Lcom/datami/smi/c/d;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/datami/smi/c/c;->g:Z

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/datami/smi/c/c;->g:Z

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v4

    invoke-static {v3, v2, v6}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-static {}, Lcom/datami/smi/c/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v2, 0x23

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x4c

    aget-byte v3, v3, v4

    const/16 v4, 0x5c

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/c/c;->m:Lcom/datami/smi/c/a;

    invoke-virtual {v2, v1}, Lcom/datami/smi/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/datami/smi/c/u;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    const/16 v1, 0x1a7

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x126

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10f

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x3e

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x77

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v1, 0x1a7

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x126

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    const/16 v2, 0x39

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x149

    aget-byte v2, v2, v3

    sget v3, Lcom/datami/smi/c/c;->o:I

    and-int/lit16 v3, v3, 0x17e

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    goto :goto_1
.end method

.method private n()Z
    .locals 9

    const/16 v8, 0x22a

    const/16 v7, 0x1dc

    const/16 v6, 0x11f

    const/16 v5, 0xd7

    const/16 v4, 0x34

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v4

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    aget-byte v3, v3, v5

    invoke-static {v8, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/datami/smi/c/c;->o:I

    and-int/lit16 v2, v2, 0x16d

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    aget-byte v3, v3, v6

    add-int/lit8 v3, v3, 0x1

    invoke-static {v7, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v5

    invoke-static {v8, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/datami/smi/c/c;->o:I

    and-int/lit16 v2, v2, 0x16d

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    aget-byte v3, v3, v6

    add-int/lit8 v3, v3, 0x1

    invoke-static {v7, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private o()V
    .locals 6

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v1, 0x22a

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x34

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0xd7

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1dc

    sget v3, Lcom/datami/smi/c/c;->o:I

    and-int/lit16 v3, v3, 0x16d

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x11f

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private p()Z
    .locals 10

    const/16 v9, 0xd7

    const/16 v8, 0x3e

    const/16 v7, 0xc

    const/4 v6, 0x6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/datami/smi/c/c;->h:Landroid/content/Context;

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x11f

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v7

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x45

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    aget-byte v3, v3, v7

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/datami/smi/c/c;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/datami/smi/c/c;->j:Ljava/lang/String;

    sput-object v2, Lcom/datami/smi/c/e;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v8

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    aget-byte v3, v3, v6

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    aget-byte v4, v4, v9

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/datami/smi/c/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    aget-byte v2, v2, v8

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    aget-byte v3, v3, v6

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    aget-byte v4, v4, v9

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/datami/smi/c/c;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private q()V
    .locals 5

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    const/16 v2, 0x3e

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0xd7

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/datami/smi/c/c;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/16 v8, 0x15

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/datami/smi/c/c;->e:Ljava/lang/String;

    sput-object v0, Lcom/datami/smi/c/e;->e:Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/b/m;->E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/c/c;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/b/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/datami/smi/c/c;->h:Landroid/content/Context;

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/c;->n:[B

    const/16 v6, 0x11f

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/Exception;

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0xc

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x45

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/c;->n:[B

    const/16 v6, 0xc

    aget-byte v5, v5, v6

    neg-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/16 v0, 0x1a7

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    aget-byte v3, v3, v8

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x126

    aget-byte v4, v4, v5

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const/16 v0, 0x12e

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x149

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0xf

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    :cond_2
    :goto_1
    const-wide/16 v4, -0x1

    sget-boolean v0, Lcom/datami/smi/b/m;->j:Z

    if-eqz v0, :cond_d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-gt v0, v3, :cond_d

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/datami/smi/b/m;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_3
    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Lcom/datami/smi/c/d;

    iget-object v3, p0, Lcom/datami/smi/c/c;->h:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/datami/smi/c/d;-><init>(Landroid/content/Context;)V

    :try_start_1
    invoke-virtual {v0}, Lcom/datami/smi/c/d;->start()V

    invoke-virtual {v0}, Lcom/datami/smi/c/d;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :goto_3
    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    if-nez v0, :cond_5

    new-instance v0, Lcom/datami/smi/c/o;

    invoke-direct {v0}, Lcom/datami/smi/c/o;-><init>()V

    sput-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    :cond_5
    sget-object v0, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    if-nez v0, :cond_6

    new-instance v0, Lcom/datami/smi/c/n;

    invoke-direct {v0}, Lcom/datami/smi/c/n;-><init>()V

    sput-object v0, Lcom/datami/smi/c/c;->b:Lcom/datami/smi/c/n;

    :cond_6
    invoke-static {}, Lcom/datami/smi/b/m;->T()Z

    sget v0, Lcom/datami/smi/c/c;->d:I

    if-ne v2, v0, :cond_0

    invoke-direct {p0}, Lcom/datami/smi/c/c;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    iget-object v1, v1, Lcom/datami/smi/c/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/datami/smi/c/u;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_7

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24e

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x1ab

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x1a4

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v1, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_4
    sget-object v1, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v1}, Lcom/datami/smi/c/o;->a()Lcom/datami/smi/c/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/datami/smi/c/q;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/datami/smi/c/c;->a:Lcom/datami/smi/c/o;

    invoke-virtual {v0}, Lcom/datami/smi/c/o;->a()Lcom/datami/smi/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/datami/smi/c/q;->b()Ljava/lang/String;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_0

    new-instance v1, Lcom/datami/smi/c/u;

    iget-object v2, p0, Lcom/datami/smi/c/c;->h:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/datami/smi/c/u;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    :try_start_2
    invoke-virtual {v1}, Lcom/datami/smi/c/u;->start()V

    invoke-virtual {v1}, Lcom/datami/smi/c/u;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/16 v0, 0x1a7

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v1, v8

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x126

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const/16 v0, 0x213

    sget-object v1, Lcom/datami/smi/c/c;->n:[B

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x74

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    :try_start_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/datami/smi/c/c;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/datami/smi/c/c;->j:Ljava/lang/String;

    sput-object v3, Lcom/datami/smi/c/e;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/c/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x3e

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/c;->n:[B

    const/16 v6, 0xd7

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/datami/smi/c/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x3e

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/c;->n:[B

    const/16 v6, 0xd7

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/datami/smi/c/c;->j:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_a
    move v0, v2

    :goto_5
    if-eqz v0, :cond_b

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/c/c;->a(Landroid/content/Context;)V

    :cond_b
    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v3, 0x22a

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x34

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/c;->n:[B

    const/16 v6, 0xd7

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1dc

    sget v4, Lcom/datami/smi/c/c;->o:I

    and-int/lit16 v4, v4, 0x16d

    sget-object v5, Lcom/datami/smi/c/c;->n:[B

    const/16 v6, 0x11f

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v3, 0x22a

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x34

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/c/c;->n:[B

    const/16 v6, 0xd7

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1dc

    sget v5, Lcom/datami/smi/c/c;->o:I

    and-int/lit16 v5, v5, 0x16d

    sget-object v6, Lcom/datami/smi/c/c;->n:[B

    const/16 v7, 0x11f

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_c
    move v0, v2

    :goto_6
    if-eqz v0, :cond_2

    sget-object v0, Lcom/datami/smi/SmiSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/datami/smi/c/c;->a(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/datami/smi/c/c;->i:Landroid/content/SharedPreferences;

    const/16 v3, 0x73

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    const/16 v5, 0x5c

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    :cond_e
    const-wide/16 v6, -0x1

    cmp-long v0, v6, v4

    if-eqz v0, :cond_f

    const-wide/16 v6, 0x0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-ltz v0, :cond_10

    :cond_f
    sput v1, Lcom/datami/smi/c/c;->d:I

    iput-boolean v2, p0, Lcom/datami/smi/c/c;->g:Z

    move v0, v1

    goto/16 :goto_2

    :cond_10
    sget-object v0, Lcom/datami/smi/c/c;->c:Lcom/datami/smi/c/b;

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/datami/smi/c/c;->j()V

    :cond_11
    move v0, v2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const/16 v0, 0x1a7

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    aget-byte v3, v3, v8

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    const/16 v5, 0x126

    aget-byte v4, v4, v5

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    const/16 v0, 0x1d0

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/c;->n:[B

    aget-byte v1, v4, v1

    invoke-static {v0, v3, v1}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    goto/16 :goto_3

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24e

    sget-object v2, Lcom/datami/smi/c/c;->n:[B

    const/16 v3, 0x1ab

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/c;->n:[B

    const/16 v4, 0x1a4

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/c;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_13
    move v0, v1

    goto/16 :goto_6

    :cond_14
    move v0, v1

    goto/16 :goto_5
.end method
