.class public Lbr/com/santander/investimentoV2/features/resgate/view/ResgateConfigurarActivity;
.super Lack;
.source "SourceFile"


# instance fields
.field private a:Lwx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/resgate/view/ResgateConfigurarActivity;->finish()V

    .line 25
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget v0, Llc;->activity_configurar_resgate:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/resgate/view/ResgateConfigurarActivity;->setContentView(I)V

    .line 18
    new-instance v0, Lwx;

    invoke-direct {v0, p0}, Lwx;-><init>(Lack;)V

    iput-object v0, p0, Lbr/com/santander/investimentoV2/features/resgate/view/ResgateConfigurarActivity;->a:Lwx;

    .line 20
    return-void
.end method
