.class Like;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Likd;


# direct methods
.method constructor <init>(Likd;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Like;->c:Likd;

    iput-object p2, p0, Like;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Like;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 59
    iget-object v0, p0, Like;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Like;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Like;->c:Likd;

    invoke-virtual {v0}, Likd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/FazerPagamentoConfirmacaoActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, ""

    .line 64
    const-string v2, ""

    .line 65
    iget-object v3, p0, Like;->c:Likd;

    invoke-virtual {v3}, Likd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Like;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Like;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    return-void
.end method
