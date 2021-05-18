.class Lmmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmmv;


# direct methods
.method constructor <init>(Lmmv;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lmmy;->a:Lmmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 140
    check-cast p1, Lmlp;

    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmlp;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmlp;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    iget-object v0, p0, Lmmy;->a:Lmmv;

    invoke-static {v0}, Lmmv;->a(Lmmv;)Lmmu;

    move-result-object v0

    invoke-interface {v0, p1}, Lmmu;->b(Lmlp;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lmmy;->a:Lmmv;

    invoke-static {v0}, Lmmv;->a(Lmmv;)Lmmu;

    move-result-object v0

    invoke-interface {v0, p1}, Lmmu;->a(Lmlp;)V

    goto :goto_0
.end method
