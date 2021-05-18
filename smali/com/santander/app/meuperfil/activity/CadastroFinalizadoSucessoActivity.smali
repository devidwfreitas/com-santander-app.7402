.class public Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 25
    const-string v0, "CadastroFinalizadoSucessoActivity"

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 67
    const-string v0, "CadastroFinalizadoSucessoActivity"

    const-string v1, "Clicou"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, "reopen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0400fb

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f10055d

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->b:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v0, 0x7f10055e

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->d:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f10055f

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->e:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02061f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 48
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 50
    const v0, 0x7f1004c6

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 52
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "codRetorno"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "codRetorno"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->c:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->c:Ljava/lang/String;

    const-string v1, "104"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020569

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->d:Landroid/widget/TextView;

    const-string v1, "Lembre que voc\u00ea deve utilizar a mesma senha de acesso no App Santander, no Internet Banking e na Central de Atendimento Santander."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    :goto_1
    return-void

    .line 52
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->c:Ljava/lang/String;

    const-string v1, "105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020568

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;->d:Landroid/widget/TextView;

    const-string v1, "Lembre que voc\u00ea deve utilizar a mesma senha de acesso no App Santander e no Internet Banking."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
