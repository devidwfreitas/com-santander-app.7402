.class public abstract Lhmc;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnau;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f100249

    invoke-virtual {p0, v0}, Lhmc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lhxl;)V
    .locals 6

    .prologue
    .line 29
    invoke-static {}, Lhnj;->i()V

    .line 30
    const v0, 0x7f090aa9

    invoke-virtual {p0, v0}, Lhmc;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f09075c

    .line 31
    invoke-virtual {p0, v0}, Lhmc;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f090be7

    .line 32
    invoke-virtual {p0, v0}, Lhmc;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0907d1

    .line 33
    invoke-virtual {p0, v0}, Lhmc;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lhmd;

    invoke-direct {v5, p0, p1}, Lhmd;-><init>(Lhmc;Lhxl;)V

    move-object v0, p0

    .line 30
    invoke-static/range {v0 .. v5}, Lhys;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 49
    return-void
.end method

.method public b(Lhxl;)V
    .locals 7

    .prologue
    const v6, 0x7f100249

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0, v6}, Lhmc;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 53
    if-nez v3, :cond_0

    .line 64
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v4

    invoke-interface {p1}, Lhxl;->a()I

    move-result v0

    const/16 v5, 0xb

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lmiq;->f(Z)V

    .line 57
    new-instance v0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 58
    invoke-virtual {v0, v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 59
    invoke-virtual {p0}, Lhmc;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v6, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    .line 61
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 63
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 56
    goto :goto_1
.end method

.method public c(Lhxl;)V
    .locals 0

    .prologue
    .line 74
    invoke-static {p0, p1}, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->a(Landroid/content/Context;Lhxl;)V

    .line 75
    return-void
.end method
