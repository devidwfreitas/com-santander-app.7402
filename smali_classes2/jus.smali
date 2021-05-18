.class public Ljus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Ljus;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 310
    invoke-virtual {p1}, Landroid/widget/DatePicker;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 312
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 313
    iget-object v1, p0, Ljus;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->a(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    iget-object v0, p0, Ljus;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->f(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    iget-object v1, p0, Ljus;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-virtual {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Ljus;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->f(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    iget-object v1, p0, Ljus;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->g(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Ljus;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->f(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 317
    iget-object v0, p0, Ljus;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->h(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/DateCircleButton;->setEnableDateCircleButton(Z)V

    .line 318
    iget-object v0, p0, Ljus;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->f(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    iget-object v1, p0, Ljus;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-virtual {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 320
    const-string v0, "Pagamentos_Pagamento_Acao"

    iget-object v1, p0, Ljus;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->g(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method
