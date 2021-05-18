.class public Ljpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljrn;


# instance fields
.field final synthetic a:Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoNovamenteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoNovamenteActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Ljpp;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoNovamenteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 72
    check-cast p1, Ljqj;

    .line 74
    invoke-virtual {p1}, Ljqj;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy - HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 78
    new-instance v2, Lgvb;

    invoke-direct {v2}, Lgvb;-><init>()V

    .line 79
    const-string v3, "Cart\u00e3o de Seguran\u00e7a On-Line"

    invoke-virtual {v2, v3}, Lgvb;->c(Ljava/lang/String;)V

    .line 80
    const-string v3, "Solicita\u00e7\u00e3o do Cart\u00e3o de Seguran\u00e7a"

    invoke-virtual {v2, v3}, Lgvb;->g(Ljava/lang/String;)V

    .line 81
    const-string v3, "Solicita\u00e7\u00e3o efetuada com sucesso"

    invoke-virtual {v2, v3}, Lgvb;->d(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Ljqj;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgvb;->e(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lgvb;->d(Z)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljpp;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoNovamenteActivity;

    const-class v3, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Ljpp;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoNovamenteActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoNovamenteActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Ljpp;->a:Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoNovamenteActivity;

    invoke-virtual {v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoNovamenteActivity;->a()V

    goto :goto_0
.end method
