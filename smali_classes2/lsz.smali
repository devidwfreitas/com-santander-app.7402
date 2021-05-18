.class public Llsz;
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
    .line 216
    iput-object p1, p0, Llsz;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Llsz;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->f(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Llsz;->a:Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SurveyActivity;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 221
    return-void
.end method
