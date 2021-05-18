.class public Lbr/com/santander/investimentoV2/features/efetivacao/view/EfetivacaoActivity;
.super Lack;
.source "SourceFile"


# instance fields
.field private a:Lss;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
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
    const/4 v1, 0x0

    .line 25
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v0, Llc;->activity_efetivacao:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/efetivacao/view/EfetivacaoActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/efetivacao/view/EfetivacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "cso"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/efetivacao/view/EfetivacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "cso"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 32
    new-instance v2, Leju;

    invoke-direct {v2}, Leju;-><init>()V

    invoke-virtual {v2}, Leju;->j()Lejm;

    move-result-object v2

    const-class v3, Lyt;

    invoke-virtual {v2, v0, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt;

    .line 35
    :goto_0
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/efetivacao/view/EfetivacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "otp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/efetivacao/view/EfetivacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "otp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    :cond_0
    new-instance v2, Lss;

    invoke-direct {v2, p0, v0, v1}, Lss;-><init>(Lack;Lyt;Ljava/lang/String;)V

    iput-object v2, p0, Lbr/com/santander/investimentoV2/features/efetivacao/view/EfetivacaoActivity;->a:Lss;

    .line 39
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
