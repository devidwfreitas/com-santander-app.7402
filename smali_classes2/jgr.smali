.class public Ljgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Ljgr;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Ljgr;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->m(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Ljgr;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->d(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "000"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Ljgr;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->p(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V

    .line 403
    return-void
.end method
