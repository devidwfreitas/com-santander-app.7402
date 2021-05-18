.class public Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-static {p0, v2}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 101
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 103
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 104
    const v0, 0x7f0401a0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 105
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 106
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 108
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 109
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 111
    const v0, 0x7f10071c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljpo;

    invoke-direct {v2, p0, v1}, Ljpo;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f1007c4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a4d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Erro showLoading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljrp;

    new-instance v1, Ljpn;

    invoke-direct {v1, p0}, Ljpn;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;)V

    invoke-direct {v0, v1, p0}, Ljrp;-><init>(Ljrn;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 94
    invoke-virtual {v0, v1}, Ljrp;->c([Ljava/lang/Object;)Lgne;

    .line 95
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f04031c

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;->setContentView(I)V

    .line 50
    iput-object p0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;->i:Landroid/app/Activity;

    .line 52
    const v0, 0x7f100ff1

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;->a:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 60
    const v1, 0x7f090769

    invoke-virtual {p0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 62
    const v0, 0x7f1004c6

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 63
    return-void
.end method
