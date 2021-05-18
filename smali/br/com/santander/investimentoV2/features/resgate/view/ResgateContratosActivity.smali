.class public Lbr/com/santander/investimentoV2/features/resgate/view/ResgateContratosActivity;
.super Lack;
.source "SourceFile"


# instance fields
.field private a:Lxn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/resgate/view/ResgateContratosActivity;->finish()V

    .line 37
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Llc;->activity_resgate_contrato:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/resgate/view/ResgateContratosActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/resgate/view/ResgateContratosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 28
    new-instance v1, Leju;

    invoke-direct {v1}, Leju;-><init>()V

    invoke-virtual {v1}, Leju;->j()Lejm;

    move-result-object v1

    const-string v2, "family"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lsy;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    .line 30
    new-instance v1, Lxn;

    invoke-direct {v1, p0, v0}, Lxn;-><init>(Lack;Lsy;)V

    iput-object v1, p0, Lbr/com/santander/investimentoV2/features/resgate/view/ResgateContratosActivity;->a:Lxn;

    .line 32
    return-void
.end method
