.class public Lfxj;
.super Lfxg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lfxg;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "lottie_boas_vindas_step1.json"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "Seguran\u00e7a e praticidade"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "Aqui voc\u00ea faz transa\u00e7\u00f5es com seguran\u00e7a e praticidade, utilizando o ID Santander"

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lfxg;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lfxj;->d:Lfxe;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lfxj;->d:Lfxe;

    invoke-interface {v0}, Lfxe;->b()V

    .line 36
    :cond_0
    return-void
.end method
