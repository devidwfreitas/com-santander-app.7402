.class public Lcom/santander/app/CadastramentoValidacionActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnau;


# instance fields
.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private c:Landroid/app/Activity;

.field private d:Lfhb;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 36
    const-string v0, "CadastramentoValidacionActivity"

    iput-object v0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->b:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->a:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/CadastramentoValidacionActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/CadastramentoValidacionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/santander/app/CadastramentoValidacionActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/CadastramentoValidacionActivity;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->f:I

    return v0
.end method

.method public static synthetic c(Lcom/santander/app/CadastramentoValidacionActivity;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->e:I

    return v0
.end method

.method public static synthetic d(Lcom/santander/app/CadastramentoValidacionActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lfhb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfhb;-><init>(Lcom/santander/app/CadastramentoValidacionActivity;Lfha;)V

    iput-object v0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->d:Lfhb;

    .line 90
    iget-object v0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->d:Lfhb;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfhb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f100544

    const/4 v2, 0x0

    .line 48
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f0400f7

    invoke-virtual {p0, v0}, Lcom/santander/app/CadastramentoValidacionActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/santander/app/CadastramentoValidacionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 55
    const v1, 0x7f09043a

    invoke-virtual {p0, v1}, Lcom/santander/app/CadastramentoValidacionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/santander/app/CadastramentoValidacionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    const-string v1, "strSeqEnd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/santander/app/CadastramentoValidacionActivity;->e:I

    .line 60
    const-string v1, "numCartao"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->f:I

    .line 63
    :cond_0
    iput-object p0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->c:Landroid/app/Activity;

    .line 65
    iget-object v0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/CadastramentoValidacionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 69
    if-nez v1, :cond_1

    .line 70
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 71
    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 72
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 74
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 75
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    new-instance v0, Lfhb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfhb;-><init>(Lcom/santander/app/CadastramentoValidacionActivity;Lfha;)V

    iput-object v0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->d:Lfhb;

    .line 80
    iget-object v0, p0, Lcom/santander/app/CadastramentoValidacionActivity;->d:Lfhb;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfhb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
