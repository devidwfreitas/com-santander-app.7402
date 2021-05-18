.class public Ljpz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Ljpz;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljpz;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-static {v1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    const-string v1, "reopen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Ljpz;->a:Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;

    invoke-static {v1}, Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;->a(Lcom/santander/app/meuperfil/activity/SenhaAcessoActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 283
    return-void
.end method
