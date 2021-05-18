.class Liss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmwx;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lism;


# direct methods
.method constructor <init>(Lism;Lmwx;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Liss;->c:Lism;

    iput-object p2, p0, Liss;->a:Lmwx;

    iput-object p3, p0, Liss;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 819
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Liss;->c:Lism;

    invoke-virtual {v1}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 820
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 821
    const-string v2, "xxx"

    iget-object v3, p0, Liss;->a:Lmwx;

    invoke-virtual {v3}, Lmwx;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 823
    iget-object v1, p0, Liss;->c:Lism;

    invoke-virtual {v1, v0}, Lism;->startActivity(Landroid/content/Intent;)V

    .line 825
    iget-object v0, p0, Liss;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 826
    return-void
.end method
