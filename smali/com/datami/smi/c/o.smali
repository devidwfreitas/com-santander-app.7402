.class public final Lcom/datami/smi/c/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "[dmi]MGMT"

.field private static final b:Ljava/lang/String; = "http://"

.field private static final c:Ljava/lang/String; = "https://"

.field private static final d:Ljava/lang/String; = "://"

.field private static final u:[B

.field private static v:I


# instance fields
.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/datami/smi/c/q;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/datami/smi/c/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/o;->u:[B

    const/4 v0, 0x3

    sput v0, Lcom/datami/smi/c/o;->v:I

    return-void

    nop

    :array_0
    .array-data 1
        0x7ct
        0x4t
        -0x18t
        -0x1dt
        -0x19t
        -0xdt
        -0x9t
        0x29t
        -0x2t
        -0xdt
        -0x16t
        -0x16t
        -0x9t
        -0x1t
        0x3t
        -0x7t
        -0x13t
        -0x14t
        -0x19t
        -0xat
        -0xdt
        -0x6t
        -0xbt
        -0x1et
        0x8t
        -0xft
        -0x10t
        -0x8t
        -0x17t
        -0x8t
        -0x1ct
        -0xbt
        -0x13t
        -0xdt
        -0xft
        -0x17t
        -0x9t
        -0x19t
        -0xdt
        -0x9t
        -0x13t
        -0x3t
        -0x17t
        0x2t
        -0x17t
        0x2t
        -0x12t
        -0x12t
        -0x17t
        0x3t
        -0x19t
        -0x14t
        0x4t
        -0x1at
        -0x14t
        0x1t
        -0xbt
        -0x1ft
        -0xat
        0x0t
        -0xct
        -0x19t
        -0xat
        -0xdt
        -0x6t
        -0xbt
        -0x1et
        -0x8t
        -0x10t
        -0x19t
        -0xdt
        -0x9t
        -0x10t
        0x2ct
        -0x2t
        -0xdt
        -0xat
        -0x19t
        -0xdt
        -0x9t
        -0x10t
        -0x6t
        -0x1ft
        -0x2t
        -0x4t
        -0x23t
        -0x1t
        -0x8t
        -0x6t
        -0x12t
        -0x6t
        -0x16t
        0x0t
        -0xet
        -0x17t
        -0x6t
        -0xct
        -0x40t
        0x8t
        -0xft
        -0x18t
        -0x11t
        -0x2t
        -0x13t
        -0xct
        0x41t
        -0x27t
        0xdt
        -0xbt
        0x1t
        -0x7t
        -0x21t
        -0x8t
        -0x8t
        -0xet
        -0x1et
        0x0t
        -0x7t
        -0xft
        -0x7t
        -0x21t
        0x1t
        -0x1bt
        -0xdt
        -0x3t
        -0x13t
        -0xct
        0x2t
        -0x23t
        -0xat
        -0x7t
        -0x2t
        -0xdt
        -0xat
        0x4t
        -0x19t
        -0xbt
        -0x16t
        -0x4t
        -0x1at
        0x4t
        -0x18t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/datami/smi/c/o;->g()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0x5d

    const/16 v6, 0x3b

    const/16 v5, 0x2b

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/datami/smi/c/o;->g()V

    if-eqz p1, :cond_8

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v7

    neg-int v0, v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    aget-byte v2, v2, v6

    or-int/lit8 v3, v2, 0x47

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v8, p0, Lcom/datami/smi/c/o;->o:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v7

    neg-int v0, v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    aget-byte v2, v2, v6

    or-int/lit8 v3, v2, 0x47

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v6

    add-int/lit8 v3, v0, 0x5

    or-int/lit8 v4, v3, 0x62

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->e:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v5

    add-int/lit8 v3, v0, 0x3

    const/16 v4, 0x32

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->f:Z

    :cond_0
    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v6

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    aget-byte v2, v2, v5

    const/16 v3, 0x80

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v6

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    aget-byte v2, v2, v5

    const/16 v3, 0x80

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    aget-byte v2, v2, v5

    add-int/lit8 v3, v2, 0x3

    const/16 v4, 0x32

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->g:Z

    :cond_1
    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x11

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget v2, Lcom/datami/smi/c/o;->v:I

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x1e

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v8, p0, Lcom/datami/smi/c/o;->p:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x11

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget v2, Lcom/datami/smi/c/o;->v:I

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x1e

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v6

    add-int/lit8 v3, v0, 0x5

    or-int/lit8 v4, v3, 0x62

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_3
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->h:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v5

    add-int/lit8 v3, v0, 0x3

    const/16 v4, 0x32

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_4
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->i:Z

    :cond_2
    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x2e

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0xf

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0x38

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v8, p0, Lcom/datami/smi/c/o;->r:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x2e

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0xf

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0x38

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v6

    add-int/lit8 v3, v0, 0x5

    or-int/lit8 v4, v3, 0x62

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_5
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->j:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v5

    add-int/lit8 v3, v0, 0x3

    const/16 v4, 0x32

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_6
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->k:Z

    :cond_3
    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x15

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x37

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x35

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v8, p0, Lcom/datami/smi/c/o;->q:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x15

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x37

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x35

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v6

    add-int/lit8 v3, v0, 0x5

    or-int/lit8 v4, v3, 0x62

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_7
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->l:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v5

    add-int/lit8 v3, v0, 0x3

    const/16 v4, 0x32

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_4
    iput-boolean v1, p0, Lcom/datami/smi/c/o;->m:Z

    :cond_5
    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v7

    neg-int v0, v0

    sget v1, Lcom/datami/smi/c/o;->v:I

    add-int/lit8 v1, v1, 0x2

    sget v2, Lcom/datami/smi/c/o;->v:I

    or-int/lit16 v2, v2, 0x80

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v7

    neg-int v0, v0

    sget v1, Lcom/datami/smi/c/o;->v:I

    add-int/lit8 v1, v1, 0x2

    sget v2, Lcom/datami/smi/c/o;->v:I

    or-int/lit16 v2, v2, 0x80

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x2e

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x3c

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x6b

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x2e

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x3c

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x6b

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/datami/smi/c/o;->s:Z

    :cond_6
    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x6b

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x15

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0x4c

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x6b

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x15

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0x4c

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v8, v0, :cond_9

    sget-object v0, Lcom/datami/smi/c/p;->b:Lcom/datami/smi/c/p;

    iput-object v0, p0, Lcom/datami/smi/c/o;->t:Lcom/datami/smi/c/p;

    :cond_7
    :goto_8
    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v1, 0x18

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    aget-byte v1, v1, v7

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x55

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v1, 0x18

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    aget-byte v1, v1, v7

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x55

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x1a

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget v2, Lcom/datami/smi/c/o;->v:I

    add-int/lit8 v2, v2, 0x2

    const/16 v3, 0x56

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sget v2, Lcom/datami/smi/c/o;->v:I

    add-int/lit8 v2, v2, 0x2

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    aget-byte v3, v3, v5

    or-int/lit8 v4, v3, 0x51

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x65

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/o;->u:[B

    const/16 v5, 0x1a

    aget-byte v4, v4, v5

    neg-int v4, v4

    const/16 v5, 0x6d

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/datami/smi/c/q;

    iget-object v4, p0, Lcom/datami/smi/c/o;->t:Lcom/datami/smi/c/p;

    invoke-direct {v3, v1, v0, v4, v2}, Lcom/datami/smi/c/q;-><init>(ZLjava/lang/String;Lcom/datami/smi/c/p;I)V

    iput-object v3, p0, Lcom/datami/smi/c/o;->n:Lcom/datami/smi/c/q;

    :cond_8
    return-void

    :cond_9
    const/4 v1, 0x2

    if-ne v1, v0, :cond_a

    sget-object v0, Lcom/datami/smi/c/p;->c:Lcom/datami/smi/c/p;

    iput-object v0, p0, Lcom/datami/smi/c/o;->t:Lcom/datami/smi/c/p;

    goto/16 :goto_8

    :cond_a
    sget-object v0, Lcom/datami/smi/c/p;->a:Lcom/datami/smi/c/p;

    iput-object v0, p0, Lcom/datami/smi/c/o;->t:Lcom/datami/smi/c/p;

    goto/16 :goto_8

    :cond_b
    move v0, v1

    goto/16 :goto_7

    :cond_c
    move v0, v1

    goto/16 :goto_6

    :cond_d
    move v0, v1

    goto/16 :goto_5

    :cond_e
    move v0, v1

    goto/16 :goto_4

    :cond_f
    move v0, v1

    goto/16 :goto_3

    :cond_10
    move v0, v1

    goto/16 :goto_2

    :cond_11
    move v0, v1

    goto/16 :goto_1

    :cond_12
    move v0, v1

    goto/16 :goto_0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    add-int/lit8 v3, p2, 0x4

    new-instance v7, Ljava/lang/String;

    add-int/lit8 v2, p1, 0x2

    sget-object v8, Lcom/datami/smi/c/o;->u:[B

    rsub-int/lit8 v0, p0, 0x75

    new-array v1, v2, [B

    add-int/lit8 v2, v2, -0x1

    if-nez v8, :cond_1

    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0xd

    :goto_1
    add-int/lit8 v6, v6, 0x1

    int-to-byte v0, v1

    aput-byte v0, v3, v4

    if-ne v4, v2, :cond_0

    invoke-direct {v7, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v8, v6

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v3

    move-object v3, v1

    move v1, v0

    goto :goto_1
.end method

.method private static a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v4, 0x6b

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/datami/smi/c/o;->v:I

    or-int/lit8 v1, v1, 0x38

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x37

    aget-byte v2, v2, v3

    const/16 v3, 0x7e

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    aget-byte v2, v2, v4

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x15

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/o;->u:[B

    const/16 v5, 0x61

    aget-byte v4, v4, v5

    neg-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    aget-byte v2, v2, v4

    and-int/lit8 v3, v2, 0x17

    sget-object v4, Lcom/datami/smi/c/o;->u:[B

    const/16 v5, 0xd

    aget-byte v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v2, 0x6b

    if-eqz p0, :cond_0

    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    aget-byte v1, v1, v2

    sget v2, Lcom/datami/smi/c/o;->v:I

    const/16 v3, 0x48

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x2b

    aget-byte v2, v2, v3

    const/16 v3, 0x20

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/datami/smi/c/o;->v:I

    or-int/lit8 v0, v0, 0x38

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x37

    aget-byte v1, v1, v2

    const/16 v2, 0x7e

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    move-object v0, p2

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    if-eqz p0, :cond_2

    new-instance v0, Ljava/net/URL;

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x6b

    aget-byte v3, v3, v4

    sget v4, Lcom/datami/smi/c/o;->v:I

    const/16 v5, 0x48

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/net/URL;

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x6b

    aget-byte v3, v3, v4

    sget-object v4, Lcom/datami/smi/c/o;->u:[B

    const/16 v5, 0x2b

    aget-byte v4, v4, v5

    const/16 v5, 0x20

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {p0, p2}, Lcom/datami/smi/c/o;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x35

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0xf

    aget-byte v3, v3, v4

    neg-int v3, v3

    add-int/lit8 v4, v3, -0x2

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x30

    sget-object v4, Lcom/datami/smi/c/o;->u:[B

    const/16 v5, 0x13

    aget-byte v4, v4, v5

    neg-int v4, v4

    const/16 v5, 0x5c

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0x5d

    const/16 v6, 0x3b

    const/16 v5, 0x2b

    const/4 v1, 0x0

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v7

    neg-int v0, v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    aget-byte v2, v2, v6

    or-int/lit8 v3, v2, 0x47

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v8, p0, Lcom/datami/smi/c/o;->o:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v7

    neg-int v0, v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    aget-byte v2, v2, v6

    or-int/lit8 v3, v2, 0x47

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v6

    add-int/lit8 v3, v0, 0x5

    or-int/lit8 v4, v3, 0x62

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->e:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v5

    add-int/lit8 v3, v0, 0x3

    const/16 v4, 0x32

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->f:Z

    :cond_0
    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v6

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    aget-byte v2, v2, v5

    const/16 v3, 0x80

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v6

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    aget-byte v2, v2, v5

    const/16 v3, 0x80

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    aget-byte v2, v2, v5

    add-int/lit8 v3, v2, 0x3

    const/16 v4, 0x32

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->g:Z

    :cond_1
    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x11

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget v2, Lcom/datami/smi/c/o;->v:I

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x1e

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v8, p0, Lcom/datami/smi/c/o;->p:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x11

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget v2, Lcom/datami/smi/c/o;->v:I

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x1e

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v6

    add-int/lit8 v3, v0, 0x5

    or-int/lit8 v4, v3, 0x62

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_3
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->h:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v5

    add-int/lit8 v3, v0, 0x3

    const/16 v4, 0x32

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_4
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->i:Z

    :cond_2
    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x2e

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0xf

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0x38

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v8, p0, Lcom/datami/smi/c/o;->r:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x2e

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0xf

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0x38

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v6

    add-int/lit8 v3, v0, 0x5

    or-int/lit8 v4, v3, 0x62

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_5
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->j:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v5

    add-int/lit8 v3, v0, 0x3

    const/16 v4, 0x32

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_6
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->k:Z

    :cond_3
    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x15

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x37

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x35

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v8, p0, Lcom/datami/smi/c/o;->q:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x15

    aget-byte v0, v0, v2

    neg-int v0, v0

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x37

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x35

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v0, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v6

    add-int/lit8 v3, v0, 0x5

    or-int/lit8 v4, v3, 0x62

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_7
    iput-boolean v0, p0, Lcom/datami/smi/c/o;->l:Z

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v5

    add-int/lit8 v3, v0, 0x3

    const/16 v4, 0x32

    invoke-static {v0, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_4
    iput-boolean v1, p0, Lcom/datami/smi/c/o;->m:Z

    :cond_5
    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v7

    neg-int v0, v0

    sget v1, Lcom/datami/smi/c/o;->v:I

    add-int/lit8 v1, v1, 0x2

    sget v2, Lcom/datami/smi/c/o;->v:I

    or-int/lit16 v2, v2, 0x80

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    aget-byte v0, v0, v7

    neg-int v0, v0

    sget v1, Lcom/datami/smi/c/o;->v:I

    add-int/lit8 v1, v1, 0x2

    sget v2, Lcom/datami/smi/c/o;->v:I

    or-int/lit16 v2, v2, 0x80

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x2e

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x3c

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x6b

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x2e

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x3c

    aget-byte v2, v2, v3

    neg-int v2, v2

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x6b

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/datami/smi/c/o;->s:Z

    :cond_6
    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x6b

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x15

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0x4c

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x6b

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x15

    aget-byte v2, v2, v3

    neg-int v2, v2

    const/16 v3, 0x4c

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v8, v0, :cond_9

    sget-object v0, Lcom/datami/smi/c/p;->b:Lcom/datami/smi/c/p;

    iput-object v0, p0, Lcom/datami/smi/c/o;->t:Lcom/datami/smi/c/p;

    :cond_7
    :goto_8
    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v1, 0x18

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    aget-byte v1, v1, v7

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x55

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/datami/smi/c/o;->u:[B

    const/16 v1, 0x18

    aget-byte v0, v0, v1

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    aget-byte v1, v1, v7

    neg-int v1, v1

    sget-object v2, Lcom/datami/smi/c/o;->u:[B

    const/16 v3, 0x55

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/o;->u:[B

    const/16 v2, 0x1a

    aget-byte v1, v1, v2

    neg-int v1, v1

    sget v2, Lcom/datami/smi/c/o;->v:I

    add-int/lit8 v2, v2, 0x2

    const/16 v3, 0x56

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sget v2, Lcom/datami/smi/c/o;->v:I

    add-int/lit8 v2, v2, 0x2

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    aget-byte v3, v3, v5

    or-int/lit8 v4, v3, 0x51

    invoke-static {v2, v3, v4}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/datami/smi/c/o;->u:[B

    const/16 v4, 0x65

    aget-byte v3, v3, v4

    neg-int v3, v3

    sget-object v4, Lcom/datami/smi/c/o;->u:[B

    const/16 v5, 0x1a

    aget-byte v4, v4, v5

    neg-int v4, v4

    const/16 v5, 0x6d

    invoke-static {v3, v4, v5}, Lcom/datami/smi/c/o;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/datami/smi/c/q;

    iget-object v4, p0, Lcom/datami/smi/c/o;->t:Lcom/datami/smi/c/p;

    invoke-direct {v3, v1, v0, v4, v2}, Lcom/datami/smi/c/q;-><init>(ZLjava/lang/String;Lcom/datami/smi/c/p;I)V

    iput-object v3, p0, Lcom/datami/smi/c/o;->n:Lcom/datami/smi/c/q;

    :cond_8
    return-void

    :cond_9
    const/4 v1, 0x2

    if-ne v1, v0, :cond_a

    sget-object v0, Lcom/datami/smi/c/p;->c:Lcom/datami/smi/c/p;

    iput-object v0, p0, Lcom/datami/smi/c/o;->t:Lcom/datami/smi/c/p;

    goto/16 :goto_8

    :cond_a
    sget-object v0, Lcom/datami/smi/c/p;->a:Lcom/datami/smi/c/p;

    iput-object v0, p0, Lcom/datami/smi/c/o;->t:Lcom/datami/smi/c/p;

    goto/16 :goto_8

    :cond_b
    move v0, v1

    goto/16 :goto_7

    :cond_c
    move v0, v1

    goto/16 :goto_6

    :cond_d
    move v0, v1

    goto/16 :goto_5

    :cond_e
    move v0, v1

    goto/16 :goto_4

    :cond_f
    move v0, v1

    goto/16 :goto_3

    :cond_10
    move v0, v1

    goto/16 :goto_2

    :cond_11
    move v0, v1

    goto/16 :goto_1

    :cond_12
    move v0, v1

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Lcom/datami/smi/c/o;->a(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/datami/smi/c/o;->m:Z

    iget-boolean v1, p0, Lcom/datami/smi/c/o;->q:Z

    invoke-static {v0, v1, p1}, Lcom/datami/smi/c/o;->a(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->e:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->f:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->g:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->h:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->i:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->j:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->k:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->m:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->l:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->o:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->p:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->q:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->r:Z

    iput-boolean v4, p0, Lcom/datami/smi/c/o;->s:Z

    sget-object v0, Lcom/datami/smi/c/p;->a:Lcom/datami/smi/c/p;

    iput-object v0, p0, Lcom/datami/smi/c/o;->t:Lcom/datami/smi/c/p;

    new-instance v0, Lcom/datami/smi/c/q;

    const-string v1, ""

    sget-object v2, Lcom/datami/smi/c/p;->a:Lcom/datami/smi/c/p;

    const/4 v3, -0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/datami/smi/c/q;-><init>(ZLjava/lang/String;Lcom/datami/smi/c/p;I)V

    iput-object v0, p0, Lcom/datami/smi/c/o;->n:Lcom/datami/smi/c/q;

    return-void
.end method

.method private h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/datami/smi/c/o;->l:Z

    return v0
.end method

.method private i()Lcom/datami/smi/c/p;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/o;->t:Lcom/datami/smi/c/p;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/datami/smi/c/q;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/c/o;->n:Lcom/datami/smi/c/q;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/datami/smi/c/o;->f:Z

    iget-boolean v1, p0, Lcom/datami/smi/c/o;->o:Z

    invoke-static {v0, v1, p1}, Lcom/datami/smi/c/o;->a(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/datami/smi/c/o;->e:Z

    return v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/datami/smi/c/o;->i:Z

    iget-boolean v1, p0, Lcom/datami/smi/c/o;->p:Z

    invoke-static {v0, v1, p1}, Lcom/datami/smi/c/o;->a(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/datami/smi/c/o;->g:Z

    return v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/datami/smi/c/o;->k:Z

    iget-boolean v1, p0, Lcom/datami/smi/c/o;->r:Z

    invoke-static {v0, v1, p1}, Lcom/datami/smi/c/o;->a(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/datami/smi/c/o;->h:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/datami/smi/c/o;->j:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/datami/smi/c/o;->s:Z

    return v0
.end method
