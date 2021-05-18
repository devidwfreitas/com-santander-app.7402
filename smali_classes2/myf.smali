.class final Lmyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Z

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Dialog;ZLandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lmyf;->a:Landroid/app/Dialog;

    iput-boolean p2, p0, Lmyf;->b:Z

    iput-object p3, p0, Lmyf;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lmyf;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 379
    iget-boolean v0, p0, Lmyf;->b:Z

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmyf;->c:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    const-string v1, "reopen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 382
    iget-object v1, p0, Lmyf;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 385
    :cond_0
    return-void
.end method
