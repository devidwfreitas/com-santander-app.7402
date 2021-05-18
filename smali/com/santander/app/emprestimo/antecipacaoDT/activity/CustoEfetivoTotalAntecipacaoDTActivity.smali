.class public Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;
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

.field private w:Lhix;

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

.field private y:Lhje;


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
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "simularAntecipacaoRequest"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhje;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->y:Lhje;

    .line 66
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listaCET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->b:Ljava/util/List;

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listaCustoCET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->c:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "custoEfetivoTotalDTModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhix;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->w:Lhix;

    .line 70
    const v0, 0x7f100694

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->a:Landroid/widget/ListView;

    .line 72
    const v0, 0x7f10068c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->f:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f10068e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->g:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f100697

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->e:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->e:Landroid/widget/Button;

    new-instance v1, Lhhv;

    invoke-direct {v1, p0}, Lhhv;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f100696

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->d:Landroid/widget/CheckBox;

    .line 88
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->d:Landroid/widget/CheckBox;

    new-instance v1, Lhhw;

    invoke-direct {v1, p0}, Lhhw;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->d()V

    .line 97
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 101
    new-instance v0, Lgky;

    const-string v1, "Titular: "

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgky;->a(Z)V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->x:Ljava/util/ArrayList;

    .line 105
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Lgky;

    const-string v1, "Conta: "

    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    .line 111
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

    .line 112
    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->e()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->e:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lhir;

    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->b:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lhir;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 121
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->f:Landroid/widget/TextView;

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->g:Landroid/widget/TextView;

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->w:Lhix;

    invoke-virtual {v1}, Lhix;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const-string v1, "listaCustoCET"

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 135
    const-string v1, "simularAntecipacaoRequest"

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->y:Lhje;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    .line 146
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 147
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 148
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 150
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 151
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 156
    const-string v3, "Sim"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v4, Lhhx;

    invoke-direct {v4, p0, v1}, Lhhx;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;Landroid/app/Dialog;)V

    .line 166
    const-string v0, "N\u00e3o"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v5, Lhhy;

    invoke-direct {v5, p0, v1}, Lhhy;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;Landroid/app/Dialog;)V

    .line 173
    const v0, 0x7f090aa6

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    const v0, 0x7f090759

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->getString(I)Ljava/lang/String;

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
    .line 141
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->f()V

    .line 142
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f040141

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->setContentView(I)V

    .line 56
    const v0, 0x7f090a96

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->c(I)V

    .line 58
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->a()V

    .line 59
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->c()V

    .line 61
    return-void
.end method
