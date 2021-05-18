.class public Lbr/com/santander/investimentoV2/features/validacao/view/ValidacaoActivity;
.super Lack;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 14
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget v0, Llc;->activity_validacao:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/validacao/view/ValidacaoActivity;->setContentView(I)V

    .line 16
    new-instance v0, Lzp;

    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/validacao/view/ValidacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lzp;-><init>(Lack;Landroid/support/v4/app/FragmentManager;)V

    .line 17
    return-void
.end method
