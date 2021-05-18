.class public Lfxd;
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
    .line 102
    iput-object p1, p0, Lfxd;->a:Lcom/santander/app/boasvindas/BoasVindasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lfxd;->a:Lcom/santander/app/boasvindas/BoasVindasActivity;

    invoke-static {v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->a(Lcom/santander/app/boasvindas/BoasVindasActivity;)I

    .line 106
    iget-object v0, p0, Lfxd;->a:Lcom/santander/app/boasvindas/BoasVindasActivity;

    invoke-static {v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->b(Lcom/santander/app/boasvindas/BoasVindasActivity;)I

    move-result v0

    invoke-static {}, Lfxf;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lfxd;->a:Lcom/santander/app/boasvindas/BoasVindasActivity;

    invoke-static {v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->c(Lcom/santander/app/boasvindas/BoasVindasActivity;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lfxd;->a:Lcom/santander/app/boasvindas/BoasVindasActivity;

    invoke-static {v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->b(Lcom/santander/app/boasvindas/BoasVindasActivity;)I

    move-result v0

    invoke-static {v0}, Lfwy;->b(I)V

    .line 111
    iget-object v0, p0, Lfxd;->a:Lcom/santander/app/boasvindas/BoasVindasActivity;

    invoke-static {v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->d(Lcom/santander/app/boasvindas/BoasVindasActivity;)V

    .line 112
    iget-object v0, p0, Lfxd;->a:Lcom/santander/app/boasvindas/BoasVindasActivity;

    invoke-static {v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->b(Lcom/santander/app/boasvindas/BoasVindasActivity;)I

    move-result v0

    invoke-static {}, Lfxf;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lfxd;->a:Lcom/santander/app/boasvindas/BoasVindasActivity;

    invoke-static {v0}, Lcom/santander/app/boasvindas/BoasVindasActivity;->e(Lcom/santander/app/boasvindas/BoasVindasActivity;)V

    goto :goto_0
.end method
