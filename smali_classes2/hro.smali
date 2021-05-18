.class Lhro;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lhrm;


# direct methods
.method constructor <init>(Lhrm;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lhro;->a:Lhrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 140
    check-cast p1, Landroid/support/v7/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lhro;->a:Lhrm;

    .line 141
    invoke-static {v1}, Lhrm;->a(Lhrm;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 142
    return-void
.end method
