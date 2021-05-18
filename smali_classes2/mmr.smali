.class Lmmr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmmq;


# direct methods
.method constructor <init>(Lmmq;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lmmr;->a:Lmmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 46
    check-cast p1, Lmkz;

    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lmmr;->a:Lmmq;

    invoke-static {v0}, Lmmq;->a(Lmmq;)Lmmp;

    move-result-object v0

    invoke-interface {v0, p1}, Lmmp;->a(Lmkz;)V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lmmr;->a:Lmmq;

    invoke-static {v0}, Lmmq;->a(Lmmq;)Lmmp;

    move-result-object v0

    const-string v1, "Erro ao buscar detalhe"

    invoke-interface {v0, v1}, Lmmp;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
