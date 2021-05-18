.class public Lljf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertDialog;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Landroid/support/v7/app/AlertDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lljf;->c:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iput-object p2, p0, Lljf;->a:Landroid/support/v7/app/AlertDialog;

    iput-object p3, p0, Lljf;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const v2, 0x7f0e0019

    .line 394
    iget-object v0, p0, Lljf;->a:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lljf;->b:Landroid/content/Context;

    .line 395
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 396
    iget-object v0, p0, Lljf;->a:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lljf;->b:Landroid/content/Context;

    .line 397
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 398
    iget-object v0, p0, Lljf;->a:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lljf;->b:Landroid/content/Context;

    .line 399
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 400
    return-void
.end method
