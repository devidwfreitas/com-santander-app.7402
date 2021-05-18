.class final enum Lcom/datami/smi/b/w;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/datami/smi/b/w;

.field public static final enum b:Lcom/datami/smi/b/w;

.field public static final enum c:Lcom/datami/smi/b/w;

.field public static final enum d:Lcom/datami/smi/b/w;

.field private static final synthetic e:[Lcom/datami/smi/b/w;

.field private static final f:[B

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xe

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/w;->f:[B

    const/16 v0, 0xf0

    sput v0, Lcom/datami/smi/b/w;->g:I

    new-instance v0, Lcom/datami/smi/b/w;

    sget-object v1, Lcom/datami/smi/b/w;->f:[B

    aget-byte v1, v1, v4

    add-int/lit8 v1, v1, -0x1

    or-int/lit8 v2, v1, 0x13

    sget-object v3, Lcom/datami/smi/b/w;->f:[B

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/w;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/datami/smi/b/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/datami/smi/b/w;->a:Lcom/datami/smi/b/w;

    new-instance v0, Lcom/datami/smi/b/w;

    sget-object v1, Lcom/datami/smi/b/w;->f:[B

    const/16 v2, 0xd

    aget-byte v1, v1, v2

    add-int/lit8 v2, v1, -0x4

    sget-object v3, Lcom/datami/smi/b/w;->f:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/w;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/datami/smi/b/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/datami/smi/b/w;->b:Lcom/datami/smi/b/w;

    new-instance v0, Lcom/datami/smi/b/w;

    sget-object v1, Lcom/datami/smi/b/w;->f:[B

    const/16 v2, 0x13

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/b/w;->f:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/b/w;->f:[B

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/w;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/datami/smi/b/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/datami/smi/b/w;->c:Lcom/datami/smi/b/w;

    new-instance v0, Lcom/datami/smi/b/w;

    sget-object v1, Lcom/datami/smi/b/w;->f:[B

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/b/w;->f:[B

    const/16 v3, 0xa

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/b/w;->f:[B

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/w;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/datami/smi/b/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/datami/smi/b/w;->d:Lcom/datami/smi/b/w;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/datami/smi/b/w;

    sget-object v1, Lcom/datami/smi/b/w;->a:Lcom/datami/smi/b/w;

    aput-object v1, v0, v5

    sget-object v1, Lcom/datami/smi/b/w;->b:Lcom/datami/smi/b/w;

    aput-object v1, v0, v6

    sget-object v1, Lcom/datami/smi/b/w;->c:Lcom/datami/smi/b/w;

    aput-object v1, v0, v7

    sget-object v1, Lcom/datami/smi/b/w;->d:Lcom/datami/smi/b/w;

    aput-object v1, v0, v8

    sput-object v0, Lcom/datami/smi/b/w;->e:[Lcom/datami/smi/b/w;

    return-void

    nop

    :array_0
    .array-data 1
        0x7bt
        0x53t
        0xct
        0x7at
        -0x1t
        0xat
        0x5t
        0xft
        -0x10t
        0x2t
        0x8t
        0x3t
        0xft
        0x4t
        0x1t
        0x8t
        -0xat
        0x6t
        0xft
        0x9t
        -0xft
        0xft
        -0xft
        0xdt
        0x2t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    rsub-int/lit8 v0, p1, 0x57

    sget-object v7, Lcom/datami/smi/b/w;->f:[B

    add-int/lit8 v3, p0, 0x4

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x5

    new-array v2, v1, [B

    add-int/lit8 v1, v1, -0x1

    if-nez v7, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x2

    add-int/lit8 v6, v6, 0x1

    :goto_1
    int-to-byte v0, v2

    aput-byte v0, v3, v4

    if-ne v4, v1, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v3

    move-object v3, v2

    move v2, v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/datami/smi/b/w;
    .locals 1

    const-class v0, Lcom/datami/smi/b/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/b/w;

    return-object v0
.end method

.method public static values()[Lcom/datami/smi/b/w;
    .locals 1

    sget-object v0, Lcom/datami/smi/b/w;->e:[Lcom/datami/smi/b/w;

    invoke-virtual {v0}, [Lcom/datami/smi/b/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/datami/smi/b/w;

    return-object v0
.end method
