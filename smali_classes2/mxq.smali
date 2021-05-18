.class final Lmxq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 490
    iput-boolean p1, p0, Lmxq;->a:Z

    iput-object p2, p0, Lmxq;->b:Landroid/app/Activity;

    iput-object p3, p0, Lmxq;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 492
    iget-boolean v0, p0, Lmxq;->a:Z

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmxq;->b:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    const-string v1, "reopen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 504
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->o()V

    .line 505
    invoke-static {}, Ljcd;->a()V

    .line 510
    iget-object v1, p0, Lmxq;->c:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 512
    iget-object v1, p0, Lmxq;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 542
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->o()V

    .line 520
    invoke-static {}, Ljcd;->a()V

    .line 522
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmxq;->b:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    const-string v1, "reopen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    iget-object v1, p0, Lmxq;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 526
    iget-object v0, p0, Lmxq;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 528
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 532
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 533
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 538
    iget-object v0, p0, Lmxq;->b:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 539
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 540
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
