.class public Lcom/datami/smi/b/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:J

.field private static d:Ljava/util/ArrayList;

.field private static final e:[B

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x190

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/h;->e:[B

    const/16 v0, 0x9a

    sput v0, Lcom/datami/smi/b/h;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7a

    sget-object v2, Lcom/datami/smi/b/h;->e:[B

    const/16 v3, 0x45

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    const/16 v4, 0xcd

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/datami/smi/b/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/datami/smi/b/h;->a:Ljava/lang/String;

    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/datami/smi/b/h;->b:J

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/datami/smi/b/h;->c:J

    const/4 v0, 0x0

    sput-object v0, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    return-void

    nop

    :array_0
    .array-data 1
        0x12t
        -0x7ct
        0x46t
        0x12t
        0x25t
        0x8t
        -0x15t
        0xbt
        -0x3t
        -0x5t
        -0x44t
        0x44t
        -0x3t
        0x13t
        -0x13t
        -0x41t
        0x46t
        0x9t
        0x3t
        -0x52t
        0x43t
        -0x2t
        0x2t
        0x5t
        0x1t
        0x5t
        -0x7t
        -0x3bt
        -0xct
        0x52t
        -0xdt
        0x2t
        -0x2t
        0x13t
        -0x58t
        0x1dt
        -0x1dt
        0x13t
        -0x2t
        0xct
        0x3t
        -0xet
        -0x44t
        0x44t
        0x1t
        0x7t
        -0x7t
        0xft
        -0xft
        -0x1t
        -0x44t
        0x46t
        0x9t
        0x3t
        -0x52t
        0x54t
        -0x5t
        -0x4t
        -0x6t
        0x9t
        -0x34t
        -0x1at
        -0xct
        0x44t
        0x1t
        0xet
        0x1t
        -0x2ct
        0x27t
        0x4t
        0x1t
        -0x54t
        0x1dt
        -0x1dt
        0x54t
        -0x5t
        -0x4t
        -0x6t
        0x9t
        -0x4et
        0x45t
        0x13t
        -0x8t
        -0x7t
        0x9t
        0x7t
        -0x25t
        0x15t
        0x4t
        -0x8t
        -0x2bt
        -0x1at
        0x13t
        -0x2t
        0xct
        0x3t
        -0xet
        -0x44t
        0x4et
        0x1t
        0x5t
        -0x54t
        0x46t
        0x9t
        0x6t
        -0x7t
        -0xat
        -0x44t
        0x46t
        0x9t
        0x3t
        -0x52t
        0x0t
        0x46t
        0x9t
        0x3t
        -0x52t
        0x43t
        0xdt
        -0x1ct
        0x1bt
        -0x4t
        -0x6t
        0x9t
        -0x34t
        -0x1at
        0x9t
        0x9t
        -0x4t
        -0xct
        -0xct
        0x4dt
        -0xct
        0x13t
        -0x11t
        0x5t
        -0x3t
        -0x1t
        -0x2at
        -0x1at
        0x54t
        -0x5t
        -0x4t
        -0x6t
        0x9t
        -0x4et
        0x49t
        0xat
        -0x53t
        0x56t
        -0x15t
        0xbt
        -0x3t
        -0x5t
        0x13t
        -0x2t
        0xct
        0x3t
        -0xet
        -0x44t
        0x4et
        0x1t
        0x5t
        -0x54t
        0x46t
        0x9t
        0x6t
        -0x7t
        -0xat
        -0x44t
        0x46t
        0x9t
        0x3t
        -0x52t
        0x55t
        -0x3t
        -0x6t
        -0x4ct
        0x3t
        0x0t
        -0x12t
        0x13t
        -0x2t
        0xct
        0x3t
        -0xet
        -0x3ct
        0x1t
        -0xct
        0x52t
        -0xdt
        0x2t
        -0x2t
        0x13t
        -0x3et
        -0x1at
        0xat
        -0x2et
        0x28t
        0x3t
        0x4t
        0x5t
        -0x51t
        0x1t
        -0x9t
        0x1at
        -0x1at
        0x41t
        0xdt
        -0xat
        -0x44t
        0x55t
        -0x3t
        -0x6t
        -0x32t
        0x1t
        0x7t
        -0x7t
        0xft
        -0xft
        -0x13t
        0x13t
        -0x2t
        0xct
        0x3t
        -0xet
        -0x3ct
        0x1t
        0x13t
        -0x2t
        0xct
        0x3t
        -0xet
        -0x44t
        0x46t
        0x9t
        0x6t
        -0x7t
        -0xat
        -0x44t
        0x46t
        0x9t
        0x3t
        -0x52t
        0x54t
        -0xct
        -0x3t
        -0x45t
        0x55t
        -0x3t
        -0x6t
        -0x4ct
        0x0t
        0x2t
        0xat
        -0x4t
        -0x49t
        0x45t
        0x13t
        -0x8t
        0x4t
        -0xbt
        0x4t
        -0x8t
        -0x45t
        0x1dt
        -0x1dt
        0x41t
        0xdt
        -0xat
        -0x44t
        0x43t
        0x12t
        -0x3t
        0x0t
        -0xdt
        0x9t
        0x6t
        -0x54t
        0x54t
        -0xbt
        0x4t
        -0x8t
        -0x2bt
        -0x1at
        -0x3t
        -0x6t
        -0x32t
        -0x1at
        -0xct
        0x53t
        -0xft
        0x7t
        -0x4bt
        0x45t
        0x13t
        -0x8t
        0x4t
        -0xbt
        0x4t
        -0x8t
        -0x45t
        0x1dt
        -0x1dt
        -0x2t
        0x2t
        0x12t
        -0x9t
        -0xbt
        0x13t
        -0xft
        -0x1t
        -0x44t
        0x45t
        0x13t
        -0x8t
        -0x7t
        0x9t
        0x7t
        -0x59t
        0x54t
        -0xbt
        0x4t
        -0x8t
        -0x45t
        0x5at
        -0x15t
        0xdt
        -0x3t
        -0x4ft
        0xdt
        -0xdt
        0x4et
        0x1t
        -0x4ft
        0x43t
        -0x2t
        0x2t
        0x5t
        0x1t
        0x5t
        -0x7t
        -0x47t
        0x49t
        0xat
        -0x53t
        0x41t
        0x3t
        0x0t
        0x1t
        -0x1t
        -0xct
        0x53t
        -0xft
        0x7t
        -0x4bt
        0x45t
        0x13t
        -0x8t
        0x4t
        -0xbt
        0x4t
        -0x8t
        -0x45t
        0x44t
        0x11t
        -0x3t
        -0x11t
        0x13t
        -0xbt
        0x6t
        -0x1t
        -0x4et
        0x1dt
        -0x1dt
        0x13t
        -0x2t
        0xct
        0x3t
        -0xet
        -0x44t
        0x46t
        0x9t
        0x6t
        -0x7t
        -0xat
        -0x44t
        0x46t
        0x9t
        0x3t
        -0x52t
        0x43t
        0xdt
        -0x1ct
        0x1bt
        -0x4t
        -0x6t
        0x9t
        -0x34t
        -0x1at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)J
    .locals 12

    const/16 v11, 0xf8

    const/16 v10, 0x92

    const/16 v9, 0x2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, p0, v2

    if-gtz v0, :cond_1

    sget-wide v0, Lcom/datami/smi/b/h;->c:J

    add-long/2addr v0, p0

    :goto_0
    sub-long v2, v0, v2

    sget-wide v6, Lcom/datami/smi/b/h;->b:J

    div-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_0

    sget-wide v2, Lcom/datami/smi/b/h;->c:J

    sget-wide v6, Lcom/datami/smi/b/h;->b:J

    div-long/2addr v2, v6

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/datami/smi/b/h;->e:[B

    aget-byte v7, v7, v9

    add-int/lit8 v8, v7, 0x5

    invoke-static {v11, v7, v8}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x15b

    const/16 v6, 0x18

    sget-object v7, Lcom/datami/smi/b/h;->e:[B

    aget-byte v7, v7, v10

    invoke-static {v1, v6, v7}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-long v0, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    aget-byte v3, v3, v9

    add-int/lit8 v4, v3, 0x5

    invoke-static {v11, v3, v4}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x11d

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    aget-byte v4, v4, v9

    sget-object v5, Lcom/datami/smi/b/h;->e:[B

    aget-byte v5, v5, v10

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-wide v0

    :cond_1
    move-wide v0, p0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/datami/smi/b/i;
    .locals 1

    invoke-static {p0}, Lcom/datami/smi/b/h;->b(Ljava/lang/String;)Lcom/datami/smi/b/i;

    move-result-object v0

    return-object v0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/datami/smi/b/h;->e:[B

    add-int/lit8 v1, p0, 0x4

    rsub-int/lit8 v0, p2, 0x75

    add-int/lit8 v3, p1, 0x1

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v7, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    add-int/2addr v1, v0

    add-int/lit8 v5, v5, 0x1

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v2, v3

    if-ne v3, v8, :cond_0

    invoke-direct {v6, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v6

    :cond_0
    aget-byte v0, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v1

    move v1, v0

    goto :goto_1
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 16

    if-eqz p9, :cond_0

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xe0

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    const/16 v4, 0x70

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/16 v5, 0x125

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    const/16 v4, 0x70

    aget-byte v3, v3, v4

    or-int/lit8 v4, v3, 0x21

    sget-object v5, Lcom/datami/smi/b/h;->e:[B

    const/16 v6, 0x43

    aget-byte v5, v5, v6

    neg-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/16 v5, 0x27

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/b/h;->e:[B

    const/16 v6, 0x92

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, p4, v4

    if-gtz v2, :cond_7

    sget-wide v2, Lcom/datami/smi/b/h;->c:J

    add-long v2, v2, p4

    :goto_2
    sub-long v4, v2, v4

    sget-wide v8, Lcom/datami/smi/b/h;->b:J

    div-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_4

    sget-wide v4, Lcom/datami/smi/b/h;->c:J

    sget-wide v8, Lcom/datami/smi/b/h;->b:J

    div-long/2addr v4, v8

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0xf8

    sget-object v10, Lcom/datami/smi/b/h;->e:[B

    const/16 v11, 0x2f

    aget-byte v10, v10, v11

    add-int/lit8 v11, v10, 0x5

    invoke-static {v9, v10, v11}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x15b

    const/16 v8, 0x18

    sget-object v9, Lcom/datami/smi/b/h;->e:[B

    const/16 v10, 0x92

    aget-byte v9, v9, v10

    invoke-static {v3, v8, v9}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-long v8, v6, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf8

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/16 v5, 0x2f

    aget-byte v4, v4, v5

    add-int/lit8 v5, v4, 0x5

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x11d

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/16 v5, 0x2f

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/b/h;->e:[B

    const/16 v6, 0x92

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_5

    const/16 v2, 0x12c

    const/16 v3, 0x2f

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    new-instance v3, Lcom/datami/smi/b/i;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-direct/range {v3 .. v15}, Lcom/datami/smi/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    const/16 v2, 0xae

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/16 v5, 0x93

    aget-byte v4, v4, v5

    shl-int/lit8 v5, v4, 0x1

    invoke-static {v2, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    sget-object v2, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    :cond_6
    sget-object v2, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move-wide/from16 v2, p4

    goto/16 :goto_2
.end method

.method private static a(Lcom/datami/smi/b/i;)Z
    .locals 4

    const/16 v0, 0xd3

    sget-object v1, Lcom/datami/smi/b/h;->e:[B

    const/16 v2, 0x76

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/b/h;->e:[B

    const/16 v3, 0x16d

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    sget-object v0, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/16 v4, 0x70

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xe0

    sget-object v1, Lcom/datami/smi/b/h;->e:[B

    aget-byte v1, v1, v4

    sget-object v2, Lcom/datami/smi/b/h;->e:[B

    const/16 v3, 0x125

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/b/h;->e:[B

    aget-byte v1, v1, v4

    or-int/lit8 v2, v1, 0x21

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    const/16 v4, 0x43

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    sget-object v2, Lcom/datami/smi/b/h;->e:[B

    const/16 v3, 0x27

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    const/16 v4, 0x92

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(J)J
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    sget-wide v2, Lcom/datami/smi/b/h;->c:J

    add-long/2addr p0, v2

    :cond_0
    sub-long v0, p0, v0

    sget-wide v2, Lcom/datami/smi/b/h;->b:J

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    sget-wide v0, Lcom/datami/smi/b/h;->c:J

    sget-wide v2, Lcom/datami/smi/b/h;->b:J

    div-long/2addr v0, v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf8

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/16 v5, 0x2f

    aget-byte v4, v4, v5

    add-int/lit8 v5, v4, 0x5

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x15b

    const/16 v4, 0x18

    sget-object v5, Lcom/datami/smi/b/h;->e:[B

    const/16 v6, 0x92

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-wide v0
.end method

.method private static b(Ljava/lang/String;)Lcom/datami/smi/b/i;
    .locals 6

    sget-object v1, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/b/i;

    invoke-static {v0}, Lcom/datami/smi/b/h;->b(Lcom/datami/smi/b/i;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/datami/smi/b/i;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/datami/smi/b/h;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xe0

    sget v4, Lcom/datami/smi/b/h;->f:I

    and-int/lit8 v4, v4, 0x7c

    const/16 v5, 0x23

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/datami/smi/b/h;->f:I

    add-int/lit8 v2, v2, -0x4

    sget v3, Lcom/datami/smi/b/h;->f:I

    and-int/lit8 v3, v3, 0x7c

    const/16 v4, 0x23

    invoke-static {v2, v3, v4}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Lcom/datami/smi/b/i;
    .locals 1

    invoke-static {p0, p1}, Lcom/datami/smi/b/h;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/datami/smi/b/i;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)Lcom/datami/smi/b/i;
    .locals 14

    new-instance v1, Lcom/datami/smi/b/i;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/datami/smi/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    return-object v1
.end method

.method private static b()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xc0

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/b/h;->e:[B

    const/16 v6, 0x27

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/datami/smi/b/i;)Z
    .locals 7

    const/16 v6, 0xae

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/datami/smi/b/i;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    aget-byte v4, v4, v0

    sget-object v5, Lcom/datami/smi/b/h;->e:[B

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/datami/smi/b/i;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x107

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    aget-byte v4, v4, v0

    sget-object v5, Lcom/datami/smi/b/h;->e:[B

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/datami/smi/b/i;->c()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/datami/smi/b/h;->f:I

    and-int/lit16 v1, v1, 0x3ec

    sget-object v2, Lcom/datami/smi/b/h;->e:[B

    const/16 v3, 0x41

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    aget-byte v3, v3, v6

    invoke-static {v1, v2, v3}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/datami/smi/b/h;->a(Lcom/datami/smi/b/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x21

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/16 v5, 0xcd

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x23

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Lcom/datami/smi/b/i;
    .locals 7

    sget-object v1, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/datami/smi/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/datami/smi/b/i;

    invoke-virtual {v0}, Lcom/datami/smi/b/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/datami/smi/b/h;->b(Lcom/datami/smi/b/i;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/datami/smi/b/i;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/datami/smi/b/h;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x173

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/16 v5, 0xcd

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x23

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xcb

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    sget-object v5, Lcom/datami/smi/b/h;->e:[B

    const/16 v6, 0xae

    aget-byte v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/b/h;->e:[B

    const/16 v3, 0x22

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0x22

    const/16 v4, 0x23

    invoke-static {v2, v3, v4}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xcb

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/16 v5, 0xae

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/16 v7, 0x92

    const/16 v6, 0x70

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0xe0

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    aget-byte v3, v3, v6

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    const/16 v5, 0x125

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x119

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    const/16 v4, 0x45

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    aget-byte v4, v4, v6

    invoke-static {v2, v3, v4}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb8

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    aget-byte v4, v4, v7

    invoke-static {v2, v3, v4}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7e

    sget-object v3, Lcom/datami/smi/b/h;->e:[B

    const/16 v4, 0x93

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/b/h;->e:[B

    aget-byte v4, v4, v7

    invoke-static {v2, v3, v4}, Lcom/datami/smi/b/h;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return v0

    :cond_1
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method
