.class public Lbz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .locals 5

    .prologue
    .line 46
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    new-instance v2, Lax;

    invoke-direct {v2}, Lax;-><init>()V

    .line 51
    const/4 v3, 0x0

    array-length v4, p0

    invoke-virtual {v2, p0, v3, v4, v1}, Lax;->a([BIILjava/io/OutputStream;)I

    .line 52
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 56
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    :try_start_0
    invoke-static {p0}, Lbz;->a([B)[B

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 66
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method public static c([B)[B
    .locals 5

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    new-instance v2, Lax;

    invoke-direct {v2}, Lax;-><init>()V

    .line 79
    const/4 v3, 0x0

    array-length v4, p0

    invoke-virtual {v2, p0, v3, v4, v1}, Lax;->b([BIILjava/io/OutputStream;)I

    .line 80
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 83
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method public static d([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    :try_start_0
    invoke-static {p0}, Lbz;->c([B)[B

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 93
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
