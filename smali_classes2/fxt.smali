.class public Lfxt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lfxt;->c:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    iput p2, p0, Lfxt;->a:I

    iput-object p3, p0, Lfxt;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 648
    iget v0, p0, Lfxt;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 649
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfxt;->c:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 650
    const-string v1, "reopen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 651
    iget-object v1, p0, Lfxt;->c:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lfxt;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
