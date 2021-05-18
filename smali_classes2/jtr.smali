.class Ljtr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljss;

.field final synthetic b:Ljtp;


# direct methods
.method constructor <init>(Ljtp;Ljss;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Ljtr;->b:Ljtp;

    iput-object p2, p0, Ljtr;->a:Ljss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 96
    check-cast p1, Ljsr;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Ljsr;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Ljsr;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ljtr;->a:Ljss;

    invoke-virtual {v0}, Ljss;->getConta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->b(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Ljtr;->a:Ljss;

    invoke-virtual {v0}, Ljss;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->c(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Ljtr;->a:Ljss;

    invoke-virtual {v0}, Ljss;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->d(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Ljtr;->a:Ljss;

    invoke-virtual {v0}, Ljss;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->r(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Ljtr;->a:Ljss;

    invoke-virtual {v0}, Ljss;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->a(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Ljtr;->a:Ljss;

    invoke-virtual {v0}, Ljss;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljsr;->k(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Ljtr;->b:Ljtp;

    invoke-static {v0}, Ljtp;->c(Ljtp;)Ljto;

    move-result-object v0

    invoke-interface {v0, p1}, Ljto;->a(Ljsr;)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Ljtr;->b:Ljtp;

    invoke-static {v0}, Ljtp;->c(Ljtp;)Ljto;

    move-result-object v0

    invoke-interface {v0, p1}, Ljto;->b(Ljsr;)V

    goto :goto_0
.end method
