.class public Lkmb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lkmc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 23
    const-string v2, "2viaAgua"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 24
    const-string v2, "2viaAgua.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 25
    const-string v2, "1001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 28
    const-string v2, "2viaLuz"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 29
    const-string v2, "2viaLuz.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 30
    const-string v2, "1002"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 33
    const-string v2, "2viaGas"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 34
    const-string v2, "2viaGas.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 35
    const-string v2, "1003"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 38
    const-string v2, "2viaTelFixo"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 39
    const-string v2, "2viaTelFixo.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 40
    const-string v2, "1004"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 43
    const-string v2, "2viaTelPos"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 44
    const-string v2, "2viaTelPos.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 45
    const-string v2, "1005"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 48
    const-string v2, "2viaOutros"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 49
    const-string v2, "2viaOutros.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 50
    const-string v2, "1006"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 53
    const-string v2, "2viaPgtoTit"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 54
    const-string v2, "2viaPgtoTit.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 55
    const-string v2, "01"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 58
    const-string v2, "2viaTelPre"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 59
    const-string v2, "2viaTelPre.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 60
    const-string v2, "7001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 63
    const-string v2, "2viaAmex"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 64
    const-string v2, "2viaAmex.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 65
    const-string v2, "6001"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 68
    const-string v2, "2viaCC"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 69
    const-string v2, "2viaCC.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 70
    const-string v2, "05"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 73
    const-string v2, "2viaTransMsm"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 74
    const-string v2, "2viaTransMsm.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 75
    const-string v2, "04"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 78
    const-string v2, "2viaDoc"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 79
    const-string v2, "2viaDoc.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 80
    const-string v2, "03"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Lkmc;

    invoke-direct {v1}, Lkmc;-><init>()V

    .line 83
    const-string v2, "2viaTed"

    invoke-virtual {v1, v2}, Lkmc;->a(Ljava/lang/String;)V

    .line 84
    const-string v2, "2viaTed.share"

    invoke-virtual {v1, v2}, Lkmc;->b(Ljava/lang/String;)V

    .line 85
    const-string v2, "02"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lkmc;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lkmb;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkmc;

    return-object v0
.end method
