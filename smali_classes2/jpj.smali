.class public Ljpj;
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
    .line 275
    iput-object p1, p0, Ljpj;->b:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    iput-object p2, p0, Ljpj;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Ljpj;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 279
    iget-object v0, p0, Ljpj;->b:Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    iget-object v0, v0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 280
    return-void
.end method
