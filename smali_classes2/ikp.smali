.class Likp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Likl;


# direct methods
.method constructor <init>(Likl;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Likp;->b:Likl;

    iput-object p2, p0, Likp;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Likp;->a:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 289
    iget-object v0, p0, Likp;->a:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 290
    iget-object v0, p0, Likp;->a:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 291
    const-string v0, "dd/MM/yyyy"

    .line 292
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 294
    iget-object v0, p0, Likp;->b:Likl;

    invoke-static {v0}, Likl;->h(Likl;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Likp;->a:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 295
    return-void
.end method
