.class public Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;
.super Lgoj;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lgac;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 39
    const-string v0, "GerarComprovanteAgendamento"

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;)Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->x:Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 81
    invoke-direct {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->d()V

    .line 82
    const v0, 0x7f1005d6

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->w:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f1005d7

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->Q:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f1005d9

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->C:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f1005db

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->D:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f1005dd

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->E:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f1005df

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->F:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f1005e1

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->G:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f1005e3

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->H:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f1005e5

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->I:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f1005e6

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->O:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f1005e7

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->J:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f1005e9

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->K:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f1005ea

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->P:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f1005eb

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->L:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f1005cd

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->M:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f1005ce

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->N:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f1005ec

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->b:Landroid/widget/LinearLayout;

    .line 99
    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->c:Landroid/widget/LinearLayout;

    .line 100
    const v0, 0x7f1001ad

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->f:Landroid/widget/LinearLayout;

    .line 102
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->g:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->D:Landroid/widget/TextView;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v1}, Lgac;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v1}, Lgac;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->G:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v1}, Lgac;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v1}, Lgac;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v0}, Lgac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->w:Landroid/widget/ImageView;

    const v1, 0x7f020356

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->Q:Landroid/widget/TextView;

    const-string v1, "N\u00e3o foi poss\u00edvel cadastrar d\u00e9bito autom\u00e1tico."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->x:Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    const-string v1, "N\u00e3o foi poss\u00edvel cadastrar d\u00e9bito autom\u00e1tico."

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 123
    :cond_0
    const-string v0, ""

    .line 124
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v0}, Lgac;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    const-string v0, "Sim"

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v0}, Lgac;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0,00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->J:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v2}, Lgac;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_1
    const-string v0, ""

    .line 140
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v0}, Lgac;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    const-string v0, "Sim"

    .line 146
    :goto_2
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v0}, Lgac;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v0}, Lgac;->C()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 150
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->L:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v1}, Lgac;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_1
    :goto_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->N:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v2}, Lgac;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const-string v1, "Pagamentos_Pagamento_CadastroEmDebitoAutomatico_ReferOper"

    iget-object v2, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    invoke-virtual {v2}, Lgac;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->f:Landroid/widget/LinearLayout;

    new-instance v2, Lfzz;

    invoke-direct {v2, p0}, Lfzz;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->c:Landroid/widget/LinearLayout;

    new-instance v2, Lgaa;

    invoke-direct {v2, p0, v0}, Lgaa;-><init>(Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->a()V

    .line 191
    return-void

    .line 127
    :cond_2
    const-string v0, "N\u00e3o"

    goto/16 :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 143
    :cond_4
    const-string v0, "N\u00e3o"

    goto :goto_2

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private d()V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 196
    const-string v1, "EXTRADADOS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgac;

    iput-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->B:Lgac;

    .line 197
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 213
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f040125

    invoke-virtual {p0, v0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 74
    const-string v1, "Detalhe Agendamento"

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 75
    iput-object p0, p0, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->x:Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;

    .line 76
    invoke-direct {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->c()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lgoj;->onResume()V

    .line 208
    invoke-virtual {p0}, Lcom/santander/app/cadastrodebitoautomatico/activity/ComprovanteDebitoAutomaticoActivity;->a()V

    .line 209
    return-void
.end method
