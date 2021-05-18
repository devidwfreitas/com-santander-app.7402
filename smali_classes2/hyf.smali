.class Lhyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:Lhye;


# direct methods
.method constructor <init>(Lhye;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lhyf;->a:Lhye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lhyf;->a:Lhye;

    iget-object v0, v0, Lhye;->a:Lhyd;

    iget-object v0, v0, Lhyd;->a:Lhxy;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lhxy;->a(I)V

    .line 176
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lhyf;->a:Lhye;

    iget-object v0, v0, Lhye;->a:Lhyd;

    iget-object v0, v0, Lhyd;->b:Lhyb;

    invoke-static {v0}, Lhyb;->b(Lhyb;)Lhxo;

    move-result-object v0

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhyx;->b(Ljava/lang/String;)F

    move-result v0

    .line 162
    iget-object v1, p0, Lhyf;->a:Lhye;

    iget-object v1, v1, Lhye;->a:Lhyd;

    iget-object v1, v1, Lhyd;->b:Lhyb;

    invoke-static {v1}, Lhyb;->b(Lhyb;)Lhxo;

    move-result-object v1

    invoke-virtual {v1}, Lhxo;->h()Lhxq;

    move-result-object v1

    invoke-interface {v1}, Lhxq;->getValorLimiteMax()F

    move-result v1

    .line 163
    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/16 v0, 0xa

    .line 166
    :goto_0
    iget-object v1, p0, Lhyf;->a:Lhye;

    iget-object v1, v1, Lhye;->a:Lhyd;

    iget-object v1, v1, Lhyd;->a:Lhxy;

    invoke-interface {v1, v0}, Lhxy;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_1
    return-void

    .line 163
    :cond_0
    const/16 v0, 0xb

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string v1, "EmpElegibilidadeService"

    const-string v2, "requestSimularContratar"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    iget-object v0, p0, Lhyf;->a:Lhye;

    iget-object v0, v0, Lhye;->a:Lhyd;

    iget-object v0, v0, Lhyd;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->a()V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lhyf;->a:Lhye;

    iget-object v0, v0, Lhye;->a:Lhyd;

    iget-object v0, v0, Lhyd;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->b()V

    .line 181
    return-void
.end method
