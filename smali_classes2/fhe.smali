.class public Lfhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/ContaMovementActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/ContaMovementActivity;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lfhe;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 462
    const v0, 0x7f100ffb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 463
    const v1, 0x7f100fc2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 464
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 465
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 466
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 469
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
