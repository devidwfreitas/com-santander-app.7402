.class public Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lhqy;


# instance fields
.field private A:Landroid/support/v7/widget/AppCompatSpinner;

.field private B:Landroid/support/v7/widget/AppCompatSpinner;

.field private C:Landroid/widget/FrameLayout;

.field private D:Landroid/support/v7/widget/AppCompatSpinner;

.field private E:Landroid/widget/FrameLayout;

.field private F:Landroid/support/v7/widget/AppCompatSpinner;

.field private G:Lcom/santander/app/components/view/CheckCardGroup;

.field private H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

.field private I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

.field private J:Lcom/santander/app/components/view/SantanderButtonView;

.field private K:Lcom/santander/app/components/view/SantanderTextView;

.field private L:Lcom/santander/app/components/view/SantanderTextView;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Landroid/view/View;

.field private P:Landroid/view/View;

.field private Q:Landroid/view/View;

.field private R:Lhru;

.field private S:Landroid/app/Dialog;

.field private a:Landroid/widget/FrameLayout;

.field private b:Landroid/support/v4/widget/NestedScrollView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/santander/app/components/view/SantanderTextView;

.field private w:Landroid/support/design/widget/TextInputLayout;

.field private x:Lcom/santander/app/components/view/SantanderEditText;

.field private y:Landroid/widget/FrameLayout;

.field private z:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)Lhru;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->R:Lhru;

    return-object v0
.end method

.method private ae()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 122
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->a:Landroid/widget/FrameLayout;

    .line 123
    const v0, 0x7f100232

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->b:Landroid/support/v4/widget/NestedScrollView;

    .line 124
    const v0, 0x7f100b09

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->c:Landroid/widget/LinearLayout;

    .line 125
    const v0, 0x7f100b0a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->d:Landroid/widget/LinearLayout;

    .line 126
    const v0, 0x7f100233

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->e:Landroid/widget/LinearLayout;

    .line 127
    const v0, 0x7f10023a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->f:Landroid/widget/LinearLayout;

    .line 128
    const v0, 0x7f100234

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->g:Lcom/santander/app/components/view/SantanderTextView;

    .line 129
    const v0, 0x7f100237

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->w:Landroid/support/design/widget/TextInputLayout;

    .line 130
    const v0, 0x7f100238

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderEditText;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->x:Lcom/santander/app/components/view/SantanderEditText;

    .line 131
    const v0, 0x7f100235

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->z:Landroid/widget/FrameLayout;

    .line 132
    const v0, 0x7f100239

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->y:Landroid/widget/FrameLayout;

    .line 133
    const v0, 0x7f100236

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->A:Landroid/support/v7/widget/AppCompatSpinner;

    .line 134
    const v0, 0x7f1000e4

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->B:Landroid/support/v7/widget/AppCompatSpinner;

    .line 135
    const v0, 0x7f10023f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->C:Landroid/widget/FrameLayout;

    .line 136
    const v0, 0x7f1000e3

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->D:Landroid/support/v7/widget/AppCompatSpinner;

    .line 137
    const v0, 0x7f100240

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->E:Landroid/widget/FrameLayout;

    .line 138
    const v0, 0x7f100241

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->F:Landroid/support/v7/widget/AppCompatSpinner;

    .line 139
    const v0, 0x7f100206

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->J:Lcom/santander/app/components/view/SantanderButtonView;

    .line 140
    const v0, 0x7f10023b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->K:Lcom/santander/app/components/view/SantanderTextView;

    .line 141
    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->L:Lcom/santander/app/components/view/SantanderTextView;

    .line 142
    const v0, 0x7f100242

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->M:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    const v0, 0x7f10023c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/CheckCardGroup;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->G:Lcom/santander/app/components/view/CheckCardGroup;

    .line 147
    const v0, 0x7f10023d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    .line 148
    const v0, 0x7f10023e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    .line 149
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    new-instance v1, Lhqp;

    invoke-direct {v1, p0}, Lhqp;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->ag()V

    .line 157
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->A:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->B:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->D:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->F:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->J:Lcom/santander/app/components/view/SantanderButtonView;

    new-instance v1, Lhqq;

    invoke-direct {v1, p0}, Lhqq;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->G:Lcom/santander/app/components/view/CheckCardGroup;

    new-instance v1, Lhqr;

    invoke-direct {v1, p0}, Lhqr;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardGroup;->setOnCheckedChangeListener(Lgor;)V

    .line 184
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->af()V

    .line 185
    return-void
.end method

.method private af()V
    .locals 2

    .prologue
    .line 188
    const v0, 0x7f1011f8

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->N:Landroid/view/View;

    .line 189
    const v0, 0x7f1011f9

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->O:Landroid/view/View;

    .line 190
    const v0, 0x7f1011fa

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->P:Landroid/view/View;

    .line 191
    const v0, 0x7f1011fb

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->Q:Landroid/view/View;

    .line 193
    const v0, 0x7f100230

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lhqs;

    invoke-direct {v1, p0}, Lhqs;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f100231

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lhqt;

    invoke-direct {v1, p0}, Lhqt;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    return-void
.end method

.method private ag()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->ah()V

    .line 361
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->ai()V

    .line 362
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->aj()V

    .line 363
    return-void
.end method

.method private ah()V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Lguj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lguj;-><init>(Z)V

    .line 367
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->x:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, v1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 368
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->x:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 369
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->x:Lcom/santander/app/components/view/SantanderEditText;

    new-instance v1, Lhqu;

    invoke-direct {v1, p0}, Lhqu;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 382
    return-void
.end method

.method private ai()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->x:Lcom/santander/app/components/view/SantanderEditText;

    new-instance v1, Lhqv;

    invoke-direct {v1, p0}, Lhqv;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 391
    return-void
.end method

.method private aj()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->x:Lcom/santander/app/components/view/SantanderEditText;

    new-instance v1, Lhqw;

    invoke-direct {v1, p0}, Lhqw;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 404
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->x:Lcom/santander/app/components/view/SantanderEditText;

    new-instance v1, Lhqx;

    invoke-direct {v1, p0}, Lhqx;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 413
    return-void
.end method

.method private ak()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->x:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    const-string v1, "CreditoFinanciamento_Emprestimos_Simulacao_Valor_Acao"

    invoke-static {v0}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->R:Lhru;

    invoke-interface {v1, v0}, Lhru;->a(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private al()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->x:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->clearFocus()V

    .line 565
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lmyt;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 566
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->ak()V

    return-void
.end method

.method public static synthetic d(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->al()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    .line 429
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 431
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->a(Z)V

    .line 495
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->h()V

    .line 496
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->f()V

    .line 497
    return-void
.end method

.method public C()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 506
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->a(Z)V

    .line 507
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->G:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardGroup;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    .line 509
    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->K:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->K:Lcom/santander/app/components/view/SantanderTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public D()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->G:Lcom/santander/app/components/view/CheckCardGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardGroup;->setVisibility(I)V

    .line 519
    return-void
.end method

.method public E()V
    .locals 2

    .prologue
    .line 523
    const v0, 0x7f09043f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->a(Ljava/lang/String;Z)V

    .line 524
    return-void
.end method

.method public F()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->S:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 551
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->S:Landroid/app/Dialog;

    .line 553
    :cond_0
    return-void
.end method

.method public G()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->S:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->S:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->S:Landroid/app/Dialog;

    .line 561
    :cond_0
    return-void
.end method

.method public H()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->setVisibility(I)V

    .line 571
    return-void
.end method

.method public I()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->setVisibility(I)V

    .line 576
    return-void
.end method

.method public J()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->setVisibility(I)V

    .line 581
    return-void
.end method

.method public K()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->setVisibility(I)V

    .line 586
    return-void
.end method

.method public L()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->setChecked(Z)V

    .line 591
    return-void
.end method

.method public M()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->setChecked(Z)V

    .line 596
    return-void
.end method

.method public N()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->setChecked(Z)V

    .line 601
    return-void
.end method

.method public O()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->setChecked(Z)V

    .line 606
    return-void
.end method

.method public P()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->e()V

    .line 611
    return-void
.end method

.method public Q()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->f()V

    .line 616
    return-void
.end method

.method public R()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 620
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(Z)V

    .line 621
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(Z)V

    .line 622
    return-void
.end method

.method public S()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 626
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(Z)V

    .line 627
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    invoke-virtual {v0, v2}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(Z)V

    .line 628
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    invoke-virtual {v0, v2}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->setChecked(Z)V

    .line 629
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->r()V

    .line 630
    return-void
.end method

.method public T()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 634
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(Z)V

    .line 635
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    invoke-virtual {v0, v2}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(Z)V

    .line 636
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    invoke-virtual {v0, v2}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->setChecked(Z)V

    .line 637
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->s()V

    .line 638
    return-void
.end method

.method public U()V
    .locals 2

    .prologue
    .line 642
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 643
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 644
    return-void
.end method

.method public V()Z
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->c()Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->c()Z

    move-result v0

    return v0
.end method

.method public X()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(Z)V

    .line 659
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(Z)V

    .line 660
    return-void
.end method

.method public Y()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(Z)V

    .line 665
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(Z)V

    .line 666
    return-void
.end method

.method public Z()V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->N:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 671
    return-void
.end method

.method public a()Landroid/content/Context;
    .locals 0

    .prologue
    .line 118
    return-object p0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->B:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 485
    return-void
.end method

.method public a(Lhxm;Z)V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->H:Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;

    invoke-virtual {v0, p1, p2}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPCardView;->a(Lhxm;Z)V

    .line 469
    return-void
.end method

.method public a(Lhxq;Z)V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->I:Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;

    invoke-virtual {v0, p1, p2}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoCardView;->a(Lhxq;Z)V

    .line 474
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 545
    invoke-static {p0, p1, p2}, Lhys;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 546
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->G:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/CheckCardGroup;->a(Z)V

    .line 502
    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 440
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04037e

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 441
    const v1, 0x7f04037d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 442
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->A:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 443
    return-void
.end method

.method public aa()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 675
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->O:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->P:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->Q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 679
    return-void
.end method

.method public ab()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->O:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->Q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 687
    return-void
.end method

.method public ac()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 691
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->O:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->P:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->Q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 695
    return-void
.end method

.method public ad()V
    .locals 2

    .prologue
    .line 699
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 700
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 701
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->M:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->D:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 490
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->x:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 479
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->ak()V

    .line 480
    return-void
.end method

.method public varargs b([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 447
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04037e

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 448
    const v1, 0x7f04037d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 449
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->B:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 450
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->M:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    return-void
.end method

.method public varargs c([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 454
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04037e

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 455
    const v1, 0x7f04037d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 456
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->D:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 457
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->L:Lcom/santander/app/components/view/SantanderTextView;

    const v1, 0x7f090408

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 528
    const v0, 0x7f090324

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->f(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public varargs d([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04037e

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 462
    const v1, 0x7f04037d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 463
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->F:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 464
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->L:Lcom/santander/app/components/view/SantanderTextView;

    const v1, 0x7f090409

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 534
    const v0, 0x7f090325

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->f(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->L:Lcom/santander/app/components/view/SantanderTextView;

    const v1, 0x7f09040a

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->a(Ljava/lang/String;Z)V

    .line 541
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->a:Landroid/widget/FrameLayout;

    invoke-static {v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 238
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->b:Landroid/support/v4/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 244
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->b:Landroid/support/v4/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 250
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->g()V

    .line 255
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->J:Lcom/santander/app/components/view/SantanderButtonView;

    const v1, 0x7f090328

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setText(I)V

    .line 259
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->Z()V

    .line 260
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 264
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->g()V

    .line 265
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->J:Lcom/santander/app/components/view/SantanderButtonView;

    const v1, 0x7f090320

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setText(I)V

    .line 269
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->C()V

    .line 270
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->w:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 275
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->w:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 280
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->b:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 109
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->R:Lhru;

    invoke-interface {v0}, Lhru;->h()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->R:Lhru;

    invoke-interface {v0, p2}, Lhru;->b(I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->R:Lhru;

    invoke-interface {v0}, Lhru;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 357
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f04004c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->setContentView(I)V

    .line 91
    new-instance v0, Lhrv;

    invoke-direct {v0, p0}, Lhrv;-><init>(Lhqy;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->R:Lhru;

    .line 93
    const v0, 0x7f090329

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->c(I)V

    .line 94
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->ae()V

    .line 96
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->R:Lhru;

    invoke-interface {v0}, Lhru;->a()V

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->R:Lhru;

    invoke-interface {v0}, Lhru;->b()V

    .line 102
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 103
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->A:Landroid/support/v7/widget/AppCompatSpinner;

    if-ne p1, v1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->R:Lhru;

    invoke-interface {v0, p3}, Lhru;->a(I)V

    .line 346
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->al()V

    .line 347
    return-void

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->B:Landroid/support/v7/widget/AppCompatSpinner;

    if-ne p1, v1, :cond_2

    .line 340
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->R:Lhru;

    invoke-interface {v1, v0}, Lhru;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->D:Landroid/support/v7/widget/AppCompatSpinner;

    if-ne p1, v1, :cond_3

    .line 342
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->R:Lhru;

    invoke-interface {v1, v0}, Lhru;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_3
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->F:Landroid/support/v7/widget/AppCompatSpinner;

    if-ne p1, v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->R:Lhru;

    invoke-interface {v1, v0}, Lhru;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 350
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->y:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 285
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->y:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 290
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->C:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->E:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 296
    return-void
.end method

.method public s()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->E:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->C:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 302
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->J:Lcom/santander/app/components/view/SantanderButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setEnabled(Z)V

    .line 307
    return-void
.end method

.method public u()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->J:Lcom/santander/app/components/view/SantanderButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setEnabled(Z)V

    .line 312
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->B:Landroid/support/v7/widget/AppCompatSpinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setEnabled(Z)V

    .line 317
    return-void
.end method

.method public w()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->B:Landroid/support/v7/widget/AppCompatSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setEnabled(Z)V

    .line 322
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->D:Landroid/support/v7/widget/AppCompatSpinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setEnabled(Z)V

    .line 327
    return-void
.end method

.method public y()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->D:Landroid/support/v7/widget/AppCompatSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setEnabled(Z)V

    .line 332
    return-void
.end method

.method public z()V
    .locals 2

    .prologue
    .line 423
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 425
    return-void
.end method
