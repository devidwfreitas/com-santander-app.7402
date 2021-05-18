.class public Lmoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lmoi;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/widget/DatePicker;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lmoi;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->a(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 275
    iget-object v0, p0, Lmoi;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->q(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 276
    iget-object v0, p0, Lmoi;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmoi;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v2}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->q(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->a(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lmoi;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->d(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    iget-object v1, p0, Lmoi;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v1}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->r(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lmoi;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->d(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    iget-object v1, p0, Lmoi;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-virtual {v1}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextColor(I)V

    .line 279
    iget-object v0, p0, Lmoi;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->g(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    .line 282
    :cond_0
    return-void
.end method
