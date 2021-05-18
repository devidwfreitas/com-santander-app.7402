.class Llzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llzp;


# direct methods
.method constructor <init>(Llzp;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Llzq;->a:Llzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 109
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-static {}, Lmhj;->d()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 111
    iget-object v0, p0, Llzq;->a:Llzp;

    invoke-static {v0}, Llzp;->a(Llzp;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 112
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Llzq;->a:Llzp;

    invoke-static {v1}, Llzp;->b(Llzp;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v1

    new-instance v2, Llzr;

    invoke-direct {v2, p0, v5}, Llzr;-><init>(Llzq;Ljava/util/Calendar;)V

    const/4 v3, 0x1

    .line 126
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 127
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 128
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 129
    return-void
.end method
