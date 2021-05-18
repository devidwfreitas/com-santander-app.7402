.class Llzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Llzq;


# direct methods
.method constructor <init>(Llzq;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Llzr;->b:Llzq;

    iput-object p2, p0, Llzr;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Llzr;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 117
    iget-object v0, p0, Llzr;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Llzr;->b:Llzq;

    iget-object v0, v0, Llzq;->a:Llzp;

    invoke-static {v0}, Llzp;->b(Llzp;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    move-result-object v0

    const-string v1, "N\u00e3o \u00e9 poss\u00edvel selecionar uma data futura"

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Llzr;->b:Llzq;

    iget-object v0, v0, Llzq;->a:Llzp;

    invoke-static {v0}, Llzp;->c(Llzp;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "dd/MM/yyyy"

    invoke-static {v1, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Llzr;->b:Llzq;

    iget-object v0, v0, Llzq;->a:Llzp;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Llzp;->a(Llzp;Ljava/util/Date;)Ljava/util/Date;

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Llzr;->b:Llzq;

    iget-object v0, v0, Llzq;->a:Llzp;

    invoke-static {v0}, Llzp;->c(Llzp;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llzr;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-static {v1, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Llzr;->b:Llzq;

    iget-object v0, v0, Llzq;->a:Llzp;

    iget-object v1, p0, Llzr;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Llzp;->a(Llzp;Ljava/util/Date;)Ljava/util/Date;

    goto :goto_0
.end method
