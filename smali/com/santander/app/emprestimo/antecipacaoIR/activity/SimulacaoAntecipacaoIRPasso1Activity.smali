.class public Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private A:Landroid/app/Dialog;

.field private B:Lguj;

.field private C:Lguj;

.field private D:Landroid/widget/TextView;

.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/app/Activity;

.field private y:Lhkk;

.field private z:Lhkh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 46
    const-string v0, "SimulacaoAntecipacaoIRPasso1Activity"

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->A:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;Lhkh;)Lhkh;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->z:Lhkh;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->B:Lguj;

    .line 85
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->C:Lguj;

    .line 87
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->b()V

    .line 89
    const v0, 0x7f10088e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->c:Landroid/widget/RelativeLayout;

    .line 91
    const v0, 0x7f100890

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->b:Landroid/widget/Button;

    .line 93
    const v0, 0x7f10088d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->d:Landroid/widget/EditText;

    .line 94
    const v0, 0x7f100b7c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->e:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f100b7f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->f:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f100b85

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->g:Landroid/widget/EditText;

    .line 97
    const v0, 0x7f100b86

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->w:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->w:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09070f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->y:Lhkk;

    invoke-virtual {v2}, Lhkk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->C:Lguj;

    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 102
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->C:Lguj;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->B:Lguj;

    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->B:Lguj;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    const v0, 0x7f10086b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->D:Landroid/widget/TextView;

    .line 109
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->c()V

    .line 111
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->d:Landroid/widget/EditText;

    new-instance v1, Lhjm;

    invoke-direct {v1, p0}, Lhjm;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 121
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->d:Landroid/widget/EditText;

    new-instance v1, Lhjn;

    invoke-direct {v1, p0}, Lhjn;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 135
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->b:Landroid/widget/Button;

    new-instance v1, Lhjo;

    invoke-direct {v1, p0}, Lhjo;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    invoke-virtual {v0}, Lhxo;->f()Lhxk;

    move-result-object v0

    .line 153
    new-instance v1, Lhkk;

    invoke-direct {v1}, Lhkk;-><init>()V

    iput-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->y:Lhkk;

    .line 154
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->y:Lhkk;

    invoke-virtual {v0}, Lhxk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhkk;->a(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->y:Lhkk;

    invoke-virtual {v0}, Lhxk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhkk;->c(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->y:Lhkk;

    invoke-virtual {v0}, Lhxk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhkk;->b(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->y:Lhkk;

    invoke-virtual {v0}, Lhxk;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhkk;->d(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->D:Landroid/widget/TextView;

    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->x:Landroid/app/Activity;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 170
    new-instance v0, Lhjp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhjp;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;Lhjm;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhkk;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->y:Lhkk;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lhjp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 171
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->d()V

    return-void
.end method

.method private e()Z
    .locals 8

    .prologue
    .line 174
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->z:Lhkh;

    invoke-virtual {v0}, Lhkh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 175
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->z:Lhkh;

    invoke-virtual {v0}, Lhkh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 177
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    const-string v4, "."

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 180
    const-string v3, "CreditoFinanciamento_AnteciparIR_ValorAContratar_Acao"

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lfrq;->a(Ljava/lang/String;D)V

    .line 184
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/Double;

    const-string v3, "0.00"

    invoke-direct {v0, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static synthetic f(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Z
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->e()Z

    move-result v0

    return v0
.end method

.method public static synthetic g(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->A:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Lhkh;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->z:Lhkh;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic k(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic l(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Lhkk;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->y:Lhkk;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f0401ba

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->setContentView(I)V

    .line 75
    const v0, 0x7f090a97

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->c(I)V

    .line 77
    iput-object p0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->x:Landroid/app/Activity;

    .line 79
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->a()V

    .line 81
    return-void
.end method
