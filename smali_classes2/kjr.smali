.class Lkjr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkjo;


# direct methods
.method constructor <init>(Lkjo;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lkjr;->a:Lkjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 432
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 435
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 436
    iget-object v2, p0, Lkjr;->a:Lkjo;

    invoke-static {v2}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v2

    invoke-interface {v2}, Lkjn;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 438
    const-string v2, "Outros_RecargaDeTelefone_RecargaProgramada_DataPeriodoInicio_Acao"

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lkjr;->a:Lkjo;

    invoke-static {v4}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v4

    invoke-interface {v4}, Lkjn;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lkjr;->a:Lkjo;

    invoke-static {v0}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v0

    iget-object v2, p0, Lkjr;->a:Lkjo;

    invoke-static {v2}, Lkjo;->e(Lkjo;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkjn;->a(Ljava/util/Calendar;Landroid/app/DatePickerDialog$OnDateSetListener;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
