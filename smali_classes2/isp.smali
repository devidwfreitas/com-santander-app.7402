.class Lisp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lism;


# direct methods
.method constructor <init>(Lism;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lisp;->b:Lism;

    iput-object p2, p0, Lisp;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f090540

    .line 659
    const-string v0, "Outros_Way_RedirecionamentoAppWayParaNaoCorrentistaNoLogin_PopUp_Acao"

    const-string v1, "OK"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "Login"

    invoke-static {v0}, Lfrq;->a(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lisp;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 664
    invoke-static {v2}, Lmyo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lisp;->b:Lism;

    invoke-virtual {v0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "HOME"

    invoke-static {v0, v1}, Lmyo;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 670
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lisp;->b:Lism;

    invoke-virtual {v0}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lisp;->b:Lism;

    invoke-virtual {v1}, Lism;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmyo;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
