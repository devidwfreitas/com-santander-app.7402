.class public Ljuv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalz;


# instance fields
.field final synthetic a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Ljuv;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lbr/com/santander/uisdk/SantanderSwitch;Z)V
    .locals 2

    .prologue
    .line 125
    if-eqz p2, :cond_0

    .line 126
    const-string v0, "Pagamentos_DDA_AgendamentoRecorrente_Acao"

    const-string v1, "Habilitar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Ljuv;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Ljuv;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3dcccccd    # 0.1f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v0, "Pagamentos_DDA_AgendamentoRecorrente_Acao"

    const-string v1, "Desabilitar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Ljuv;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Ljuv;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3eb33333    # 0.35f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method
