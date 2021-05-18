.class public Lcom/datami/smi/h/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/ScheduledFuture;

.field private static d:Ljava/util/concurrent/ScheduledFuture;

.field private static e:Ljava/util/concurrent/ScheduledFuture;

.field private static final f:[B

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x15b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/h/f;->f:[B

    const/16 v0, 0x85

    sput v0, Lcom/datami/smi/h/f;->g:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v2, 0x22

    aget-byte v1, v1, v2

    or-int/lit8 v2, v1, 0x1a

    sget v3, Lcom/datami/smi/h/f;->g:I

    or-int/lit8 v3, v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/datami/smi/h/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/h/f;->b:Ljava/lang/String;

    sput-object v4, Lcom/datami/smi/h/f;->c:Ljava/util/concurrent/ScheduledFuture;

    sput-object v4, Lcom/datami/smi/h/f;->d:Ljava/util/concurrent/ScheduledFuture;

    sput-object v4, Lcom/datami/smi/h/f;->e:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :array_0
    .array-data 1
        0x40t
        0x10t
        -0x35t
        0x6at
        -0x4dt
        0xat
        -0xet
        -0x2t
        0x9t
        -0x2t
        0x8t
        0x18t
        -0x24t
        0xat
        0xct
        0x46t
        -0x2et
        0x1t
        0x51t
        -0x24t
        -0x30t
        0x12t
        -0x8t
        -0x5t
        0x2t
        0x54t
        -0x33t
        -0x13t
        -0x9t
        0xet
        -0xdt
        0xct
        0x1t
        -0x6t
        0x4t
        0x9t
        0x10t
        -0x6t
        0x10t
        -0x6t
        0x2ct
        -0x24t
        -0x30t
        0x12t
        -0x8t
        -0x5t
        0x2t
        0x54t
        -0x33t
        -0x13t
        -0x9t
        0xet
        -0xdt
        0xct
        0x1t
        -0x6t
        0x4t
        0x9t
        -0x53t
        0x6t
        0x5t
        0x7t
        -0x8t
        0x4ft
        -0x44t
        -0x10t
        0x12t
        -0x8t
        -0x5t
        0x31t
        -0x20t
        -0xet
        0x14t
        -0x7t
        -0x2t
        -0x6t
        0x54t
        -0x10t
        0x12t
        -0x8t
        -0x5t
        0x31t
        -0x20t
        -0xet
        0x14t
        -0x7t
        -0x2t
        -0x6t
        0x1t
        0x1t
        0x1t
        0x4dt
        -0x1ft
        0x1t
        0x21t
        -0x36t
        0x1t
        0x45t
        -0x27t
        0x1t
        0xft
        -0x32t
        0x1t
        0x34t
        -0x38t
        0x1t
        0xat
        -0xet
        -0x2t
        0x9t
        -0x2t
        0x8t
        0x18t
        -0x24t
        0xat
        0xct
        -0x30t
        0x12t
        -0x8t
        -0x5t
        0x55t
        -0x44t
        -0x10t
        0x12t
        -0x8t
        -0x5t
        0x27t
        -0x12t
        -0xbt
        0x9t
        0x46t
        -0xft
        -0x4t
        0x4t
        0x2t
        -0x10t
        0xat
        0x4t
        -0x4t
        0x8t
        0x48t
        -0x40t
        -0xet
        0x1t
        0x51t
        -0x44t
        -0x10t
        0x12t
        -0x8t
        -0x5t
        0x55t
        -0x53t
        0xct
        -0x3t
        0x9t
        -0xct
        0x53t
        -0x56t
        0xft
        -0xat
        0xdt
        0x49t
        -0x8t
        -0x8t
        0x5t
        0xdt
        0xft
        0x4t
        -0x2t
        -0x48t
        -0x9t
        0x1dt
        -0x11t
        0x4t
        -0x2t
        0x4at
        -0x8t
        -0x8t
        0x5t
        0xdt
        0xbt
        -0x19t
        0x5t
        0x17t
        -0x10t
        -0x6t
        0x18t
        -0x14t
        -0x3t
        0x9t
        -0xct
        0x0t
        0x6t
        0x5t
        0x7t
        -0x8t
        0x2t
        0x12t
        -0x10t
        0x12t
        -0x8t
        -0x5t
        0x27t
        -0x12t
        -0xbt
        0x9t
        -0xft
        -0x4t
        0x4t
        0x2t
        -0x10t
        0xat
        0x4t
        -0x4t
        0x8t
        0x48t
        -0x52t
        0x10t
        -0x6t
        0x4ct
        -0x44t
        -0x10t
        0x12t
        -0x8t
        -0x5t
        0x55t
        -0x53t
        0xct
        -0x3t
        0x9t
        -0xct
        0x53t
        -0x56t
        0xft
        -0xat
        0xdt
        0x49t
        -0x4ct
        0x5t
        -0x4t
        0x41t
        -0x8t
        -0x8t
        0x5t
        0xdt
        0x19t
        -0x30t
        0x12t
        -0x8t
        -0x5t
        0x23t
        -0x12t
        -0x1t
        -0x1t
        -0x9t
        0x0t
        0x10t
        -0xct
        0x20t
        -0x11t
        -0xct
        -0x3t
        0xet
        0x7t
        -0x1t
        -0x4ct
        0x1ft
        -0x20t
        0xct
        -0xct
        0x12t
        -0x12t
        0x6t
        -0x2t
        0x25t
        -0x12t
        -0xbt
        0x9t
        0x46t
        -0x1dt
        -0xct
        0xct
        -0x1t
        -0x6t
        0x1t
        0x4t
        -0x4t
        0x8t
        0x48t
        -0x53t
        0xdt
        0x4t
        0x46t
        -0x32t
        0x10t
        -0x6t
        0x2ct
        -0x24t
        -0x30t
        0x12t
        -0x8t
        -0x5t
        0x2t
        -0xft
        -0x4t
        0x4t
        0x2t
        -0x10t
        0xat
        0x4t
        -0x4t
        0x8t
        0x48t
        -0x52t
        0x10t
        -0x6t
        0x4ct
        -0x32t
        -0x11t
        -0xet
        0x0t
        0x6t
        0x51t
        -0x44t
        -0x10t
        0x12t
        -0x8t
        -0x5t
        0x55t
        -0x53t
        0xct
        -0x3t
        0x9t
        -0xct
        0x53t
        -0x56t
        0xft
        -0xat
        0xdt
        0x49t
        -0x12t
        0x4t
        0x11t
        -0x52t
        0xft
        0x3t
        -0xft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    add-int/lit8 v3, p0, 0x1

    rsub-int/lit8 v0, p1, 0x79

    sget-object v6, Lcom/datami/smi/h/f;->f:[B

    new-instance v7, Ljava/lang/String;

    rsub-int v1, p2, 0x12f

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v6, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    move v0, v3

    :goto_1
    int-to-byte v3, v1

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    if-ne v0, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v5, v1

    move v1, v0

    move v0, v4

    goto :goto_1
.end method

.method public static a()V
    .locals 4

    const/16 v3, 0xb

    sget-object v0, Lcom/datami/smi/h/f;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0xe

    or-int/lit8 v2, v1, 0x61

    invoke-static {v0, v1, v2}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    aget-byte v0, v0, v3

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v2, 0x5f

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/h/f;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/datami/smi/h/f;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lcom/datami/smi/b/m;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/h/f;->c:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0xe

    or-int/lit8 v2, v1, 0x61

    invoke-static {v0, v1, v2}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v2, 0x10a

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    const/16 v3, 0x7e

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x61

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/datami/smi/b/m;->x()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v2, 0x22

    aget-byte v1, v1, v2

    const/16 v2, 0x59

    sget v3, Lcom/datami/smi/h/f;->g:I

    ushr-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/datami/smi/b/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/datami/smi/d/g;

    invoke-direct {v1, p0}, Lcom/datami/smi/d/g;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/datami/smi/b/m;->x()J

    move-result-wide v2

    invoke-static {}, Lcom/datami/smi/b/m;->x()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/h/f;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 12

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v8, ""

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/16 v2, 0xa

    aget-byte v0, v0, v2

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0x48

    aget-byte v2, v2, v9

    sget-object v9, Lcom/datami/smi/h/f;->f:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v0, v2, v9}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0xb4

    aget-byte v0, v0, v9

    sget-object v9, Lcom/datami/smi/h/f;->f:[B

    const/16 v10, 0x48

    aget-byte v9, v9, v10

    const/16 v10, 0xe2

    invoke-static {v0, v9, v10}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/16 v3, 0xb4

    aget-byte v0, v0, v3

    sget-object v3, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0x48

    aget-byte v3, v3, v9

    const/16 v9, 0xe2

    invoke-static {v0, v3, v9}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    :cond_0
    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0x22

    aget-byte v0, v0, v9

    sget-object v9, Lcom/datami/smi/h/f;->f:[B

    const/16 v10, 0x3c

    aget-byte v9, v9, v10

    or-int/lit8 v10, v9, 0x6a

    invoke-static {v0, v9, v10}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/16 v4, 0x22

    aget-byte v0, v0, v4

    sget-object v4, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0x3c

    aget-byte v4, v4, v9

    or-int/lit8 v9, v4, 0x6a

    invoke-static {v0, v4, v9}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/4 v9, 0x5

    aget-byte v0, v0, v9

    sget-object v9, Lcom/datami/smi/h/f;->f:[B

    const/16 v10, 0xb4

    aget-byte v9, v9, v10

    sget v10, Lcom/datami/smi/h/f;->g:I

    or-int/lit8 v10, v10, 0x40

    invoke-static {v0, v9, v10}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/4 v5, 0x5

    aget-byte v0, v0, v5

    sget-object v5, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0xb4

    aget-byte v5, v5, v9

    sget v9, Lcom/datami/smi/h/f;->g:I

    or-int/lit8 v9, v9, 0x40

    invoke-static {v0, v5, v9}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0x159

    aget-byte v0, v0, v9

    sget-object v9, Lcom/datami/smi/h/f;->f:[B

    const/16 v10, 0x18

    aget-byte v9, v9, v10

    sget v10, Lcom/datami/smi/h/f;->g:I

    add-int/lit8 v10, v10, 0x4

    invoke-static {v0, v9, v10}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/16 v6, 0x159

    aget-byte v0, v0, v6

    sget-object v6, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0x18

    aget-byte v6, v6, v9

    sget v9, Lcom/datami/smi/h/f;->g:I

    add-int/lit8 v9, v9, 0x4

    invoke-static {v0, v6, v9}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_3
    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0x18

    aget-byte v0, v0, v9

    sget-object v9, Lcom/datami/smi/h/f;->f:[B

    const/16 v10, 0x3b

    aget-byte v9, v9, v10

    const/16 v10, 0x10b

    invoke-static {v0, v9, v10}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/16 v1, 0x18

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0x3b

    aget-byte v1, v1, v9

    const/16 v9, 0x10b

    invoke-static {v0, v1, v9}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v7, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0x64

    aget-byte v1, v1, v9

    sget-object v9, Lcom/datami/smi/h/f;->f:[B

    const/16 v10, 0x67

    aget-byte v9, v9, v10

    const/16 v10, 0xbb

    invoke-static {v1, v9, v10}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0xa0

    aget-byte v1, v1, v9

    const/16 v9, 0x59

    sget v10, Lcom/datami/smi/h/f;->g:I

    or-int/lit8 v10, v10, 0x6a

    invoke-static {v1, v9, v10}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0x3b

    aget-byte v1, v1, v9

    const/16 v9, 0x59

    sget v10, Lcom/datami/smi/h/f;->g:I

    or-int/lit8 v10, v10, 0x70

    invoke-static {v1, v9, v10}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0xe

    aget-byte v1, v1, v9

    const/16 v9, 0x59

    const/16 v10, 0x12b

    invoke-static {v1, v9, v10}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v9, 0x1d

    aget-byte v1, v1, v9

    const/16 v9, 0x59

    sget-object v10, Lcom/datami/smi/h/f;->f:[B

    const/16 v11, 0x7e

    aget-byte v10, v10, v11

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v9, v10}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v8, 0x3d

    aget-byte v1, v1, v8

    const/16 v8, 0x59

    sget v9, Lcom/datami/smi/h/f;->g:I

    add-int/lit8 v9, v9, 0x1

    invoke-static {v1, v8, v9}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/datami/smi/d/a;

    invoke-static {}, Lcom/datami/smi/h/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {v0 .. v6}, Lcom/datami/smi/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v7, :cond_7

    sget-object v1, Lcom/datami/smi/b/m;->h:Ljava/util/concurrent/ArrayBlockingQueue;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/datami/smi/b/m;->h:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    const/16 v3, 0xb

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x6

    or-int/lit8 v4, v3, 0x20

    invoke-static {v2, v3, v4}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    const/16 v3, 0x48

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/h/f;->f:[B

    const/16 v4, 0x68

    aget-byte v3, v3, v4

    neg-int v3, v3

    const/16 v4, 0x11f

    invoke-static {v2, v3, v4}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    sget-object v2, Lcom/datami/smi/b/m;->h:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    :cond_4
    sget-object v2, Lcom/datami/smi/b/m;->h:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/datami/smi/b/m;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/datami/smi/h/f;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/datami/smi/h/f;->e:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/datami/smi/h/f;->e:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0xe

    or-int/lit8 v2, v1, 0x61

    invoke-static {v0, v1, v2}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v2, 0x10a

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    const/16 v3, 0x7e

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xac

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/datami/smi/b/m;->y()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v2, 0x22

    aget-byte v1, v1, v2

    const/16 v2, 0x59

    sget v3, Lcom/datami/smi/h/f;->g:I

    ushr-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/datami/smi/d/f;

    invoke-direct {v0, p1}, Lcom/datami/smi/d/f;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/datami/smi/b/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcom/datami/smi/b/m;->y()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/h/f;->e:Ljava/util/concurrent/ScheduledFuture;

    :cond_6
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    sget-object v1, Lcom/datami/smi/b/m;->i:Ljava/util/concurrent/ArrayBlockingQueue;

    monitor-enter v1

    :try_start_2
    sget-object v2, Lcom/datami/smi/b/m;->i:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_8

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    const/16 v3, 0xb

    aget-byte v2, v2, v3

    or-int/lit8 v3, v2, 0x6

    or-int/lit8 v4, v3, 0x20

    invoke-static {v2, v3, v4}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    const/16 v3, 0x48

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/h/f;->f:[B

    const/16 v4, 0x7e

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x109

    invoke-static {v2, v3, v4}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    sget-object v2, Lcom/datami/smi/b/m;->i:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    :cond_8
    sget-object v2, Lcom/datami/smi/b/m;->i:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {p1}, Lcom/datami/smi/h/f;->a(Landroid/content/Context;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_9
    move v7, v1

    goto/16 :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 6

    const/16 v5, 0xbf

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v2, 0x15

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    aget-byte v2, v2, v5

    or-int/lit16 v3, v2, 0xd7

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v2, 0x18

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    const/16 v3, 0xc

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/h/f;->f:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    aget-byte v1, v1, v5

    or-int/lit8 v2, v1, 0x59

    const/16 v3, 0x12b

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/datami/smi/h/f;->f:[B

    const/16 v4, 0x112

    aget-byte v3, v3, v4

    const/16 v4, 0x109

    invoke-static {v2, v3, v4}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/datami/smi/b/m;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0xe

    or-int/lit8 v2, v1, 0x61

    invoke-static {v0, v1, v2}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/16 v1, 0x28

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v2, 0x7e

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    const/16 v3, 0xbf

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/b/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/datami/smi/d/g;

    invoke-direct {v1, p0}, Lcom/datami/smi/d/g;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x14

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/h/f;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/datami/smi/b/m;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/h/f;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/h/f;->e:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/datami/smi/h/f;->e:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/datami/smi/h/f;->f:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    or-int/lit8 v1, v0, 0xe

    or-int/lit8 v2, v1, 0x61

    invoke-static {v0, v1, v2}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v2, 0x10a

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/h/f;->f:[B

    const/16 v3, 0x7e

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xac

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/datami/smi/b/m;->y()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/h/f;->f:[B

    const/16 v2, 0x22

    aget-byte v1, v1, v2

    const/16 v2, 0x59

    sget v3, Lcom/datami/smi/h/f;->g:I

    ushr-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/h/f;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/datami/smi/d/f;

    invoke-direct {v0, p0}, Lcom/datami/smi/d/f;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/datami/smi/b/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcom/datami/smi/b/m;->y()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/h/f;->e:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method
