.class Lkjt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Lkjo;


# direct methods
.method constructor <init>(Lkjo;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lkjt;->a:Lkjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x5

    const/4 v0, 0x1

    .line 591
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 592
    invoke-virtual {v1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 593
    invoke-virtual {v1, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 594
    invoke-virtual {v1, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 596
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-static {v1}, Lkhz;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 601
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "dd/MM/yyyy"

    invoke-static {v2, v3}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 603
    if-eqz v2, :cond_0

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    new-instance v4, Ljava/util/Locale;

    const-string v5, "pt"

    const-string v6, "BR"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 607
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 609
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 611
    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le p4, v2, :cond_1

    const/4 v2, 0x1

    .line 612
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-lt p2, v2, :cond_1

    .line 614
    iget-object v2, p0, Lkjt;->a:Lkjo;

    invoke-static {v2}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkjn;->c(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lkjt;->a:Lkjo;

    invoke-static {v0}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v0

    invoke-interface {v0}, Lkjn;->q()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 627
    :goto_0
    invoke-static {v1}, Lkhz;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lkjt;->a:Lkjo;

    invoke-static {v1}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-string v2, "dd/MM/yyyy"

    invoke-static {v0, v2}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkjn;->d(Ljava/lang/String;)V

    .line 634
    :cond_1
    :goto_1
    return-void

    .line 618
    :pswitch_0
    const/4 v0, 0x5

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 621
    :pswitch_1
    const/4 v0, 0x2

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
