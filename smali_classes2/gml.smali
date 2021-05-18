.class abstract Lgml;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lhxo;

.field protected c:Lhya;

.field private d:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p2    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lgml;->a:Landroid/content/Context;

    .line 31
    iput p2, p0, Lgml;->d:I

    .line 32
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    iput-object v0, p0, Lgml;->c:Lhya;

    .line 33
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    iput-object v0, p0, Lgml;->b:Lhxo;

    .line 34
    return-void
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method abstract a(I)V
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param
.end method

.method public a(Lhxy;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lgml;->c:Lhya;

    iget v1, p0, Lgml;->d:I

    invoke-interface {v0, v1, p1}, Lhya;->a(ILhxy;)V

    .line 64
    return-void
.end method

.method abstract b()Ljava/lang/String;
.end method

.method abstract c()Ljava/lang/String;
.end method

.method abstract d()Ljava/lang/String;
.end method

.method abstract e()Z
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lgml;->d:I

    return v0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lgml;->c:Lhya;

    iget-object v1, p0, Lgml;->a:Landroid/content/Context;

    iget v2, p0, Lgml;->d:I

    invoke-interface {v0, v1, v2}, Lhya;->a(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lgml;->c:Lhya;

    iget-object v1, p0, Lgml;->a:Landroid/content/Context;

    iget v2, p0, Lgml;->d:I

    invoke-interface {v0, v1, v2}, Lhya;->b(Landroid/content/Context;I)V

    .line 52
    return-void
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lgml;->c:Lhya;

    iget v1, p0, Lgml;->d:I

    invoke-interface {v0, v1}, Lhya;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgml;->a:Landroid/content/Context;

    const-class v2, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lgml;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
