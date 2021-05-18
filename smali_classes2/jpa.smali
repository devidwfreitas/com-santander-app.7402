.class public Ljpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->a(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 71
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    const-class v2, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-string v1, "Nome"

    iget-object v2, p0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v2}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->b(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "cpf"

    iget-object v2, p0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v2}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->c(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "contaPreferencial"

    iget-object v2, p0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v2}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->d(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->a(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 77
    new-instance v0, Lfzh;

    new-instance v1, Ljpb;

    invoke-direct {v1, p0}, Ljpb;-><init>(Ljpa;)V

    iget-object v2, p0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    .line 101
    invoke-static {v2}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->e(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v3}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->d(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lfzh;-><init>(Lfzi;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfzh;->c([Ljava/lang/Object;)Lgne;

    goto :goto_0
.end method
