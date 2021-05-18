.class public Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 48
    const v0, 0x7f100d31

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;->a:Landroid/widget/RelativeLayout;

    .line 49
    const v0, 0x7f100d35

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;->b:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Lkex;

    invoke-direct {v1, p0}, Lkex;-><init>(Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lkey;

    invoke-direct {v1, p0}, Lkey;-><init>(Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 74
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;->finish()V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 41
    const v1, 0x7f090a9a

    invoke-virtual {p0, v1}, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 42
    const v0, 0x7f04038e

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;->a()V

    .line 44
    return-void
.end method
