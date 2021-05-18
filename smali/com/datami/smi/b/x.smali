.class public Lcom/datami/smi/b/x;
.super Ljava/util/TimerTask;


# static fields
.field private static final d:[B

.field private static e:I


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x63

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/x;->d:[B

    const/4 v0, 0x1

    sput v0, Lcom/datami/smi/b/x;->e:I

    return-void

    nop

    :array_0
    .array-data 1
        0xct
        -0x27t
        0x53t
        -0x39t
        0x32t
        -0x16t
        0x1t
        0xat
        0x3t
        -0xct
        0x5t
        -0x2t
        -0x4ft
        0x48t
        0x4t
        -0x4ft
        0x32t
        0x19t
        -0x5t
        -0x18t
        0x12t
        -0x5t
        0x13t
        -0x2t
        -0xdt
        0x6t
        0x2t
        -0xat
        0x9t
        -0x13t
        0x12t
        -0xct
        0x5t
        -0x2t
        -0x1bt
        0xct
        0x11t
        -0x9t
        -0x32t
        0xet
        -0x1t
        0xet
        -0xdt
        -0x10t
        0x1at
        -0x1ft
        0x13t
        -0x2t
        -0xdt
        0x19t
        -0x5t
        -0x18t
        0x12t
        -0x5t
        0x13t
        -0x2t
        -0xdt
        0x6t
        0x2t
        -0xat
        0x9t
        -0x13t
        0x12t
        -0xct
        0x5t
        -0x2t
        -0x1bt
        0xct
        0x11t
        -0x9t
        -0x4ct
        0x53t
        -0xct
        0x3t
        -0x9t
        0xct
        -0x53t
        0x45t
        0x2t
        0x8t
        -0xet
        -0x2t
        -0x44t
        0x8t
        0x8t
        -0x5t
        -0xdt
        -0xbt
        0x19t
        -0x5t
        -0x17t
        0x10t
        0x6t
        -0x18t
        0x14t
        0x3t
        -0x9t
        0xct
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const-class v0, Lcom/datami/smi/b/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/datami/smi/b/x;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/datami/smi/b/x;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/datami/smi/b/x;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    add-int/lit8 v0, p2, 0x4

    mul-int/lit8 v1, p0, 0x2

    rsub-int/lit8 v1, v1, 0x5b

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v3, p1, 0xb

    sget-object v7, Lcom/datami/smi/b/x;->d:[B

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v7, :cond_1

    move v3, v4

    move v5, v0

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    move v0, v3

    :goto_1
    add-int/lit8 v5, v5, 0x1

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    if-ne v0, v8, :cond_0

    invoke-direct {v6, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v6

    :cond_0
    aget-byte v0, v7, v5

    goto :goto_0

    :cond_1
    move v5, v0

    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/datami/smi/b/x;->d:[B

    const/16 v1, 0x62

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/b/x;->d:[B

    const/16 v2, 0x19

    aget-byte v1, v1, v2

    or-int/lit8 v2, v1, 0x48

    invoke-static {v0, v1, v2}, Lcom/datami/smi/b/x;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/b/x;->d:[B

    const/16 v1, 0xe

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/b/x;->d:[B

    const/16 v2, 0x13

    aget-byte v1, v1, v2

    neg-int v1, v1

    const/16 v2, 0x2c

    invoke-static {v0, v1, v2}, Lcom/datami/smi/b/x;->a(III)Ljava/lang/String;

    iget-object v0, p0, Lcom/datami/smi/b/x;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/datami/smi/b/x;->c:Landroid/content/Context;

    const-class v2, Lcom/datami/smi/SmiIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/datami/smi/b/x;->d:[B

    const/16 v2, 0x18

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/b/x;->d:[B

    const/16 v3, 0x62

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x22

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/x;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/datami/smi/b/f;->b:Lcom/datami/smi/b/f;

    sput-object v1, Lcom/datami/smi/b/m;->l:Lcom/datami/smi/b/f;

    iget-object v1, p0, Lcom/datami/smi/b/x;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/datami/smi/b/x;->d:[B

    const/16 v1, 0x57

    aget-byte v0, v0, v1

    neg-int v0, v0

    sget-object v1, Lcom/datami/smi/b/x;->d:[B

    const/16 v2, 0x11

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/b/x;->d:[B

    const/16 v3, 0x28

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/b/x;->a(III)Ljava/lang/String;

    goto :goto_0
.end method
