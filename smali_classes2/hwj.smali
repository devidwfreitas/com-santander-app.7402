.class Lhwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lhwc;


# direct methods
.method constructor <init>(Lhwc;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lhwj;->b:Lhwc;

    iput-object p2, p0, Lhwj;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const v2, 0x7f0e0019

    .line 239
    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lhwj;->a:Landroid/content/Context;

    .line 240
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 241
    check-cast p1, Landroid/support/v7/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lhwj;->a:Landroid/content/Context;

    .line 242
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 243
    return-void
.end method
