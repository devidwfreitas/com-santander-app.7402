.class public Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lkeo;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/app/Activity;

.field private g:Landroid/app/Dialog;

.field private w:Landroid/widget/LinearLayout;

.field private x:Lkfr;

.field private y:Lkdg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->f:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;)Lkdg;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->y:Lkdg;

    return-object v0
.end method


# virtual methods
.method public a()Lkdg;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->y:Lkdg;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    invoke-static {p0, p1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkdi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v1, Lkfc;

    invoke-direct {v1, p1, p0}, Lkfc;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 125
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lkfc;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 126
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2, v3}, Lkfc;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 128
    if-eqz v2, :cond_0

    .line 129
    iget-object v3, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 74
    const v0, 0x7f100b4c

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->a:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f100b4a

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->b:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f100b4e

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->c:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f100b50

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->d:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f100b52

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->e:Landroid/widget/Button;

    .line 79
    const v0, 0x7f100b54

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->w:Landroid/widget/LinearLayout;

    .line 81
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->f()V

    .line 84
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->e()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 94
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->g:Landroid/app/Dialog;

    .line 95
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->g:Landroid/app/Dialog;

    .line 103
    :cond_0
    return-void
.end method

.method e()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lken;

    invoke-direct {v0, p0}, Lken;-><init>(Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;)V

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->y:Lkdg;

    invoke-virtual {v1}, Lkdg;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->y:Lkdg;

    invoke-virtual {v1}, Lkdg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->y:Lkdg;

    invoke-virtual {v1}, Lkdg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->y:Lkdg;

    invoke-virtual {v1}, Lkdg;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v0, Lkfs;

    invoke-direct {v0, p0}, Lkfs;-><init>(Lkeo;)V

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->x:Lkfr;

    .line 146
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iput-object p0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->f:Landroid/app/Activity;

    .line 53
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "detalhePlano"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkdg;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->y:Lkdg;

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 60
    const v1, 0x7f090aa4

    invoke-virtual {p0, v1}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 62
    const v0, 0x7f040165

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/DetalhePosicaoConsolidadaPrevidenciaActivity;->b()V

    .line 65
    return-void
.end method
