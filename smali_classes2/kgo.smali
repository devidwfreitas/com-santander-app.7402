.class Lkgo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lkgk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkgn;


# direct methods
.method constructor <init>(Lkgn;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lkgo;->a:Lkgn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lkgk;

    invoke-virtual {p0, p1}, Lkgo;->a(Lkgk;)V

    return-void
.end method

.method public a(Lkgk;)V
    .locals 3

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    iget-object v0, p0, Lkgo;->a:Lkgn;

    invoke-static {v0}, Lkgn;->a(Lkgn;)Lkgx;

    move-result-object v0

    const-string v1, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lkgx;->a(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Lkgk;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    invoke-virtual {p1}, Lkgk;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 73
    iget-object v1, p0, Lkgo;->a:Lkgn;

    invoke-static {v1}, Lkgn;->a(Lkgn;)Lkgx;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lkgx;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lkgo;->a:Lkgn;

    invoke-static {v0}, Lkgn;->a(Lkgn;)Lkgx;

    move-result-object v0

    invoke-virtual {p1}, Lkgk;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkgx;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lkgo;->a:Lkgn;

    invoke-static {v0}, Lkgn;->a(Lkgn;)Lkgx;

    move-result-object v0

    invoke-virtual {p1}, Lkgk;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkgx;->a(Ljava/util/List;)V

    goto :goto_0
.end method
