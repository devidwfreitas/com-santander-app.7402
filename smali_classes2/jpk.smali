.class public Ljpk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Ljpk;->b:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    iput-object p2, p0, Ljpk;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Ljpk;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 288
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljpk;->b:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    iget-object v1, v1, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    iget-object v1, p0, Ljpk;->b:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 290
    return-void
.end method
