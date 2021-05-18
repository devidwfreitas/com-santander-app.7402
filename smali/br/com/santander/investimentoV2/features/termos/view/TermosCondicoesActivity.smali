.class public Lbr/com/santander/investimentoV2/features/termos/view/TermosCondicoesActivity;
.super Lack;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Llc;->activity_termo_aceite:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/termos/view/TermosCondicoesActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/termos/view/TermosCondicoesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "aplicacaoEntity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Lyi;

    new-instance v2, Leju;

    invoke-direct {v2}, Leju;-><init>()V

    invoke-virtual {v2}, Leju;->j()Lejm;

    move-result-object v2

    const-class v3, Lace;

    invoke-virtual {v2, v0, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-direct {v1, p0, v0}, Lyi;-><init>(Lack;Lace;)V

    .line 27
    return-void
.end method
