.class Likn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Likl;


# direct methods
.method constructor <init>(Likl;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Likn;->a:Likl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Likn;->a:Likl;

    invoke-static {v0}, Likl;->a(Likl;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->a(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Likn;->a:Likl;

    invoke-static {v0}, Likl;->b(Likl;)Lfuz;

    move-result-object v0

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoActivity;->a(Lfuz;)V

    .line 167
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Likn;->a:Likl;

    invoke-virtual {v1}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/BeneficiarioPagamentoListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    iget-object v1, p0, Likn;->a:Likl;

    invoke-virtual {v1, v0}, Likl;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void
.end method
