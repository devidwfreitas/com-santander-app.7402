.class public Llsx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Llsx;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Llsx;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llsx;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->f(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Llsx;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    iget-object v1, p0, Llsx;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Llsx;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)V

    goto :goto_0
.end method
