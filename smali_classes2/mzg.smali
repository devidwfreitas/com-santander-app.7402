.class final Lmzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lmzg;->a:I

    iput-object p2, p0, Lmzg;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lmzg;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 135
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lmzg;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
