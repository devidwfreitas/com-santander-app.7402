.class Lpn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Ljava/util/Calendar;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lpc;


# direct methods
.method constructor <init>(Lpc;Ljava/util/Calendar;Ljava/util/Calendar;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lpn;->d:Lpc;

    iput-object p2, p0, Lpn;->a:Ljava/util/Calendar;

    iput-object p3, p0, Lpn;->b:Ljava/util/Calendar;

    iput-object p4, p0, Lpn;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 799
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 800
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 801
    iget-object v1, p0, Lpn;->a:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lpn;->b:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 802
    iget-object v1, p0, Lpn;->d:Lpc;

    invoke-static {v1}, Lpc;->R(Lpc;)Lace;

    move-result-object v1

    invoke-virtual {v1}, Lace;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lpn;->d:Lpc;

    invoke-static {v1}, Lpc;->S(Lpc;)Lace;

    move-result-object v1

    iget-object v2, p0, Lpn;->d:Lpc;

    invoke-static {v2, v0}, Lpc;->a(Lpc;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lace;->b(Ljava/util/Calendar;)V

    .line 807
    :goto_0
    iget-object v1, p0, Lpn;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lpn;->d:Lpc;

    invoke-static {v2, v0}, Lpc;->b(Lpc;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    :goto_1
    return-void

    .line 805
    :cond_0
    iget-object v1, p0, Lpn;->d:Lpc;

    invoke-static {v1}, Lpc;->T(Lpc;)Lace;

    move-result-object v1

    iget-object v2, p0, Lpn;->d:Lpc;

    invoke-static {v2, v0}, Lpc;->a(Lpc;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lace;->a(Ljava/util/Calendar;)V

    goto :goto_0

    .line 809
    :cond_1
    iget-object v0, p0, Lpn;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lpn;->d:Lpc;

    iget-object v2, p0, Lpn;->a:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lpc;->b(Lpc;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
