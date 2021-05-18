.class Lxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lwx;


# direct methods
.method constructor <init>(Lwx;ILandroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lxc;->c:Lwx;

    iput p2, p0, Lxc;->a:I

    iput-object p3, p0, Lxc;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 604
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 605
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 606
    iget-object v1, p0, Lxc;->c:Lwx;

    iget v2, p0, Lxc;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lwx;->b(Lwx;Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lxc;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lxc;->c:Lwx;

    invoke-static {v2, v0}, Lwx;->b(Lwx;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v1, p0, Lxc;->c:Lwx;

    invoke-static {v1}, Lwx;->e(Lwx;)Lace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lace;->a(Ljava/util/Calendar;)V

    .line 609
    return-void
.end method
