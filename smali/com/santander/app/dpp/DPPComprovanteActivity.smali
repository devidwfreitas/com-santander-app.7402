.class public Lcom/santander/app/dpp/DPPComprovanteActivity;
.super Lgoj;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Lheq;

.field private G:I

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/ImageView;

.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/ListView;

.field private c:Lfqk;

.field private f:Lcom/santander/app/dpp/DPPComprovanteActivity;

.field private g:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 39
    const-string v0, "DPPComprovanteActivity"

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/dpp/DPPComprovanteActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->w:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 190
    const-string v0, "[R$,.]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 192
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R$ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/dpp/DPPComprovanteActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 136
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v1}, Lheq;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v1}, Lheq;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnai;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v0}, Lheq;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->z:Landroid/widget/TextView;

    const-string v1, "Nova conta"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v1}, Lheq;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v2}, Lheq;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v1}, Lheq;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/santander/app/dpp/DPPComprovanteActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v1}, Lheq;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v1}, Lheq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v0}, Lheq;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 156
    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->D:Landroid/widget/TextView;

    const-string v1, "Indeterminado"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_1
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v1}, Lheq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v1}, Lheq;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->G:I

    if-ne v0, v3, :cond_0

    .line 171
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->H:Landroid/widget/TextView;

    const-string v1, "Exclus\u00e3o de Aplica\u00e7\u00e3o Programada em Poupan\u00e7a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v1}, Lheq;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v1}, Lheq;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v1}, Lheq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v1}, Lheq;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    invoke-virtual {v2}, Lheq;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->D:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public static synthetic c(Lcom/santander/app/dpp/DPPComprovanteActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->L:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/dpp/DPPComprovanteActivity;)Lcom/santander/app/dpp/DPPComprovanteActivity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->f:Lcom/santander/app/dpp/DPPComprovanteActivity;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const v0, 0x7f10052e

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f0401a6

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->setContentView(I)V

    .line 67
    const-string v0, "Poupanca"

    invoke-static {v0}, Lfrq;->a(Ljava/lang/String;)V

    .line 69
    iput-object p0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->f:Lcom/santander/app/dpp/DPPComprovanteActivity;

    .line 70
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02061f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 73
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 77
    const v0, 0x7f1007f4

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->g:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->g:Landroid/widget/Button;

    new-instance v2, Lhdb;

    invoke-direct {v2, p0}, Lhdb;-><init>(Lcom/santander/app/dpp/DPPComprovanteActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f100542

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->w:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->w:Landroid/widget/Button;

    new-instance v2, Lhdc;

    invoke-direct {v2, p0}, Lhdc;-><init>(Lcom/santander/app/dpp/DPPComprovanteActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 110
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->L:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f1007e2

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->x:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f1007e4

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->y:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f1007e6

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->z:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f1007e8

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->A:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f1007ea

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->B:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f1007ec

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->C:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f1007ee

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->D:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f1007f0

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->E:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f1007dc

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->H:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f1007e0

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->I:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 122
    const-string v0, "dpp"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lheq;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->F:Lheq;

    .line 123
    const-string v0, "opcao"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->G:I

    .line 125
    const v0, 0x7f1007f3

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->J:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f100541

    invoke-virtual {p0, v0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/dpp/DPPComprovanteActivity;->K:Landroid/widget/TextView;

    .line 128
    invoke-direct {p0}, Lcom/santander/app/dpp/DPPComprovanteActivity;->b()V

    .line 129
    return-void
.end method
