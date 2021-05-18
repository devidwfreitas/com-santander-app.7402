.class public Lar;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 10
    invoke-static {p0, p1}, Lar;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;[B)[B
    .locals 2

    .prologue
    .line 14
    invoke-static {p1}, Laz;->b([B)[B

    move-result-object v0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lca;->a([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    .line 17
    :catch_0
    move-exception v1

    goto :goto_0
.end method
