.class public Lcom/santander/app/seguros/utils/DummyActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "Simula\u00e7\u00e3o"

.field public static final b:Ljava/lang/String; = "Proposta"

.field public static final c:Ljava/lang/String; = "Resumo"

.field public static final d:Ljava/lang/String; = "Formalizar"


# instance fields
.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

.field private k:Landroid/widget/Button;

.field private l:Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->m:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/utils/DummyActivity;)Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->j:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    return-object v0
.end method

.method private a()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 70
    const v0, 0x7f1002d6

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/utils/DummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->e:Landroid/widget/Button;

    .line 71
    const v0, 0x7f1002d7

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/utils/DummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->f:Landroid/widget/Button;

    .line 72
    const v0, 0x7f1002d8

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/utils/DummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->g:Landroid/widget/Button;

    .line 73
    const v0, 0x7f1002db

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/utils/DummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->i:Landroid/widget/Button;

    .line 74
    const v0, 0x7f1002da

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/utils/DummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;

    iput-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->l:Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;

    .line 76
    iget-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->l:Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;

    const-string v1, "aldfs\u00e7jalskdf"

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->setTextName(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->l:Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;

    invoke-virtual {p0}, Lcom/santander/app/seguros/utils/DummyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 78
    iget-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->i:Landroid/widget/Button;

    new-instance v1, Lmgl;

    invoke-direct {v1, p0}, Lmgl;-><init>(Lcom/santander/app/seguros/utils/DummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->e:Landroid/widget/Button;

    new-instance v1, Lmgm;

    invoke-direct {v1, p0}, Lmgm;-><init>(Lcom/santander/app/seguros/utils/DummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->f:Landroid/widget/Button;

    new-instance v1, Lmgn;

    invoke-direct {v1, p0}, Lmgn;-><init>(Lcom/santander/app/seguros/utils/DummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->g:Landroid/widget/Button;

    new-instance v1, Lmgo;

    invoke-direct {v1, p0}, Lmgo;-><init>(Lcom/santander/app/seguros/utils/DummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f1002dc

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/utils/DummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->h:Landroid/widget/Button;

    .line 151
    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/utils/DummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    iput-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->j:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    .line 152
    iget-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->h:Landroid/widget/Button;

    new-instance v1, Lmgp;

    invoke-direct {v1, p0}, Lmgp;-><init>(Lcom/santander/app/seguros/utils/DummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->j:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    new-instance v1, Lmgq;

    invoke-direct {v1, p0}, Lmgq;-><init>(Lcom/santander/app/seguros/utils/DummyActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->setListener(Lmff;)V

    .line 170
    const v0, 0x7f1002d9

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/utils/DummyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->k:Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/santander/app/seguros/utils/DummyActivity;->k:Landroid/widget/Button;

    new-instance v1, Lmgr;

    invoke-direct {v1, p0}, Lmgr;-><init>(Lcom/santander/app/seguros/utils/DummyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/santander/app/seguros/utils/DummyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f050024

    const v2, 0x7f050025

    const v3, 0x7f050023

    const v4, 0x7f050026

    .line 181
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f10020e

    .line 182
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 185
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f04005a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/utils/DummyActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/santander/app/seguros/utils/DummyActivity;->b()V

    .line 49
    invoke-direct {p0}, Lcom/santander/app/seguros/utils/DummyActivity;->a()V

    .line 50
    return-void
.end method
