.class public Ljum;
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
    .line 349
    iput-object p1, p0, Ljum;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/widget/DatePicker;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 356
    iget-object v1, p0, Ljum;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->b(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    iget-object v0, p0, Ljum;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->k(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Ljum;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;

    invoke-static {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;->j(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_0
    return-void
.end method
