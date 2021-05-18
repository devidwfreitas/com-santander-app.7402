.class Lknk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Ljava/text/SimpleDateFormat;

.field final synthetic c:Lknj;


# direct methods
.method constructor <init>(Lknj;Landroid/widget/Button;Ljava/text/SimpleDateFormat;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lknk;->c:Lknj;

    iput-object p2, p0, Lknk;->a:Landroid/widget/Button;

    iput-object p3, p0, Lknk;->b:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lknk;->c:Lknj;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lknj;->a(Lknj;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 64
    iget-object v0, p0, Lknk;->c:Lknj;

    invoke-static {v0}, Lknj;->a(Lknj;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 65
    iget-object v0, p0, Lknk;->a:Landroid/widget/Button;

    iget-object v1, p0, Lknk;->b:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lknk;->c:Lknj;

    invoke-static {v2}, Lknj;->a(Lknj;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method
