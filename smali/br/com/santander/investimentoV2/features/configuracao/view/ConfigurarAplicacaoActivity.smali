.class public Lbr/com/santander/investimentoV2/features/configuracao/view/ConfigurarAplicacaoActivity;
.super Lack;
.source "SourceFile"


# instance fields
.field private a:Lpc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lbr/com/santander/investimentoV2/features/configuracao/view/ConfigurarAplicacaoActivity;->a:Lpc;

    invoke-virtual {v0}, Lpc;->d()V

    .line 34
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v0, Llc;->activity_configurar_aplicacao:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/configuracao/view/ConfigurarAplicacaoActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/configuracao/view/ConfigurarAplicacaoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 28
    new-instance v0, Lpc;

    invoke-direct {v0, p0}, Lpc;-><init>(Lack;)V

    iput-object v0, p0, Lbr/com/santander/investimentoV2/features/configuracao/view/ConfigurarAplicacaoActivity;->a:Lpc;

    .line 29
    return-void
.end method
