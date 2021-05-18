.class public Lfxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/boasvindas/BoasVindasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/boasvindas/BoasVindasActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lfxc;->a:Lcom/santander/app/boasvindas/BoasVindasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lfxc;->a:Lcom/santander/app/boasvindas/BoasVindasActivity;

    invoke-virtual {v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->onBackPressed()V

    .line 99
    return-void
.end method
