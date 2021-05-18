.class public Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/EditText;

.field private C:Landroid/app/Activity;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lhiz;

.field private F:Lhiw;

.field private G:Landroid/app/DatePickerDialog;

.field private H:Landroid/app/Dialog;

.field private I:Ljava/lang/String;

.field private J:Lguj;

.field private K:Landroid/widget/TextView;

.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/RadioButton;

.field private g:Landroid/widget/EditText;

.field private w:Landroid/widget/ImageButton;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 54
    const-string v0, "SimulacaoAntecipacaoDTPasso1Activity"

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->a:Ljava/lang/String;

    .line 80
    const-string v0, "1"

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->I:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->C:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->H:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;Lhiw;)Lhiw;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->F:Lhiw;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->I:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->J:Lguj;

    .line 103
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->b()V

    .line 105
    const v0, 0x7f10086c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->b:Landroid/widget/RelativeLayout;

    .line 106
    const v0, 0x7f10087b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->y:Landroid/widget/RelativeLayout;

    .line 108
    const v0, 0x7f10086d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->c:Landroid/widget/ImageButton;

    .line 109
    const v0, 0x7f100876

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->d:Landroid/widget/ImageButton;

    .line 111
    const v0, 0x7f100873

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->e:Landroid/widget/RadioButton;

    .line 112
    const v0, 0x7f100874

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->f:Landroid/widget/RadioButton;

    .line 113
    const v0, 0x7f100879

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->g:Landroid/widget/EditText;

    .line 114
    const v0, 0x7f10087a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->w:Landroid/widget/ImageButton;

    .line 115
    const v0, 0x7f10087c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->x:Landroid/widget/Button;

    .line 117
    const v0, 0x7f100b7c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->z:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f100b7f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->A:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f100b82

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->B:Landroid/widget/EditText;

    .line 121
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->J:Lguj;

    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->B:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 122
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->B:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->J:Lguj;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    const v0, 0x7f10086b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->K:Landroid/widget/TextView;

    .line 126
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->c()V

    .line 128
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->d()V

    .line 130
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->c:Landroid/widget/ImageButton;

    new-instance v1, Lhhz;

    invoke-direct {v1, p0}, Lhhz;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->d:Landroid/widget/ImageButton;

    new-instance v1, Lhia;

    invoke-direct {v1, p0}, Lhia;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->w:Landroid/widget/ImageButton;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->w:Landroid/widget/ImageButton;

    new-instance v1, Lhib;

    invoke-direct {v1, p0}, Lhib;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->e:Landroid/widget/RadioButton;

    new-instance v1, Lhic;

    invoke-direct {v1, p0}, Lhic;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->f:Landroid/widget/RadioButton;

    new-instance v1, Lhid;

    invoke-direct {v1, p0}, Lhid;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->x:Landroid/widget/Button;

    new-instance v1, Lhie;

    invoke-direct {v1, p0}, Lhie;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 252
    new-instance v0, Lhiw;

    invoke-direct {v0}, Lhiw;-><init>()V

    .line 253
    new-instance v0, Lhig;

    invoke-direct {v0, p0, p1, p2}, Lhig;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lhiz;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->E:Lhiz;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lhig;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/app/DatePickerDialog;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->G:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    invoke-virtual {v0}, Lhxo;->e()Lhxk;

    move-result-object v0

    .line 203
    new-instance v1, Lhiz;

    invoke-direct {v1}, Lhiz;-><init>()V

    iput-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->E:Lhiz;

    .line 204
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->E:Lhiz;

    invoke-virtual {v0}, Lhxk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhiz;->a(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->E:Lhiz;

    invoke-virtual {v0}, Lhxk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhiz;->c(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->E:Lhiz;

    invoke-virtual {v0}, Lhxk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhiz;->b(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->E:Lhiz;

    invoke-virtual {v0}, Lhxk;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhiz;->d(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Lhiz;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->E:Lhiz;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->K:Landroid/widget/TextView;

    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 217
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 219
    :try_start_0
    new-instance v0, Ljava/util/Date;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->E:Lhiz;

    invoke-virtual {v2}, Lhiz;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lhif;

    invoke-direct {v2, p0}, Lhif;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)V

    .line 241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->G:Landroid/app/DatePickerDialog;

    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 243
    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->add(II)V

    .line 245
    iget-object v1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->G:Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 246
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->G:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 247
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->G:Landroid/app/DatePickerDialog;

    const-string v1, "Selecione a Data"

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 248
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string v1, "ANTECIPACAO_DT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Erro ao realizar parser da Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->I:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 8

    .prologue
    .line 263
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->F:Lhiw;

    invoke-virtual {v0}, Lhiw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 264
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->F:Lhiw;

    invoke-virtual {v0}, Lhiw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 266
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->B:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->B:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->B:Landroid/widget/EditText;

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

    .line 271
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

    .line 269
    :cond_1
    new-instance v0, Ljava/lang/Double;

    const-string v3, "0.00"

    invoke-direct {v0, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static synthetic f(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->w:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->y:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->e()Z

    move-result v0

    return v0
.end method

.method public static synthetic i(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->H:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Lhiw;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->F:Lhiw;

    return-object v0
.end method

.method public static synthetic k(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic l(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic m(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->B:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f0401b8

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->setContentView(I)V

    .line 92
    const v0, 0x7f090a96

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->c(I)V

    .line 94
    iput-object p0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->C:Landroid/app/Activity;

    .line 96
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->a()V

    .line 98
    return-void
.end method
