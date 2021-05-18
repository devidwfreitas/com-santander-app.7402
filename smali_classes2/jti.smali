.class Ljti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljth;


# direct methods
.method constructor <init>(Ljth;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Ljti;->a:Ljth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 85
    check-cast p1, Ljsu;

    .line 87
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljsu;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    const/4 v1, 0x0

    sget-object v2, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v2, v0, v1

    .line 93
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 94
    new-instance v2, Ljtj;

    invoke-direct {v2, p0, p1}, Ljtj;-><init>(Ljti;Ljsu;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Ljti;->a:Ljth;

    invoke-static {v0}, Ljth;->a(Ljth;)Ljtg;

    move-result-object v0

    iget-object v1, p0, Ljti;->a:Ljth;

    invoke-static {v1, p1}, Ljth;->b(Ljth;Ljsu;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljtg;->b(Lgvb;)V

    goto :goto_0
.end method
