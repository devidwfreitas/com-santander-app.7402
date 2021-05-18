.class public Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lgbb;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgbb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;)Lgbb;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->b:Lgbb;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;Lgbb;)Lgbb;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->b:Lgbb;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 52
    const v0, 0x7f100ffa

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 53
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 54
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 55
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lgcz;

    iget-object v2, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->b()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgcz;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 56
    return-void
.end method

.method private b()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lgcv;

    invoke-direct {v0, p0}, Lgcv;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    const-string v1, "motivo_envio_selected"

    iget-object v2, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->b:Lgbb;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->setResult(ILandroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->finish()V

    .line 83
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 89
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 90
    const-string v0, "motivo_envio_selected"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgbb;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->b:Lgbb;

    .line 91
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->c()V

    .line 94
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f040321

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 44
    const v1, 0x7f090346

    invoke-virtual {p0, v1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "motivo_envio"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->c:Ljava/util/List;

    .line 48
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/MotivoEnvioListActivity;->a()V

    .line 49
    return-void
.end method
