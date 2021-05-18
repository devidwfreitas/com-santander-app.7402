.class public Llri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertDialog;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Llri;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iput-object p2, p0, Llri;->a:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const v2, 0x7f0e0019

    .line 553
    iget-object v0, p0, Llri;->a:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Llri;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    .line 554
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 555
    iget-object v0, p0, Llri;->a:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Llri;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    .line 556
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 557
    iget-object v0, p0, Llri;->a:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Llri;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    .line 558
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 559
    return-void
.end method
