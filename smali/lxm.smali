.class public Llxm;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a()Llxm;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    new-instance v1, Llxm;

    invoke-direct {v1}, Llxm;-><init>()V

    .line 37
    invoke-virtual {v1, v0}, Llxm;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Llxm;->a:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "Seguros_Sinistro_MeusSinistros_PagamentoAprovado_Contestacao_Acao"

    const-string v1, "Avancar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "Seguros_Sinistro_MeusSinistros_PagamentoRecusado_Contestacao_Acao"

    const-string v1, "Avancar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lkxd;)V
    .locals 3
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llxm;->a:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Llxm;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public a(Lkxi;)V
    .locals 3
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    .line 67
    iget-boolean v0, p1, Lkxi;->a:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Llxm;->b()V

    .line 69
    iget-object v0, p0, Llxm;->a:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->close()V

    .line 71
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llxm;->a:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Llxm;->startActivity(Landroid/content/Intent;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 47
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    iput-object p1, p0, Llxm;->a:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    .line 50
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Llxm;->a:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-virtual {p0}, Llxm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->a(Ljava/lang/String;Z)V

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    const v0, 0x7f040200

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 104
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->c(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 98
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->b(Ljava/lang/Object;)V

    .line 99
    return-void
.end method
