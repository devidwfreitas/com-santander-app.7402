.class public final Lcom/datami/smi/f/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "0.0.0.0"

.field private static final b:I = 0x231d

.field private static final c:Ljava/lang/String;

.field private static final d:[B

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x27f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/f/j;->d:[B

    const/16 v0, 0xd7

    sput v0, Lcom/datami/smi/f/j;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/datami/smi/f/j;->e:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0xd

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x1bc

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/datami/smi/f/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/f/j;->c:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x2at
        -0x56t
        -0x4at
        -0x62t
        0x24t
        -0x1t
        0xbt
        0x3t
        -0x34t
        0x27t
        -0x5t
        0xft
        -0x5t
        0x0t
        -0x17t
        0x1ft
        0xct
        0x3t
        -0xdt
        0xbt
        -0x7t
        0xft
        -0x14t
        0x10t
        -0x1t
        -0xat
        0x15t
        -0x2t
        0x14t
        -0x32t
        0x2et
        0x5t
        -0xbt
        -0x19t
        0x15t
        0x0t
        0x4t
        0x6t
        0xft
        -0xft
        0xft
        0x3t
        0x1t
        -0x1at
        0x15t
        0x0t
        0x4t
        0x6t
        0xft
        -0xft
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x4bt
        -0x10t
        -0x1t
        0xbt
        0x0t
        0xdt
        -0x44t
        0x16t
        0x32t
        -0x1t
        0xat
        -0x2t
        -0xct
        0xft
        -0x2at
        0x2et
        -0xft
        0xet
        -0x6t
        -0x1ft
        0x25t
        -0xct
        0x5t
        0x3t
        0x1t
        -0x21t
        0x31t
        -0x3t
        0x35t
        -0x13t
        0x4t
        0xdt
        0x6t
        -0x9t
        0x8t
        0x1t
        -0x4ct
        0x54t
        -0xbt
        0x10t
        -0xct
        0x11t
        0x2t
        -0x9t
        0x7t
        -0x5t
        -0x45t
        0x39t
        0x10t
        -0x1t
        -0x15t
        0x20t
        0xdt
        -0x52t
        0x52t
        0x4t
        -0x1t
        0xbt
        0x3t
        -0x57t
        0x56t
        -0xat
        0xct
        -0x1t
        0x8t
        -0xct
        0x3t
        -0x46t
        0x43t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x42t
        -0x7t
        0x11t
        -0x44t
        0x24t
        0x24t
        -0x1t
        0xbt
        0x3t
        -0x27t
        0x24t
        -0x1t
        0x3t
        -0x9t
        0xft
        0x4t
        -0x9t
        -0x2t
        0x10t
        -0x37t
        -0x18t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x4bt
        -0x10t
        -0x1t
        0xbt
        0x0t
        0xdt
        -0x44t
        0x22t
        0x19t
        0x11t
        0x5t
        -0x6t
        0x5t
        -0x5t
        0xet
        0x2t
        -0x2t
        0x5t
        -0x43t
        0x44t
        0x4t
        -0x1t
        0xbt
        0x3t
        -0x27t
        0x21t
        0x5t
        0x4t
        -0x29t
        0x32t
        -0x1t
        0xat
        -0x2t
        -0xct
        0xft
        -0x2at
        0x2et
        -0xft
        0xet
        -0x6t
        -0x19t
        0x15t
        0xet
        0x6t
        -0xet
        0x10t
        0x3t
        -0x21t
        0x26t
        -0xet
        0x12t
        -0xet
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x4bt
        -0x10t
        -0x1t
        0xbt
        0x0t
        0xdt
        -0x44t
        0x1et
        0xft
        0x10t
        -0x1t
        -0x1dt
        0x2et
        0x5t
        -0xbt
        -0x19t
        0x19t
        0x17t
        -0x13t
        -0x1dt
        0x32t
        -0x7t
        -0x3t
        0x5t
        0x0t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x35t
        0x11t
        0x2t
        -0x40t
        0x15t
        0x31t
        0x2t
        -0x2t
        -0x1t
        -0x4t
        0x0t
        0x15t
        -0x9t
        0x8t
        0x1t
        0x35t
        -0x13t
        0x4t
        0xdt
        0x6t
        -0x9t
        0x8t
        0x1t
        -0x4ct
        0x54t
        -0xbt
        0x10t
        -0xct
        0x11t
        0x2t
        -0x9t
        0x7t
        -0x5t
        -0x45t
        0x39t
        0x10t
        -0x1t
        -0x15t
        0x20t
        0xdt
        -0x52t
        0x52t
        0x4t
        -0x1t
        0xbt
        0x3t
        -0x57t
        0x56t
        -0xat
        0xct
        -0x1t
        0x8t
        -0xct
        0x3t
        -0x46t
        0x43t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x4bt
        -0x10t
        -0x1t
        0xbt
        0x0t
        0xdt
        -0x44t
        0x22t
        0x19t
        0x11t
        0x5t
        -0x6t
        0x5t
        -0x5t
        -0x2ft
        -0x18t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x35t
        0x11t
        0x2t
        -0x40t
        0x20t
        0x25t
        -0xct
        0x5t
        0x3t
        0x1t
        -0x21t
        0x31t
        -0x3t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x3dt
        0x7t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x35t
        0x4t
        0x13t
        -0x9t
        0x8t
        0x1t
        -0x3et
        0x24t
        0x4t
        -0x1t
        0xbt
        0x3t
        0x8t
        -0x1at
        0x7t
        -0x5t
        0xft
        -0x5t
        0x0t
        0x0t
        0x11t
        -0x29t
        0x27t
        0x7t
        0x3t
        -0x11t
        0xft
        -0x9t
        0x4t
        0xet
        0x2t
        -0x2t
        -0x40t
        0x44t
        0x4t
        -0x1t
        0xbt
        0x3t
        -0x27t
        0x21t
        0x5t
        0x4t
        0xbt
        0xbt
        -0x2t
        -0xat
        -0x1bt
        0x24t
        -0x1t
        0xbt
        0x3t
        -0x2ft
        0x29t
        0x6t
        0x3t
        -0x27t
        0x19t
        0x17t
        -0x13t
        -0x1dt
        0x32t
        -0x7t
        -0x3t
        0x5t
        0x0t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x4bt
        -0x10t
        -0x1t
        0xbt
        0x0t
        0xdt
        -0x44t
        0x2bt
        0x10t
        -0x1t
        -0xat
        0x15t
        -0x2t
        0x14t
        -0x32t
        0x2bt
        -0x9t
        0x14t
        0x2t
        -0x8t
        -0x4t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x42t
        -0x7t
        0x11t
        -0x44t
        0x24t
        0x24t
        -0x1t
        0xbt
        0x3t
        -0x27t
        0x24t
        -0x1t
        0x3t
        -0x9t
        0xft
        0x4t
        -0x9t
        -0x2t
        0x10t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x42t
        -0x7t
        0x11t
        -0x44t
        0x3ct
        0xet
        0x2t
        -0x2t
        -0x40t
        0x26t
        0x15t
        0xet
        0x6t
        -0xet
        0x10t
        0x3t
        -0x21t
        0x26t
        -0xet
        0x12t
        -0xet
        0xet
        0x2t
        -0x2t
        -0x40t
        0x44t
        0x4t
        -0x1t
        0xbt
        0x3t
        -0x2ft
        0x29t
        0x6t
        0x3t
        0xet
        -0x1t
        0x0t
        -0x14t
        0x10t
        -0x1t
        -0xat
        0x15t
        -0x2t
        0x14t
        0x0t
        0x4t
        0x0t
        0x4t
        0x0t
        0x4t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x4bt
        -0x10t
        -0x1t
        0xbt
        0x0t
        0xdt
        -0x44t
        0x2bt
        0x10t
        -0x1t
        -0xat
        0x15t
        -0x2t
        0x14t
        0xet
        0x2t
        -0x2t
        0x5t
        -0x43t
        0x44t
        0x4t
        -0x1t
        0xbt
        0x3t
        -0x2ft
        0x29t
        0x6t
        0x3t
        0x24t
        -0x1t
        0xbt
        0x3t
        -0x24t
        0x14t
        0x11t
        0x2t
        -0x9t
        0x7t
        -0x5t
        0xet
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x4bt
        -0x10t
        -0x1t
        0xbt
        0x0t
        0xdt
        -0x44t
        0x2bt
        0x10t
        -0x1t
        -0xat
        0x15t
        -0x2t
        0x14t
        -0x32t
        0x2et
        0x5t
        -0xbt
        -0x3t
        -0xat
        -0x1t
        0x15t
        -0xdt
        -0x13t
        0x24t
        -0x1t
        0xbt
        0x3t
        -0xct
        0xbt
        -0x8t
        -0xft
        0x23t
        -0x11t
        0x15t
        -0x9t
        -0x4t
        -0x14t
        0x1at
        0x10t
        0x2t
        -0x10t
        0x8t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object v1
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v5, 0x0

    rsub-int v0, p0, 0x26e

    add-int/lit8 v3, p2, 0x30

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/datami/smi/f/j;->d:[B

    add-int/lit8 v1, p1, 0x5

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v8, :cond_1

    move-object v3, v2

    move v4, v5

    move v6, v0

    move v2, v0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x2

    :goto_1
    add-int/lit8 v6, v6, 0x1

    int-to-byte v0, v2

    aput-byte v0, v3, v4

    if-ne v4, v1, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v8, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v0

    move v9, v3

    move-object v3, v2

    move v2, v9

    goto :goto_1
.end method

.method private static a()V
    .locals 6

    const/16 v5, 0x1a

    :try_start_0
    sget-object v0, Lcom/datami/smi/f/j;->d:[B

    const/16 v1, 0x273

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0x1a

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x53

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0xa5

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x40

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x53

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0xd

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x10

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x7d

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0x149

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x5b

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x6c

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x21a

    sget v3, Lcom/datami/smi/f/j;->e:I

    and-int/lit16 v3, v3, 0x161

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    throw v0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0x149

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x5b

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x6c

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x164

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x1ef

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    throw v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 9

    const/4 v2, 0x0

    const/16 v8, 0x166

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v0, 0x1d5

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x62

    aget-byte v1, v1, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x53

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v0, 0xef

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x25

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x98

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v0, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v7

    new-array v5, v6, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    aput-object v0, v5, v7

    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x1a6

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x5b

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    aget-byte v4, v4, v8

    invoke-static {v1, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    sget v1, Lcom/datami/smi/f/j;->e:I

    add-int/lit8 v1, v1, -0x3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x1f

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    aget-byte v4, v4, v8

    invoke-static {v1, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 9

    const/16 v8, 0x166

    const/4 v2, 0x0

    const/16 v4, 0x53

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    const/16 v0, 0x1d5

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x62

    aget-byte v1, v1, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_5

    const/16 v0, 0xef

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x25

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x98

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v0, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v7

    new-array v5, v6, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    aput-object v0, v5, v7

    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x1a6

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x5b

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    aget-byte v4, v4, v8

    invoke-static {v1, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    sget v1, Lcom/datami/smi/f/j;->e:I

    add-int/lit8 v1, v1, -0x3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x1f

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    aget-byte v4, v4, v8

    invoke-static {v1, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_3

    :try_start_0
    sget-object v0, Lcom/datami/smi/f/j;->d:[B

    const/16 v1, 0x273

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0x1a

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x53

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0xa5

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x40

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x53

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0xd

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x10

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x7d

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0x149

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x5b

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x6c

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x21a

    sget v3, Lcom/datami/smi/f/j;->e:I

    and-int/lit16 v3, v3, 0x161

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x1a

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    throw v0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0x149

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x5b

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x6c

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x164

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x1ef

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x1a

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    throw v0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_4

    :try_start_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const/16 v1, 0x6f

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x5a

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x68

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe5

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x5a

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x68

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0x166

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x43

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x68

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1c0

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x43

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x68

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/datami/smi/f/j;->e:I

    and-int/lit16 v0, v0, 0x3e1

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0x99

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x53

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x6f

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x62

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x53

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x25

    aget-byte v3, v3, v4

    or-int/lit8 v4, v3, 0x30

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/datami/smi/f/j;->e:I

    and-int/lit16 v1, v1, 0x3e1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x99

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x53

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0x259

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x65

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x166

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0x273

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x1a

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x53

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0x1b2

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x5b

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x166

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v1, 0x23d

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x40

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x53

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0xcb

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x25

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x7d

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v1, 0xa5

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x40

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x53

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/16 v2, 0x19a

    const/16 v3, 0x1c

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x53

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xa5

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x40

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/f/j;->d:[B

    const/16 v8, 0x53

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x43

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x25

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x67

    aget-byte v6, v6, v7

    neg-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_4
    invoke-static {p0}, Lcom/datami/smi/f/j;->b(Landroid/content/Context;)Z

    goto/16 :goto_2

    :cond_5
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private static a(Landroid/webkit/WebView;)V
    .locals 9

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const/16 v1, 0x6f

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x5a

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x68

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe5

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x5a

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x68

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0x166

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x43

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x68

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1c0

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x43

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x68

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/datami/smi/f/j;->e:I

    and-int/lit16 v0, v0, 0x3e1

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0x99

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x53

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x6f

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x62

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x53

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x25

    aget-byte v3, v3, v4

    or-int/lit8 v4, v3, 0x30

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/datami/smi/f/j;->e:I

    and-int/lit16 v1, v1, 0x3e1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x99

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x53

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0x259

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x65

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x166

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v2, 0x273

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x1a

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x53

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0x1b2

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x5b

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x166

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v1, 0x23d

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x40

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x53

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0xcb

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x25

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x7d

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v1, 0xa5

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x40

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x53

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/16 v2, 0x19a

    const/16 v3, 0x1c

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x53

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xa5

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x40

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/f/j;->d:[B

    const/16 v8, 0x53

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x43

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x25

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x67

    aget-byte v6, v6, v7

    neg-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;I)Z
    .locals 6

    const/16 v5, 0x5a

    const/16 v4, 0x43

    const/16 v3, 0x68

    const/16 v0, 0x6f

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    aget-byte v1, v1, v5

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0xe5

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    aget-byte v1, v1, v5

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/f/j;->d:[B

    const/16 v1, 0x166

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0x1c0

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Lcom/datami/smi/f/j;->a(Landroid/webkit/WebView;Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    invoke-static {p2, p3}, Lcom/datami/smi/f/j;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_2

    invoke-static {p1, p2, p3}, Lcom/datami/smi/f/j;->b(Landroid/webkit/WebView;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p2, p3}, Lcom/datami/smi/f/j;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v7, 0x166

    const/16 v6, 0x68

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v0, 0x6f

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x5a

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0xe5

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x5a

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/f/j;->d:[B

    aget-byte v0, v0, v7

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x43

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0x1c0

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x43

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    aget-byte v5, v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0x17a

    :try_start_0
    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0xd3

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x53

    aget-byte v5, v5, v6

    invoke-static {v0, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v4, 0x223

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x1f

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x166

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x124

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x17

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x53

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x24e

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x1f

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/f/j;->d:[B

    const/16 v8, 0x166

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x26b

    sget-object v9, Lcom/datami/smi/f/j;->d:[B

    const/16 v10, 0x4a

    aget-byte v9, v9, v10

    sget-object v10, Lcom/datami/smi/f/j;->d:[B

    const/16 v11, 0x6c

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x245

    sget-object v8, Lcom/datami/smi/f/j;->d:[B

    const/16 v9, 0x24

    aget-byte v8, v8, v9

    or-int/lit8 v9, v8, 0x3b

    invoke-static {v7, v8, v9}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/content/Intent;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const/16 v8, 0x110

    sget-object v9, Lcom/datami/smi/f/j;->d:[B

    const/16 v10, 0xe7

    aget-byte v9, v9, v10

    neg-int v9, v9

    sget-object v10, Lcom/datami/smi/f/j;->d:[B

    const/16 v11, 0x53

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v7, v8, v9

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/ClassNotFoundException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move v0, v2

    :goto_1
    return v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/NoSuchFieldException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/IllegalAccessException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move v0, v2

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/IllegalArgumentException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move v0, v2

    goto :goto_1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/NoSuchMethodException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move v0, v2

    goto :goto_1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static a(Landroid/webkit/WebView;Ljava/lang/String;I)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x1d5

    :try_start_0
    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x62

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x53

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v4, 0xef

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x25

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x98

    aget-byte v6, v6, v7

    neg-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v5, 0x1a6

    :try_start_1
    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x5b

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/f/j;->d:[B

    const/16 v8, 0x166

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v4, :cond_0

    const/16 v3, 0x8b

    :try_start_2
    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x99

    aget-byte v5, v5, v6

    neg-int v5, v5

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x53

    aget-byte v6, v6, v7

    invoke-static {v3, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget v5, Lcom/datami/smi/f/j;->e:I

    add-int/lit8 v5, v5, -0x3

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x1f

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/f/j;->d:[B

    const/16 v8, 0x166

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw v0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x273

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x1a

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x53

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0xa5

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x40

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x53

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0xd

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x10

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x7d

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xc1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 6

    const/16 v5, 0x5a

    const/16 v4, 0x43

    const/16 v3, 0x68

    const/16 v0, 0x6f

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    aget-byte v1, v1, v5

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0xe5

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    aget-byte v1, v1, v5

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/f/j;->d:[B

    const/16 v1, 0x166

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 v0, 0x1c0

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 12

    const/16 v8, 0x166

    const/16 v7, 0x68

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const/16 v4, 0x6f

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x5a

    aget-byte v5, v5, v6

    neg-int v5, v5

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xe5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x5a

    aget-byte v5, v5, v6

    neg-int v5, v5

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    aget-byte v4, v4, v8

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x43

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x1c0

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x43

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    aget-byte v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x17a

    :try_start_0
    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0xd3

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x53

    aget-byte v5, v5, v6

    invoke-static {v0, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v4, 0x223

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x1f

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x166

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x124

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x17

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x53

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x24e

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x1f

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/f/j;->d:[B

    const/16 v8, 0x166

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x26b

    sget-object v9, Lcom/datami/smi/f/j;->d:[B

    const/16 v10, 0x4a

    aget-byte v9, v9, v10

    sget-object v10, Lcom/datami/smi/f/j;->d:[B

    const/16 v11, 0x6c

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x245

    sget-object v8, Lcom/datami/smi/f/j;->d:[B

    const/16 v9, 0x24

    aget-byte v8, v8, v9

    or-int/lit8 v9, v8, 0x3b

    invoke-static {v7, v8, v9}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/content/Intent;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const/16 v8, 0x110

    sget-object v9, Lcom/datami/smi/f/j;->d:[B

    const/16 v10, 0xe7

    aget-byte v9, v9, v10

    neg-int v9, v9

    sget-object v10, Lcom/datami/smi/f/j;->d:[B

    const/16 v11, 0x53

    aget-byte v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v7, v8, v9

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/ClassNotFoundException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move v0, v2

    :goto_1
    return v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/NoSuchFieldException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/IllegalAccessException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move v0, v2

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/IllegalArgumentException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move v0, v2

    goto :goto_1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/NoSuchMethodException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move v0, v2

    goto :goto_1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static b(Landroid/webkit/WebView;Ljava/lang/String;I)Z
    .locals 11

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget v2, Lcom/datami/smi/f/j;->e:I

    and-int/lit16 v2, v2, 0x3e1

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x99

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x53

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x6f

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x62

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/f/j;->d:[B

    const/16 v8, 0x53

    aget-byte v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x25

    aget-byte v5, v5, v6

    or-int/lit8 v6, v5, 0x30

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget v3, Lcom/datami/smi/f/j;->e:I

    and-int/lit16 v3, v3, 0x3e1

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x99

    aget-byte v4, v4, v5

    neg-int v4, v4

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x53

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x259

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x65

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x166

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x273

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x1a

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x53

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x1b2

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x5b

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x166

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v3, 0x23d

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x40

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x53

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0xcb

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x25

    aget-byte v5, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x7d

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v3, 0xa5

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x40

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/f/j;->d:[B

    const/16 v6, 0x53

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/16 v4, 0x19a

    const/16 v5, 0x1c

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x53

    aget-byte v6, v6, v7

    invoke-static {v4, v5, v6}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0xa5

    sget-object v8, Lcom/datami/smi/f/j;->d:[B

    const/16 v9, 0x40

    aget-byte v8, v8, v9

    sget-object v9, Lcom/datami/smi/f/j;->d:[B

    const/16 v10, 0x53

    aget-byte v9, v9, v10

    invoke-static {v7, v8, v9}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    sget-object v6, Lcom/datami/smi/f/j;->d:[B

    const/16 v7, 0x43

    aget-byte v6, v6, v7

    sget-object v7, Lcom/datami/smi/f/j;->d:[B

    const/16 v8, 0x25

    aget-byte v7, v7, v8

    sget-object v8, Lcom/datami/smi/f/j;->d:[B

    const/16 v9, 0x67

    aget-byte v8, v8, v9

    neg-int v8, v8

    invoke-static {v6, v7, v8}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x1d5

    sget-object v1, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x62

    aget-byte v1, v1, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x53

    aget-byte v3, v3, v4

    invoke-static {v0, v1, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v0, 0xef

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x25

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/f/j;->d:[B

    const/16 v5, 0x98

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v0, v3, v4}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v7

    new-array v5, v6, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    aput-object v0, v5, v7

    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x1a6

    sget-object v2, Lcom/datami/smi/f/j;->d:[B

    const/16 v3, 0x5b

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/f/j;->d:[B

    const/16 v4, 0x166

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/f/j;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method
