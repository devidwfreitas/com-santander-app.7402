.class public Lcom/santander/app/meuperfil/activity/CadastroAtencaoActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 24
    const-string v0, "CadastroAtencaoActivity"

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroAtencaoActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroAtencaoActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 49
    const-string v0, "CadastroAtencaoActivity"

    const-string v1, "Clicou"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string v1, "reopen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/CadastroAtencaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f0400f9

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/CadastroAtencaoActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f10055d

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/CadastroAtencaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroAtencaoActivity;->b:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/CadastroAtencaoActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/CadastroAtencaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/CadastroAtencaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02061f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 39
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 41
    const v0, 0x7f1004c6

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/CadastroAtencaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 43
    return-void
.end method
