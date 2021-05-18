.class public Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lmns;
.implements Lnau;


# static fields
.field private static final J:Ljava/lang/String; = "ConfirmacaoTransferenciaActivity"


# instance fields
.field private A:Landroid/widget/EditText;

.field private B:Landroid/widget/ImageButton;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/ScrollView;

.field private G:Lmps;

.field private H:Lmlo;

.field private final I:I

.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 51
    iput-object p0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->a:Landroid/app/Activity;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->I:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->A:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;)Lmlo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const v2, 0x7f100aff

    .line 97
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "transferencia"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmlo;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    .line 99
    const v0, 0x7f100af1

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->b:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f100af3

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->c:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f100af5

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->d:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f100af7

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->e:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f100af8

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->f:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f100af9

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->g:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f100afa

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->w:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f100afc

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->x:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f100afd

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->y:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f100afe

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->z:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f100b01

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->A:Landroid/widget/EditText;

    .line 110
    const v0, 0x7f100b02

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->B:Landroid/widget/ImageButton;

    .line 112
    const v0, 0x7f100aee

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->C:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->C:Landroid/widget/Button;

    new-instance v1, Lmnp;

    invoke-direct {v1, p0}, Lmnp;-><init>(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v0}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, v2}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_0
    const v0, 0x7f100afb

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->D:Landroid/widget/LinearLayout;

    .line 136
    const v0, 0x7f100aef

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->F:Landroid/widget/ScrollView;

    .line 139
    const v0, 0x7f100b0c

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->E:Landroid/widget/LinearLayout;

    .line 141
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->a()V

    .line 142
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0, v2}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const v4, 0x7f100b0c

    .line 190
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->E:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->F:Landroid/widget/ScrollView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 196
    if-nez v1, :cond_0

    .line 197
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 198
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 199
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 201
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 202
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 204
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 227
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0b0224

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 228
    const v1, 0x7f040179

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 229
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 230
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 233
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 234
    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 235
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 237
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 239
    const v1, 0x7f100758

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmnr;

    invoke-direct {v2, p0, v0}, Lmnr;-><init>(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 246
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    .line 147
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v0}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Transfer\u00eancia entre contas"

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v1}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v2}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v1}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getExtractoHome()Lfuy;

    move-result-object v1

    invoke-virtual {v1}, Lfuy;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v0}, Lmlo;->b()Lmld;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v1}, Lmlo;->b()Lmld;

    move-result-object v1

    invoke-virtual {v1}, Lmld;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v1}, Lmlo;->b()Lmld;

    move-result-object v1

    invoke-virtual {v1}, Lmld;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->g:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v2}, Lmlo;->b()Lmld;

    move-result-object v2

    invoke-virtual {v2}, Lmld;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - conta: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v0}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaq;->l(Ljava/lang/String;)I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x4040800000000000L    # 33.0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v0}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_2
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v1}, Lmlo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v0}, Lmlo;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v1}, Lmlo;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyyMMdd"

    const-string v3, "dd/MM/yyyy"

    invoke-static {v1, v2, v3}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v0}, Lmlo;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090805

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :goto_3
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v1}, Lmlo;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_4
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->B:Landroid/widget/ImageButton;

    new-instance v1, Lmnq;

    invoke-direct {v1, p0}, Lmnq;-><init>(Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v0}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v0}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v2}, Lmlo;->c()Lmkw;

    move-result-object v2

    invoke-virtual {v2}, Lmkw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - conta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v2}, Lmlo;->c()Lmkw;

    move-result-object v2

    invoke-virtual {v2}, Lmkw;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v2}, Lmlo;->c()Lmkw;

    move-result-object v2

    invoke-virtual {v2}, Lmkw;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-virtual {v0}, Lmlo;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090804

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090803

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->D:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->G:Lmps;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    invoke-interface {v0, v1}, Lmps;->a(Lmlo;)V

    .line 209
    return-void
.end method

.method public a(Lgvb;)V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method public b()Lmlo;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->H:Lmlo;

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 88
    const v1, 0x7f090b0d

    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->c()V

    .line 92
    new-instance v0, Lmpt;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lmpt;-><init>(Landroid/app/Activity;Lmns;)V

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ConfirmacaoTransferenciaActivity;->G:Lmps;

    .line 93
    return-void
.end method
