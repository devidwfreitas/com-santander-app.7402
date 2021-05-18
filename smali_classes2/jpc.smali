.class Ljpc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Ljpb;


# direct methods
.method constructor <init>(Ljpb;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Ljpc;->a:Ljpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 85
    check-cast p1, Lfnz;

    .line 86
    invoke-virtual {p1}, Lfnz;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljpc;->a:Ljpb;

    iget-object v1, v1, Ljpb;->a:Ljpa;

    iget-object v1, v1, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    const-class v2, Lcom/santander/app/meuperfil/activity/CadastroFinalizadoSucessoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "codRetorno"

    const-string v2, "104"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Ljpc;->a:Ljpb;

    iget-object v1, v1, Ljpb;->a:Ljpa;

    iget-object v1, v1, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    iget-object v0, p0, Ljpc;->a:Ljpb;

    iget-object v0, v0, Ljpb;->a:Ljpa;

    iget-object v0, v0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-virtual {v0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->finish()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Ljpc;->a:Ljpb;

    iget-object v0, v0, Ljpb;->a:Ljpa;

    iget-object v0, v0, Ljpa;->a:Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;

    invoke-static {v0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->e(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lfnz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method
