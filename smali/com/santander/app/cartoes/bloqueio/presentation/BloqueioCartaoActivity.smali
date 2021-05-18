.class public Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lghh;
.implements Lnau;


# static fields
.field private static final E:Ljava/lang/String; = "BloqueiodeCartaoActivity"


# instance fields
.field private A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private B:Lghj;

.field private C:Lghu;

.field private D:Lggx;

.field private F:I

.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/Spinner;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->F:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;Lggx;)Lggx;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->D:Lggx;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 90
    const v0, 0x7f10013a

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->b:Landroid/widget/RelativeLayout;

    .line 91
    const v0, 0x7f100144

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->c:Landroid/widget/RelativeLayout;

    .line 92
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->d:Landroid/widget/RelativeLayout;

    .line 93
    const v0, 0x7f10013b

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->f:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f10013f

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->g:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f100141

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->w:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f100143

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->x:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f100145

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->y:Landroid/widget/Spinner;

    .line 98
    const v0, 0x7f100147

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->z:Landroid/widget/Button;

    .line 99
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 100
    const v0, 0x7f100148

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->e:Landroid/widget/LinearLayout;

    .line 102
    iget-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->z:Landroid/widget/Button;

    new-instance v1, Lghe;

    invoke-direct {v1, p0}, Lghe;-><init>(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->b()V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->z:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const v3, 0x7f100148

    .line 113
    invoke-virtual {p0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 116
    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->e:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 119
    iget v2, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->F:I

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 120
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 122
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 123
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 125
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->y:Landroid/widget/Spinner;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)Lghj;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->B:Lghj;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)Lggx;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->D:Lggx;

    return-object v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->B:Lghj;

    iget-object v1, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->C:Lghu;

    iget-object v2, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->D:Lggx;

    invoke-interface {v0, v1, v2}, Lghj;->a(Lghu;Lggx;)V

    .line 205
    return-void
.end method

.method public a(Lghu;)V
    .locals 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->C:Lghu;

    .line 184
    iget-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lghu;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p1}, Lghu;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p1}, Lghu;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method public a(Lgvb;)V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p1}, Lgmy;->d(Ljava/util/List;)Lamy;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-virtual {v1, v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 131
    iget-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->A:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lghf;

    invoke-direct {v1, p0}, Lghf;-><init>(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setOnItemSelectedListener(Lamt;)V

    .line 142
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 209
    const-string v0, "Aten\u00e7\u00e3o"

    const/4 v1, 0x1

    const-string v2, "OK"

    invoke-static {p0, v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 210
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lggx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04037d

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 148
    iget-object v1, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->y:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->y:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->y:Landroid/widget/Spinner;

    new-instance v1, Lghg;

    invoke-direct {v1, p0}, Lghg;-><init>(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 179
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f040028

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->setContentView(I)V

    .line 79
    const v0, 0x7f090a78

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->c(I)V

    .line 80
    iput-object p0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->i:Landroid/app/Activity;

    .line 82
    invoke-direct {p0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->a()V

    .line 84
    new-instance v0, Lghi;

    invoke-direct {v0, p0}, Lghi;-><init>(Lghh;)V

    iput-object v0, p0, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->B:Lghj;

    .line 86
    return-void
.end method
