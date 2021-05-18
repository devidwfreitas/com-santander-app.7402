.class Lkju;
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
    .line 639
    iput-object p1, p0, Lkju;->a:Lkjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x5

    const/4 v1, 0x2

    .line 642
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 643
    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 644
    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 645
    invoke-virtual {v0, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 647
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 649
    invoke-static {v0}, Lkhz;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 652
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 656
    iget-object v4, p0, Lkju;->a:Lkjo;

    invoke-static {v4}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v4

    invoke-interface {v4}, Lkjn;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 658
    iget-object v2, p0, Lkju;->a:Lkjo;

    invoke-static {v2}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v2

    invoke-interface {v2}, Lkjn;->q()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 669
    :goto_0
    invoke-static {v3}, Lkhz;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 671
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt v3, v4, :cond_0

    const/4 v3, 0x2

    .line 672
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 673
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt p2, v3, :cond_1

    .line 675
    iget-object v3, p0, Lkju;->a:Lkjo;

    invoke-static {v3}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lkjn;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :cond_1
    :goto_1
    iget-object v2, p0, Lkju;->a:Lkjo;

    invoke-static {v2}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkjn;->d(Ljava/lang/String;)V

    .line 682
    return-void

    .line 660
    :pswitch_0
    const/4 v2, 0x5

    const/4 v4, 0x7

    :try_start_1
    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v2

    .line 679
    iget-object v2, p0, Lkju;->a:Lkjo;

    invoke-static {v2}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkjn;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 663
    :pswitch_1
    const/4 v2, 0x2

    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
