.class Lmal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Lmaj;


# direct methods
.method constructor <init>(Lmaj;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lmal;->b:Lmaj;

    iput-object p2, p0, Lmal;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 147
    iget-object v0, p0, Lmal;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 148
    iget-object v0, p0, Lmal;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lmal;->b:Lmaj;

    invoke-static {v1}, Lmaj;->b(Lmaj;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lmal;->b:Lmaj;

    invoke-static {v0}, Lmaj;->c(Lmaj;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v0

    iget-object v1, p0, Lmal;->b:Lmaj;

    invoke-virtual {v1}, Lmaj;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090350

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmal;->b:Lmaj;

    invoke-static {v4}, Lmaj;->b(Lmaj;)Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmam;

    invoke-direct {v2, p0}, Lmam;-><init>(Lmal;)V

    invoke-static {v0, v1, v2}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 167
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lmal;->a:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 156
    iget-object v0, p0, Lmal;->b:Lmaj;

    invoke-static {v0}, Lmaj;->c(Lmaj;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v0

    iget-object v1, p0, Lmal;->b:Lmaj;

    invoke-virtual {v1}, Lmaj;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090960

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lman;

    invoke-direct {v2, p0}, Lman;-><init>(Lmal;)V

    invoke-static {v0, v1, v2}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lmal;->b:Lmaj;

    invoke-static {v0}, Lmaj;->d(Lmaj;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmal;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-static {v1, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lmal;->b:Lmaj;

    iget-object v1, p0, Lmal;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lmaj;->a(Lmaj;Ljava/util/Date;)Ljava/util/Date;

    goto :goto_0
.end method
