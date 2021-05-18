.class public final enum Lcom/datami/smi/b/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/datami/smi/b/d;

.field public static final enum b:Lcom/datami/smi/b/d;

.field public static final enum c:Lcom/datami/smi/b/d;

.field public static final enum d:Lcom/datami/smi/b/d;

.field public static e:I

.field public static f:I

.field public static g:B

.field public static h:B

.field private static final synthetic j:[Lcom/datami/smi/b/d;

.field private static final k:[B

.field private static l:I


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x20

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/d;->k:[B

    const/16 v0, 0xbc

    sput v0, Lcom/datami/smi/b/d;->l:I

    new-instance v0, Lcom/datami/smi/b/d;

    sget-object v1, Lcom/datami/smi/b/d;->k:[B

    aget-byte v1, v1, v5

    sget-object v2, Lcom/datami/smi/b/d;->k:[B

    const/16 v3, 0x21

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/b/d;->k:[B

    const/16 v4, 0x1b

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/d;->a(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v2}, Lcom/datami/smi/b/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/b/d;->a:Lcom/datami/smi/b/d;

    new-instance v0, Lcom/datami/smi/b/d;

    sget-object v1, Lcom/datami/smi/b/d;->k:[B

    aget-byte v1, v1, v5

    sget-object v2, Lcom/datami/smi/b/d;->k:[B

    const/16 v3, 0x24

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/b/d;->k:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/d;->a(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {v0, v1, v7, v2}, Lcom/datami/smi/b/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/b/d;->b:Lcom/datami/smi/b/d;

    new-instance v0, Lcom/datami/smi/b/d;

    sget-object v1, Lcom/datami/smi/b/d;->k:[B

    aget-byte v1, v1, v5

    sget-object v2, Lcom/datami/smi/b/d;->k:[B

    const/16 v3, 0x28

    aget-byte v2, v2, v3

    invoke-static {v1, v1, v2}, Lcom/datami/smi/b/d;->a(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v1, v8, v2}, Lcom/datami/smi/b/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/b/d;->c:Lcom/datami/smi/b/d;

    new-instance v0, Lcom/datami/smi/b/d;

    sget-object v1, Lcom/datami/smi/b/d;->k:[B

    const/16 v2, 0x23

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/b/d;->k:[B

    const/16 v3, 0x14

    aget-byte v2, v2, v3

    neg-int v2, v2

    or-int/lit8 v3, v2, 0x1c

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/d;->a(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-direct {v0, v1, v9, v2}, Lcom/datami/smi/b/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/datami/smi/b/d;->d:Lcom/datami/smi/b/d;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/datami/smi/b/d;

    sget-object v1, Lcom/datami/smi/b/d;->a:Lcom/datami/smi/b/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/datami/smi/b/d;->b:Lcom/datami/smi/b/d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/datami/smi/b/d;->c:Lcom/datami/smi/b/d;

    aput-object v1, v0, v8

    sget-object v1, Lcom/datami/smi/b/d;->d:Lcom/datami/smi/b/d;

    aput-object v1, v0, v9

    sput-object v0, Lcom/datami/smi/b/d;->j:[Lcom/datami/smi/b/d;

    sget-object v0, Lcom/datami/smi/b/d;->b:Lcom/datami/smi/b/d;

    iget v0, v0, Lcom/datami/smi/b/d;->i:I

    shl-int/lit8 v0, v0, 0x4

    sget-object v1, Lcom/datami/smi/b/e;->b:Lcom/datami/smi/b/e;

    iget v1, v1, Lcom/datami/smi/b/e;->d:I

    add-int/2addr v0, v1

    sput v0, Lcom/datami/smi/b/d;->e:I

    sget-object v0, Lcom/datami/smi/b/d;->c:Lcom/datami/smi/b/d;

    iget v0, v0, Lcom/datami/smi/b/d;->i:I

    shl-int/lit8 v0, v0, 0x4

    sget-object v1, Lcom/datami/smi/b/e;->b:Lcom/datami/smi/b/e;

    iget v1, v1, Lcom/datami/smi/b/e;->d:I

    add-int/2addr v0, v1

    sput v0, Lcom/datami/smi/b/d;->f:I

    sget-object v0, Lcom/datami/smi/b/d;->a:Lcom/datami/smi/b/d;

    iget v0, v0, Lcom/datami/smi/b/d;->i:I

    shl-int/lit8 v0, v0, 0x4

    sget-object v1, Lcom/datami/smi/b/e;->a:Lcom/datami/smi/b/e;

    iget v1, v1, Lcom/datami/smi/b/e;->d:I

    add-int/2addr v0, v1

    int-to-byte v0, v0

    sput-byte v0, Lcom/datami/smi/b/d;->g:B

    sget-object v0, Lcom/datami/smi/b/d;->a:Lcom/datami/smi/b/d;

    iget v0, v0, Lcom/datami/smi/b/d;->i:I

    shl-int/lit8 v0, v0, 0x4

    sget-object v1, Lcom/datami/smi/b/e;->b:Lcom/datami/smi/b/e;

    iget v1, v1, Lcom/datami/smi/b/e;->d:I

    add-int/2addr v0, v1

    int-to-byte v0, v0

    sput-byte v0, Lcom/datami/smi/b/d;->h:B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x52t
        0x55t
        -0x62t
        -0x16t
        -0x1t
        0xat
        -0x19t
        0xet
        0x2t
        -0x16t
        -0x1t
        0xat
        -0x19t
        0xbt
        0xbt
        -0xet
        -0x6t
        0xet
        -0x10t
        -0x3t
        -0x16t
        -0x1t
        0xat
        -0x19t
        0x1at
        -0xbt
        0x5t
        0x2t
        -0x13t
        -0xft
        0x1at
        0x0t
        -0x4t
        -0x7t
        0x1t
        0x9t
        -0x14t
        -0x3t
        -0xdt
        0x10t
        -0x8t
        0xat
        -0x1at
        0x9t
        -0x7t
        0x7t
        0x9t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/datami/smi/b/d;->i:I

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/datami/smi/b/d;->i:I

    return v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 8

    const/4 v3, -0x1

    rsub-int/lit8 v1, p1, 0x10

    sget-object v6, Lcom/datami/smi/b/d;->k:[B

    mul-int/lit8 v0, p0, 0xb

    add-int/lit8 v0, v0, 0x41

    add-int/lit8 v4, p2, 0x4

    new-instance v7, Ljava/lang/String;

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v6, :cond_1

    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    int-to-byte v0, v2

    aput-byte v0, v3, v4

    if-ne v4, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {v7, v3, v0}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/datami/smi/b/d;
    .locals 1

    const-class v0, Lcom/datami/smi/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/b/d;

    return-object v0
.end method

.method public static values()[Lcom/datami/smi/b/d;
    .locals 1

    sget-object v0, Lcom/datami/smi/b/d;->j:[Lcom/datami/smi/b/d;

    invoke-virtual {v0}, [Lcom/datami/smi/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/datami/smi/b/d;

    return-object v0
.end method
