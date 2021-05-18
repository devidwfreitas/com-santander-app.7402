.class public Lca;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lca;->c([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B[B)[B
    .locals 1

    .prologue
    .line 14
    invoke-static {p0, p1}, Lca;->b([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B)[B
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lca;->d([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static b([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 18
    new-instance v0, Law;

    invoke-direct {v0, p0}, Law;-><init>([B)V

    .line 19
    new-instance v1, Lav;

    new-instance v2, Lcq;

    invoke-direct {v2}, Lcq;-><init>()V

    invoke-direct {v1, v2}, Lav;-><init>(Lck;)V

    .line 20
    invoke-interface {v1, v0}, Lcm;->a(Lci;)V

    .line 21
    array-length v0, p1

    invoke-interface {v1, p1, v3, v0}, Lcm;->a([BII)V

    .line 22
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 23
    invoke-interface {v1, v0, v3}, Lcm;->a([BI)I

    .line 24
    return-object v0
.end method

.method private static c([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcq;

    invoke-direct {v0}, Lcq;-><init>()V

    .line 38
    array-length v1, p0

    invoke-interface {v0, p0, v2, v1}, Lck;->a([BII)V

    .line 39
    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 40
    invoke-interface {v0, v1, v2}, Lck;->b([BI)I

    .line 41
    return-object v1
.end method

.method private static d([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Las;

    invoke-direct {v0}, Las;-><init>()V

    .line 46
    array-length v1, p0

    invoke-interface {v0, p0, v2, v1}, Lck;->a([BII)V

    .line 47
    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 48
    invoke-interface {v0, v1, v2}, Lck;->b([BI)I

    .line 49
    return-object v1
.end method
