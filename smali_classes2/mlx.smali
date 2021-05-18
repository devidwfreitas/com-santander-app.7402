.class Lmlx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmlw;


# direct methods
.method constructor <init>(Lmlw;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lmlx;->a:Lmlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 66
    check-cast p1, Lmli;

    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmli;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmli;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lmkq;

    invoke-direct {v0}, Lmkq;-><init>()V

    .line 70
    const-string v1, "Ver todos os bancos"

    invoke-virtual {v0, v1}, Lmkq;->b(Ljava/lang/String;)V

    .line 71
    const-string v1, "99999"

    invoke-virtual {v0, v1}, Lmkq;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lmli;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lmlx;->a:Lmlw;

    invoke-static {v0}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v0

    invoke-interface {v0, p1}, Lmlv;->a(Lmli;)V

    .line 76
    :cond_0
    return-void
.end method
