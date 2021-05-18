.class public Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/ImageButton;

.field private y:Lhkm;

.field private z:Lhkp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 42
    const-string v0, "SimulacaoAntecipacaoIRPasso2Activity"

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "simularAntecipacaoIR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhkm;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    .line 73
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "simularAntecipacaoIRRequest"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhkp;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->z:Lhkp;

    .line 75
    const v0, 0x7f10087e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->c:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f10087f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->d:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f100895

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->e:Landroid/widget/ListView;

    .line 79
    const v0, 0x7f100883

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->f:Landroid/widget/ListView;

    .line 80
    const v0, 0x7f100898

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->g:Landroid/widget/Button;

    .line 81
    const v0, 0x7f100899

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->w:Landroid/widget/Button;

    .line 82
    const v0, 0x7f100897

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->x:Landroid/widget/ImageButton;

    .line 85
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->x:Landroid/widget/ImageButton;

    new-instance v1, Lhjr;

    invoke-direct {v1, p0}, Lhjr;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->w:Landroid/widget/Button;

    new-instance v1, Lhjs;

    invoke-direct {v1, p0}, Lhjs;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->g:Landroid/widget/Button;

    new-instance v1, Lhjt;

    invoke-direct {v1, p0}, Lhjt;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->c()V

    .line 122
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->d:Landroid/widget/TextView;

    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Lgky;

    const-string v1, "Vencimento da 1\u00ba Parcela (juros)"

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->b()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;)Lhkp;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->z:Lhkp;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->d()Ljava/util/List;

    move-result-object v0

    .line 132
    new-instance v1, Lhkf;

    invoke-direct {v1, p0, v0}, Lhkf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 133
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 135
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->e:Landroid/widget/ListView;

    invoke-static {v2}, Lgpt;->a(Landroid/widget/ListView;)Z

    .line 136
    invoke-virtual {v1}, Lhkf;->notifyDataSetChanged()V

    .line 137
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->e:Landroid/widget/ListView;

    invoke-static {v1}, Lgpt;->a(Landroid/widget/ListView;)Z

    .line 140
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->A:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->A:Ljava/util/ArrayList;

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->e()Ljava/util/List;

    move-result-object v0

    .line 147
    new-instance v1, Lhke;

    invoke-direct {v1, p0, v0}, Lhke;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 148
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->f:Landroid/widget/ListView;

    invoke-static {v0}, Lgpt;->a(Landroid/widget/ListView;)Z

    .line 151
    invoke-virtual {v1}, Lhke;->notifyDataSetChanged()V

    .line 152
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->f:Landroid/widget/ListView;

    invoke-static {v0}, Lgpt;->a(Landroid/widget/ListView;)Z

    .line 153
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->A:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 157
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance v1, Lgky;

    const-string v2, "Valor"

    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lgky;

    const-string v2, "Juros Mensal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v4}, Lhkm;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Lgky;

    const-string v2, "Juros Anual"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v4}, Lhkm;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lgky;

    const-string v2, "CET - Mensal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v4}, Lhkm;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v1, Lgky;

    const-string v2, "CET - Anual"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v4}, Lhkm;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Lgky;

    const-string v2, "IOF Total do Per\u00edodo"

    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v5}, Lgky;->b(Z)V

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v1, Lgky;

    const-string v2, "Total com Encargos"

    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Lgky;

    const-string v2, "Vencimento da Opera\u00e7\u00e3o"

    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1, v5}, Lgky;->b(Z)V

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-object v0
.end method

.method private e()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgkx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->v()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->F()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->P()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v2, Lgkx;

    invoke-direct {v2}, Lgkx;-><init>()V

    .line 199
    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/lang/String;)V

    .line 200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 201
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Principal:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->F()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Juros:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->v()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Total:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->P()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->w()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->G()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->Q()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 208
    new-instance v2, Lgkx;

    invoke-direct {v2}, Lgkx;-><init>()V

    .line 209
    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/lang/String;)V

    .line 210
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 211
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Principal:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->G()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Juros:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->w()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Total:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->Q()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->x()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->H()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->R()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 218
    new-instance v2, Lgkx;

    invoke-direct {v2}, Lgkx;-><init>()V

    .line 219
    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/lang/String;)V

    .line 220
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 221
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Principal:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->H()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Juros:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->x()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Total:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->R()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->y()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->I()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->S()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 228
    new-instance v2, Lgkx;

    invoke-direct {v2}, Lgkx;-><init>()V

    .line 229
    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/lang/String;)V

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 231
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Principal:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->I()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Juros:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->y()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Total:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->S()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_3
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->z()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->J()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->T()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 238
    new-instance v2, Lgkx;

    invoke-direct {v2}, Lgkx;-><init>()V

    .line 239
    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/lang/String;)V

    .line 240
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 241
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Principal:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->J()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Juros:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->z()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Total:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->T()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_4
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->A()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->K()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->U()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 248
    new-instance v2, Lgkx;

    invoke-direct {v2}, Lgkx;-><init>()V

    .line 249
    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/lang/String;)V

    .line 250
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 251
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Principal:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->K()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Juros:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->A()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Total:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->U()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_5
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->B()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->L()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->V()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 258
    new-instance v2, Lgkx;

    invoke-direct {v2}, Lgkx;-><init>()V

    .line 259
    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/lang/String;)V

    .line 260
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 261
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Principal:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->L()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Juros:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->B()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Total:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->V()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_6
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->C()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->M()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->W()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 268
    new-instance v2, Lgkx;

    invoke-direct {v2}, Lgkx;-><init>()V

    .line 269
    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/lang/String;)V

    .line 270
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 271
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Principal:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->M()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Juros:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->C()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Total:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->W()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_7
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->D()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->N()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->X()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 278
    new-instance v2, Lgkx;

    invoke-direct {v2}, Lgkx;-><init>()V

    .line 279
    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/lang/String;)V

    .line 280
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 281
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Principal:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->N()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Juros:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->D()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lgky;

    const-string v5, "Total:"

    iget-object v6, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v6}, Lhkm;->X()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_8
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->E()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->O()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v2}, Lhkm;->Y()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 288
    new-instance v2, Lgkx;

    invoke-direct {v2}, Lgkx;-><init>()V

    .line 289
    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v3}, Lhkm;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lgkx;->a(Ljava/lang/String;)V

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Lgkx;->a(Ljava/util/ArrayList;)V

    .line 291
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Lgky;

    const-string v4, "Principal:"

    iget-object v5, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v5}, Lhkm;->O()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Lgky;

    const-string v4, "Juros:"

    iget-object v5, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v5}, Lhkm;->E()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v2}, Lgkx;->c()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Lgky;

    const-string v4, "Total:"

    iget-object v5, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->y:Lhkm;

    invoke-virtual {v5}, Lhkm;->Y()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_9
    :goto_0
    return-object v0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f0401bb

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->setContentView(I)V

    .line 63
    const v0, 0x7f090a97

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->c(I)V

    .line 65
    iput-object p0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->b:Landroid/app/Activity;

    .line 67
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->a()V

    .line 68
    return-void
.end method
