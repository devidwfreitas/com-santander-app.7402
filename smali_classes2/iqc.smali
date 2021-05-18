.class public Liqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmwx;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Lmwx;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Liqc;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    iput-object p2, p0, Liqc;->a:Lmwx;

    iput-object p3, p0, Liqc;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liqc;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->a(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 310
    const-string v2, "xxx"

    iget-object v3, p0, Liqc;->a:Lmwx;

    invoke-virtual {v3}, Lmwx;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Liqc;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 314
    iget-object v0, p0, Liqc;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 315
    return-void
.end method
