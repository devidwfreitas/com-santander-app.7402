.class Likq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Landroid/app/DatePickerDialog$OnDateSetListener;

.field final synthetic b:Ljava/util/Calendar;

.field final synthetic c:Likl;


# direct methods
.method constructor <init>(Likl;Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Likq;->c:Likl;

    iput-object p2, p0, Likq;->a:Landroid/app/DatePickerDialog$OnDateSetListener;

    iput-object p3, p0, Likq;->b:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    .prologue
    .line 302
    if-eqz p2, :cond_0

    .line 303
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Likq;->c:Likl;

    invoke-virtual {v1}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Likq;->a:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v3, p0, Likq;->b:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Likq;->b:Ljava/util/Calendar;

    const/4 v5, 0x2

    .line 304
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Likq;->b:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 306
    :cond_0
    return-void
.end method
