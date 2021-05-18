.class final Lmhl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertDialog;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lmhl;->a:Landroid/support/v7/app/AlertDialog;

    iput-object p2, p0, Lmhl;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const v2, 0x7f0e0019

    .line 313
    iget-object v0, p0, Lmhl;->a:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmhl;->b:Landroid/content/Context;

    .line 314
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 315
    iget-object v0, p0, Lmhl;->a:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmhl;->b:Landroid/content/Context;

    .line 316
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 317
    iget-object v0, p0, Lmhl;->a:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmhl;->b:Landroid/content/Context;

    .line 318
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 319
    return-void
.end method
