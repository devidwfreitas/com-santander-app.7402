.class public Ljva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 354
    invoke-virtual {p1}, Landroid/widget/DatePicker;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 356
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 357
    iget-object v1, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-string v2, "dd/MM/yyyy"

    invoke-static {v0, v2}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    iget-object v0, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->f(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    iget-object v1, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-virtual {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->f(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    iget-object v1, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->f(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 361
    iget-object v0, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->h(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 362
    iget-object v0, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->f(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    iget-object v1, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-virtual {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 364
    iget-object v0, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->i(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->b(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3eb33333    # 0.35f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 366
    iget-object v0, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->j(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Laoa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->j(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Laoa;

    move-result-object v0

    invoke-virtual {v0}, Laoa;->c()V

    .line 369
    :cond_0
    const-string v0, "Pagamentos_Pagamento_Acao"

    iget-object v1, p0, Ljva;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->g(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_1
    return-void
.end method
