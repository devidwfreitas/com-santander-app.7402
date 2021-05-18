.class public Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;
.super Lgoj;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lgoj;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f1004c6

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->a()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "Solicita\u00e7\u00e3o do Cart\u00e3o de Seguran\u00e7a"

    .line 76
    const-string v2, ""

    .line 77
    invoke-static {p0, v1, v2, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->w:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f04031d

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->setContentView(I)V

    .line 37
    const v0, 0x7f10071d

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->a:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f100ff2

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->b:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f1008e3

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->c:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f100ff3

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->f:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f100542

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->g:Landroid/widget/Button;

    .line 42
    const v0, 0x7f100ff4

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->w:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 50
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 52
    const v1, 0x7f090769

    invoke-virtual {p0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    const-string v1, "titulo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->a:Landroid/widget/TextView;

    const-string v2, "titulo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    const-string v1, "subTitulo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->b:Landroid/widget/TextView;

    const-string v2, "subTitulo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_1
    const-string v1, "referOper"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->c:Landroid/widget/TextView;

    const-string v2, "referOper"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_2
    const-string v1, "dataHora"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;->f:Landroid/widget/TextView;

    const-string v2, "dataHora"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_3
    return-void
.end method
