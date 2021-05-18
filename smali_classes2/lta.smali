.class public Llta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Llta;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 327
    iget-object v0, p0, Llta;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Llta;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v0, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;Z)Z

    .line 330
    if-eqz p1, :cond_0

    .line 332
    iget-object v0, p0, Llta;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    const-string v1, "A vistoria foi reagendada com sucesso"

    new-instance v2, Lltb;

    invoke-direct {v2, p0}, Lltb;-><init>(Llta;)V

    invoke-static {v0, v1, v2}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Llta;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Llta;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v0, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;Z)Z

    .line 351
    iget-object v1, p0, Llta;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Llta;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->i(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0

    .line 351
    :cond_3
    iget-object v0, p0, Llta;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    .line 352
    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090362

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 322
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Llta;->a(Lis;)V

    return-void
.end method
