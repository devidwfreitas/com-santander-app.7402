.class public Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgkx;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Lhki;

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lhkp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "simularAntecipacaoRequest"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhkp;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->y:Lhkp;

    .line 66
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listaCET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->b:Ljava/util/List;

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listaCustoCET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->c:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "custoEfetivoTotalIRModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhki;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->w:Lhki;

    .line 70
    const v0, 0x7f100694

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->a:Landroid/widget/ListView;

    .line 72
    const v0, 0x7f10068c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->f:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f10068e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->g:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f100697

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->e:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->e:Landroid/widget/Button;

    new-instance v1, Lhji;

    invoke-direct {v1, p0}, Lhji;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f100696

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->d:Landroid/widget/CheckBox;

    .line 88
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->d:Landroid/widget/CheckBox;

    new-instance v1, Lhjj;

    invoke-direct {v1, p0}, Lhjj;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->d()V

    .line 97
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->x:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Lgky;

    const-string v1, "Dados do Emprestimo:"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Lgky;

    const-string v1, "Titular: "

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgky;->a(Z)V

    .line 108
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lgky;

    const-string v1, "Conta: "

    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lgky;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgky;->a(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->e()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->e:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lhir;

    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->b:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lhir;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 123
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->f:Landroid/widget/TextView;

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->g:Landroid/widget/TextView;

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->w:Lhki;

    invoke-virtual {v1}, Lhki;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const-string v1, "listaCustoCET"

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    const-string v1, "simularAntecipacaoRequest"

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->y:Lhkp;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    .line 147
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 148
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 149
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 151
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 152
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 157
    const-string v3, "Sim"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v4, Lhjk;

    invoke-direct {v4, p0, v1}, Lhjk;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;Landroid/app/Dialog;)V

    .line 166
    const-string v0, "N\u00e3o"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v5, Lhjl;

    invoke-direct {v5, p0, v1}, Lhjl;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;Landroid/app/Dialog;)V

    .line 173
    const v0, 0x7f090aa7

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    const v0, 0x7f09075a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    .line 176
    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 178
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->f()V

    .line 143
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f040142

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->setContentView(I)V

    .line 56
    const v0, 0x7f090a97

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->c(I)V

    .line 58
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->a()V

    .line 59
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->c()V

    .line 61
    return-void
.end method
