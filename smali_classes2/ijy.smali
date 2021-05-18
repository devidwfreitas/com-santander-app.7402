.class Lijy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lijx;


# direct methods
.method constructor <init>(Lijx;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lijy;->c:Lijx;

    iput-object p2, p0, Lijy;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lijy;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 55
    iget-object v0, p0, Lijy;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lijy;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lijy;->c:Lijx;

    invoke-virtual {v0}, Lijx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, ""

    .line 60
    const-string v2, ""

    .line 61
    iget-object v3, p0, Lijy;->c:Lijx;

    invoke-virtual {v3}, Lijx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lijy;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lijy;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    return-void
.end method
