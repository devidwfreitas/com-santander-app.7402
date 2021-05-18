.class Lijs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lijr;


# direct methods
.method constructor <init>(Lijr;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lijs;->a:Lijr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lijs;->a:Lijr;

    invoke-virtual {v0}, Lijr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v1, ""

    .line 52
    const-string v2, ""

    .line 53
    iget-object v3, p0, Lijs;->a:Lijr;

    invoke-virtual {v3}, Lijr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
