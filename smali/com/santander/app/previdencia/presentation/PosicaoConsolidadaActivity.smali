.class public Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lkew;


# instance fields
.field private a:Landroid/widget/ExpandableListView;

.field private b:Lkfw;

.field private c:Landroid/app/Dialog;

.field private d:Landroid/app/Dialog;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private w:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f100d15

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->a:Landroid/widget/ExpandableListView;

    .line 68
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->b:Lkfw;

    invoke-interface {v0}, Lkfw;->a()V

    .line 70
    const v0, 0x7f100d19

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->w:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->w:Landroid/widget/Button;

    new-instance v1, Lker;

    invoke-direct {v1, p0}, Lker;-><init>(Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f100d1a

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->g:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->g:Landroid/widget/Button;

    new-instance v1, Lkes;

    invoke-direct {v1, p0}, Lkes;-><init>(Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0b0224

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d:Landroid/app/Dialog;

    .line 87
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d:Landroid/app/Dialog;

    const v1, 0x7f040182

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 88
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 90
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d:Landroid/app/Dialog;

    const v1, 0x7f100770

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->e:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d:Landroid/app/Dialog;

    const v1, 0x7f100771

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->f:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->f:Landroid/widget/Button;

    const v1, 0x7f090199

    invoke-virtual {p0, v1}, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d:Landroid/app/Dialog;

    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lket;

    invoke-direct {v1, p0}, Lket;-><init>(Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d:Landroid/app/Dialog;

    const v1, 0x7f100402

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lkeu;

    invoke-direct {v1, p0}, Lkeu;-><init>(Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->f:Landroid/widget/Button;

    new-instance v1, Lkev;

    invoke-direct {v1, p0}, Lkev;-><init>(Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 149
    const-string v0, "Alerta"

    const/4 v1, 0x1

    const-string v2, "OK"

    invoke-static {p0, v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 150
    return-void
.end method

.method public a(Lkcy;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 121
    new-instance v0, Lkfd;

    invoke-direct {v0, p0, p1}, Lkfd;-><init>(Landroid/content/Context;Lkcy;)V

    .line 122
    iget-object v2, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v2

    move v0, v1

    .line 127
    :goto_0
    if-ge v0, v2, :cond_0

    .line 128
    iget-object v3, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 135
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->c:Landroid/app/Dialog;

    .line 136
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 142
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->c:Landroid/app/Dialog;

    .line 145
    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 154
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 155
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->e:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "Para novas contrata\u00e7\u00f5es fale agora com nossa assessoria especializada. <br/>Escolha sua op\u00e7\u00e3o:"

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d:Landroid/app/Dialog;

    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 166
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 169
    const v0, 0x7f09078a

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d:Landroid/app/Dialog;

    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 172
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 56
    const v1, 0x7f090ab5

    invoke-virtual {p0, v1}, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 58
    const v0, 0x7f040348

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->setContentView(I)V

    .line 60
    new-instance v0, Lkfx;

    invoke-direct {v0, p0}, Lkfx;-><init>(Lkew;)V

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->b:Lkfw;

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->a()V

    .line 63
    return-void
.end method
