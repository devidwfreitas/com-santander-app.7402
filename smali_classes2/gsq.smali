.class public Lgsq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lgsq;->a:Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 102
    const-string v0, "Ok"

    invoke-static {v0}, Lgst;->b(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lgsq;->a:Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;

    invoke-static {v0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->b(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lgsq;->a:Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;

    invoke-static {v3}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->b(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v3

    const v4, 0x7f090207

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    iget-object v0, p0, Lgsq;->a:Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;

    invoke-static {v0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->c(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 106
    return-void
.end method
