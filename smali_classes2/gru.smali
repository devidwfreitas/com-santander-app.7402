.class Lgru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lgrs;


# direct methods
.method constructor <init>(Lgrs;ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lgru;->c:Lgrs;

    iput p2, p0, Lgru;->a:I

    iput-object p3, p0, Lgru;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 461
    iget v0, p0, Lgru;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 462
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 471
    :goto_0
    return-void

    .line 463
    :cond_0
    iget v0, p0, Lgru;->a:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 464
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 465
    const-string v1, "showLogin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lgru;->c:Lgrs;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lgrs;->setResult(ILandroid/content/Intent;)V

    .line 467
    iget-object v0, p0, Lgru;->c:Lgrs;

    iget-object v0, v0, Lgrs;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 469
    :cond_1
    iget-object v0, p0, Lgru;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
