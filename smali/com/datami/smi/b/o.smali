.class final Lcom/datami/smi/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final c:[B

.field private static d:I


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lcom/datami/smi/b/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/b/o;->c:[B

    const/16 v0, 0x26

    sput v0, Lcom/datami/smi/b/o;->d:I

    return-void

    :array_0
    .array-data 1
        0x1et
        0x19t
        0x71t
        0x39t
        0x2dt
        0x0t
        -0x3t
        0x3t
        -0x52t
        0x49t
        0x5t
        -0x4et
        0x46t
        -0x1t
        0xft
        -0x11t
        0x5t
        0x1t
        0x5t
        -0x7t
        -0x47t
        0x53t
        -0x3t
        -0x1t
        -0x1t
        0x5t
        -0x4t
        0x3t
        -0x52t
        0x42t
        0xat
        0x3t
        -0xct
        0x8t
        -0x6t
        -0x1t
        -0x44t
        0x36t
        0x13t
        -0x5t
        0x1t
        0xat
        0x4t
    .end array-data
.end method

.method constructor <init>(Lcom/datami/smi/b/m;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/datami/smi/b/o;->b:Lcom/datami/smi/b/m;

    iput-object p2, p0, Lcom/datami/smi/b/o;->a:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 11

    const/4 v5, 0x0

    sget-object v7, Lcom/datami/smi/b/o;->c:[B

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, p1, 0x2

    rsub-int/lit8 v2, v1, 0x28

    new-instance v8, Ljava/lang/String;

    mul-int/lit8 v1, p0, 0x4

    add-int/lit8 v3, v1, 0x45

    new-array v1, v2, [B

    if-nez v7, :cond_1

    move-object v3, v1

    move v4, v5

    move v6, v0

    move v1, v2

    :goto_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v0

    move v0, v4

    :goto_1
    add-int/lit8 v4, v0, 0x1

    int-to-byte v9, v1

    aput-byte v9, v3, v0

    if-ne v4, v2, :cond_0

    invoke-direct {v8, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object v8

    :cond_0
    aget-byte v0, v7, v6

    goto :goto_0

    :cond_1
    move v6, v0

    move v0, v5

    move-object v10, v1

    move v1, v3

    move-object v3, v10

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v1, 0x0

    invoke-static {}, Lcom/datami/smi/b/m;->W()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/datami/smi/b/m;->W()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/datami/smi/b/o;->a:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    :try_start_0
    invoke-static {}, Lcom/datami/smi/b/m;->W()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/datami/smi/b/o;->a:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v2, Lcom/datami/smi/b/m;->J:Ljava/lang/String;

    sget-object v2, Lcom/datami/smi/b/o;->c:[B

    const/4 v3, 0x5

    aget-byte v3, v2, v3

    sget-object v8, Lcom/datami/smi/b/o;->c:[B

    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v4, v3, 0x2

    rsub-int/lit8 v4, v4, 0x28

    new-instance v9, Ljava/lang/String;

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v3, 0x45

    new-array v3, v4, [B

    if-nez v8, :cond_3

    move-object v5, v3

    move v6, v1

    move v7, v2

    move v3, v4

    :goto_2
    add-int/lit8 v7, v7, 0x1

    add-int/2addr v3, v2

    move v2, v6

    :goto_3
    add-int/lit8 v6, v2, 0x1

    int-to-byte v10, v3

    aput-byte v10, v5, v2

    if-ne v6, v4, :cond_1

    invoke-direct {v9, v5, v1}, Ljava/lang/String;-><init>([BI)V

    goto :goto_1

    :cond_1
    aget-byte v2, v8, v7

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    move v7, v2

    move v2, v1

    move-object v11, v3

    move v3, v5

    move-object v5, v11

    goto :goto_3
.end method
