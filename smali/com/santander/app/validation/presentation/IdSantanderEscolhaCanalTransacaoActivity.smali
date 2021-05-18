.class public Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnbu;


# static fields
.field public static final a:I = 0x5


# instance fields
.field private b:Lndj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    const-string v1, "showLogin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->finish()V

    .line 81
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 84
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 107
    invoke-static {p0}, Lmyl;->e(Landroid/app/Activity;)V

    .line 108
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 112
    invoke-static {p0}, Lmyl;->f(Landroid/app/Activity;)V

    .line 113
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_SEM_SEMENTE:Lnat;

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x5

    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 92
    const-string v0, "showLogin"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-direct {p0, v1}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->a(Z)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-direct {p0, v2}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->a(Z)V

    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "showLogin"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, v2}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->a(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v2, 0x7f10032b

    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 39
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->setContentView(I)V

    .line 41
    new-instance v0, Lndk;

    invoke-direct {v0, p0, p0}, Lndk;-><init>(Landroid/content/Context;Lnbu;)V

    iput-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->b:Lndj;

    .line 43
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 44
    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 45
    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setVisibility(I)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lnbt;

    invoke-direct {v1, p0}, Lnbt;-><init>(Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    const v1, 0x7f090ad2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090946

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 65
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040255

    const/4 v3, 0x0

    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->d()V

    .line 71
    const v0, 0x7f100c6a

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 72
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    iget-object v1, p0, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;->b:Lndj;

    invoke-interface {v1}, Lndj;->a()Lndh;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 74
    return-void
.end method
