.class Lbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbl;


# instance fields
.field private a:Lbx;


# direct methods
.method public constructor <init>([B[B)V
    .locals 9

    .prologue
    const/16 v7, 0x20

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lbp;->a:Lbx;

    .line 51
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lbp;->a(Ljava/lang/Integer;)[B

    move-result-object v1

    invoke-static {v1}, Lbz;->d([B)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Laz;->b([B)[B

    move-result-object v1

    .line 53
    new-instance v2, Lby;

    invoke-direct {v2, v1}, Lby;-><init>([B)V

    .line 54
    invoke-virtual {v2, p1}, Lby;->a([B)[B

    move-result-object v3

    .line 56
    new-instance v4, Lby;

    invoke-direct {v4, v3}, Lby;-><init>([B)V

    .line 59
    const/16 v1, 0x20

    new-array v5, v1, [B

    .line 60
    invoke-static {p2}, Lca;->a([B)[B

    move-result-object v6

    move v1, v0

    .line 62
    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    move v8, v0

    move v0, v1

    move v1, v8

    .line 66
    :goto_1
    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    .line 71
    :goto_2
    if-lt v0, v7, :cond_2

    .line 77
    invoke-virtual {v4, v5}, Lby;->a([B)[B

    move-result-object v0

    .line 80
    new-instance v1, Lbx;

    invoke-direct {v1, v0}, Lbx;-><init>([B)V

    iput-object v1, p0, Lbp;->a:Lbx;

    .line 86
    return-void

    .line 63
    :cond_0
    aget-byte v2, v3, v1

    aput-byte v2, v5, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    aget-byte v2, v6, v1

    aput-byte v2, v5, v0

    .line 68
    add-int/lit8 v2, v0, 0x1

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 72
    :cond_2
    aget-byte v1, v3, v0

    aput-byte v1, v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    new-instance v0, Lbv;

    invoke-direct {v0}, Lbv;-><init>()V

    throw v0
.end method

.method private static a(Ljava/lang/Integer;)[B
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lbq;

    invoke-direct {v0}, Lbq;-><init>()V

    .line 44
    invoke-virtual {v0}, Lbq;->a()Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, Lbd;

    invoke-interface {v0, p0}, Lbd;->a(Ljava/lang/Integer;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lbp;->a:Lbx;

    invoke-static {p1}, Lbw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbx;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v0, Lbv;

    invoke-direct {v0}, Lbv;-><init>()V

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lbp;->a:Lbx;

    invoke-virtual {v0, p1}, Lbx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbw;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v0, Lbv;

    invoke-direct {v0}, Lbv;-><init>()V

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbz;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    new-instance v0, Lbv;

    invoke-direct {v0}, Lbv;-><init>()V

    throw v0

    .line 113
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lbz;->d([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    new-instance v0, Lbv;

    invoke-direct {v0}, Lbv;-><init>()V

    throw v0

    .line 125
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
