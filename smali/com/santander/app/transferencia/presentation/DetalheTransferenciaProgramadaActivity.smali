.class public Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lmnw;
.implements Lnau;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

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

.field private O:Landroid/widget/Button;

.field private P:Landroid/widget/ScrollView;

.field private Q:Landroid/widget/LinearLayout;

.field private R:Landroid/app/AlertDialog;

.field private S:Landroid/support/v4/app/FragmentTransaction;

.field private T:Lmpu;

.field private U:Lmlr;

.field private V:Lcom/santander/app/contacorrente/domain/Conta;

.field private W:Lmkz;

.field public d:Landroid/app/Dialog;

.field public e:Landroid/app/Activity;

.field private final f:Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 48
    const-string v0, "SelecaoTransferenciaProgramadaActivity"

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->f:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->d:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->R:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->R:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 110
    const v0, 0x7f101182

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->P:Landroid/widget/ScrollView;

    .line 111
    const v0, 0x7f1011c9

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->Q:Landroid/widget/LinearLayout;

    .line 113
    const v0, 0x7f101185

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->g:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f101187

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->w:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f101189

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->x:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f10118c    # 1.9149994E38f

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->z:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f10118e    # 1.9149998E38f

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->A:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f101190    # 1.9150002E38f

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->D:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f101192    # 1.9150006E38f

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->B:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f101194

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->C:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f101198

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->y:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f10119a

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->F:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f10119b

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->E:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f10119e

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->G:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f1011a0

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->H:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f1011a2

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->I:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f1011a3

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->J:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f101196

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->K:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f101195

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->L:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f1011a5

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->N:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f1011a4

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->M:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f10010d

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->O:Landroid/widget/Button;

    .line 135
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "transferenciaProgramada"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmlr;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->U:Lmlr;

    .line 136
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contaSelecionada"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->V:Lcom/santander/app/contacorrente/domain/Conta;

    .line 138
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->O:Landroid/widget/Button;

    new-instance v1, Lmnt;

    invoke-direct {v1, p0}, Lmnt;-><init>(Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    new-instance v0, Lmpv;

    invoke-direct {v0, p0}, Lmpv;-><init>(Lmnw;)V

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->T:Lmpu;

    .line 164
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->T:Lmpu;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->U:Lmlr;

    invoke-interface {v0, v1}, Lmpu;->a(Lmlr;)V

    .line 165
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const v3, 0x7f1011c9

    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->P:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 174
    if-nez v1, :cond_0

    .line 175
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 176
    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 177
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 178
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 179
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 180
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 182
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->S:Landroid/support/v4/app/FragmentTransaction;

    .line 190
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->b()V

    .line 191
    return-void
.end method

.method public a(Lgvb;)V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 273
    return-void
.end method

.method public a(Lmkz;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 201
    iput-object p1, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->W:Lmkz;

    .line 203
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->A:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p1}, Lmkz;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p1}, Lmkz;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SANTANDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    const-string v0, ""

    const-string v1, ""

    .line 216
    invoke-virtual {p1}, Lmkz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    .line 217
    invoke-virtual {p1}, Lmkz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v4, v1, 0xc

    move v1, v2

    .line 218
    :goto_0
    if-ge v1, v4, :cond_0

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0

    .line 222
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmkz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->C:Landroid/widget/TextView;

    invoke-static {v0}, Lnaq;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->F:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->E:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->G:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->H:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->I:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {p1}, Lmkz;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->J:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lnaj;->a(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_2
    invoke-virtual {p1}, Lmkz;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lmkz;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lnai;->d(Ljava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 243
    invoke-static {v0}, Lnai;->c(Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 244
    :cond_3
    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->K:Landroid/widget/TextView;

    .line 245
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lnai;->a(JZ)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :goto_3
    invoke-virtual {p1}, Lmkz;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 253
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :goto_4
    return-void

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmkz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 241
    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 255
    :cond_7
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public b()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->T:Lmpu;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->V:Lcom/santander/app/contacorrente/domain/Conta;

    iget-object v2, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->U:Lmlr;

    invoke-interface {v0, v1, v2}, Lmpu;->a(Lcom/santander/app/contacorrente/domain/Conta;Lmlr;)V

    .line 264
    return-void
.end method

.method public c()Lmkz;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->W:Lmkz;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 196
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f04038a

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->setContentView(I)V

    .line 96
    iput-object p0, p0, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->e:Landroid/app/Activity;

    .line 98
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 103
    const-string v1, "Transf. Programada"

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->d()V

    .line 106
    return-void
.end method
