.class public Llsu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Llsu;->b:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    iput-object p2, p0, Llsu;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 165
    iget-object v0, p0, Llsu;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 166
    iget-object v0, p0, Llsu;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Llsu;->b:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Llsu;->b:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->i:Landroid/app/Activity;

    iget-object v1, p0, Llsu;->b:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090350

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Llsu;->b:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v4}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Llsv;

    invoke-direct {v2, p0}, Llsv;-><init>(Llsu;)V

    invoke-static {v0, v1, v2}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 184
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Llsu;->a:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 174
    iget-object v0, p0, Llsu;->b:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->i:Landroid/app/Activity;

    iget-object v1, p0, Llsu;->b:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090960

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Llsw;

    invoke-direct {v2, p0}, Llsw;-><init>(Llsu;)V

    invoke-static {v0, v1, v2}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Llsu;->b:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    iget-object v1, p0, Llsu;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 182
    iget-object v0, p0, Llsu;->b:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llsu;->b:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-static {v1, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
