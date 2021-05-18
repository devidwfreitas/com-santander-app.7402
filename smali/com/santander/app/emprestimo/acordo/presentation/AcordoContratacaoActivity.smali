.class public Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lhfg;
.implements Lhgs;
.implements Lnau;


# instance fields
.field private A:Lcom/santander/app/components/view/SantanderTextView;

.field private B:Lcom/santander/app/components/view/SantanderTextView;

.field private C:Lcom/santander/app/components/view/SantanderTextView;

.field private D:Lcom/santander/app/components/view/SantanderTextView;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/support/v7/widget/RecyclerView;

.field private G:Landroid/widget/CheckBox;

.field private H:Lcom/santander/app/components/view/SantanderButtonView;

.field private I:Landroid/support/v4/widget/NestedScrollView;

.field private J:Landroid/widget/LinearLayout;

.field private K:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

.field private L:Lhgy;

.field private M:Landroid/app/Dialog;

.field private a:Lcom/santander/app/components/view/SantanderTextView;

.field private b:Lcom/santander/app/components/view/SantanderTextView;

.field private c:Lcom/santander/app/components/view/SantanderTextView;

.field private d:Lcom/santander/app/components/view/SantanderTextView;

.field private e:Lcom/santander/app/components/view/SantanderTextView;

.field private f:Lcom/santander/app/components/view/SantanderTextView;

.field private g:Lcom/santander/app/components/view/SantanderTextView;

.field private w:Lcom/santander/app/components/view/SantanderTextView;

.field private x:Lcom/santander/app/components/view/SantanderTextView;

.field private y:Lcom/santander/app/components/view/SantanderTextView;

.field private z:Lcom/santander/app/components/view/SantanderTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;)Lhgy;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->L:Lhgy;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 85
    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->a:Lcom/santander/app/components/view/SantanderTextView;

    .line 86
    const v0, 0x7f1000c7

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->b:Lcom/santander/app/components/view/SantanderTextView;

    .line 87
    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->c:Lcom/santander/app/components/view/SantanderTextView;

    .line 88
    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->d:Lcom/santander/app/components/view/SantanderTextView;

    .line 89
    const v0, 0x7f1000ca

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->e:Lcom/santander/app/components/view/SantanderTextView;

    .line 90
    const v0, 0x7f1000cb

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->f:Lcom/santander/app/components/view/SantanderTextView;

    .line 91
    const v0, 0x7f1000cc

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->g:Lcom/santander/app/components/view/SantanderTextView;

    .line 92
    const v0, 0x7f1000cd

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->w:Lcom/santander/app/components/view/SantanderTextView;

    .line 93
    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->x:Lcom/santander/app/components/view/SantanderTextView;

    .line 94
    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->y:Lcom/santander/app/components/view/SantanderTextView;

    .line 95
    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->z:Lcom/santander/app/components/view/SantanderTextView;

    .line 96
    const v0, 0x7f1000d1

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->A:Lcom/santander/app/components/view/SantanderTextView;

    .line 97
    const v0, 0x7f1000d4

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->D:Lcom/santander/app/components/view/SantanderTextView;

    .line 98
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->B:Lcom/santander/app/components/view/SantanderTextView;

    .line 99
    const v0, 0x7f1000d5

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->C:Lcom/santander/app/components/view/SantanderTextView;

    .line 100
    const v0, 0x7f1000d3

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->E:Landroid/widget/LinearLayout;

    .line 101
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->F:Landroid/support/v7/widget/RecyclerView;

    .line 102
    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->G:Landroid/widget/CheckBox;

    .line 103
    const v0, 0x7f1000d8

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->H:Lcom/santander/app/components/view/SantanderButtonView;

    .line 104
    const v0, 0x7f100249

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->J:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->I:Landroid/support/v4/widget/NestedScrollView;

    .line 106
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->G:Landroid/widget/CheckBox;

    new-instance v1, Lhgq;

    invoke-direct {v1, p0}, Lhgq;-><init>(Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->H:Lcom/santander/app/components/view/SantanderButtonView;

    new-instance v1, Lhgr;

    invoke-direct {v1, p0}, Lhgr;-><init>(Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->G:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 124
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->J:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->I:Landroid/support/v4/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 229
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->J:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->I:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 234
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->H:Lcom/santander/app/components/view/SantanderButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setEnabled(Z)V

    .line 151
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lhhr;->d()V

    .line 239
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->L:Lhgy;

    invoke-interface {v0}, Lhgy;->c()V

    .line 240
    return-void
.end method

.method public a(Lhfy;)V
    .locals 5

    .prologue
    .line 128
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->b:Lcom/santander/app/components/view/SantanderTextView;

    const v1, 0x7f09005c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lhfy;->B()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->c:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhfy;->C()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhfy;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhfy;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhfy;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhfy;->E()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->w:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhfy;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->x:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhfy;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->y:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhfy;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->A:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhfy;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->B:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhfy;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public a(Lhgb;)V
    .locals 0

    .prologue
    .line 171
    invoke-static {p1}, Lhhr;->a(Lhgb;)V

    .line 172
    invoke-static {p0, p1}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->a(Landroid/content/Context;Lhgb;)V

    .line 173
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->D:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->C:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhgb;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 160
    new-instance v0, Lhff;

    invoke-direct {v0, p1}, Lhff;-><init>(Ljava/util/List;)V

    .line 161
    invoke-virtual {v0, p0}, Lhff;->a(Lhfg;)V

    .line 162
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 164
    iget-object v2, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->F:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 165
    iget-object v2, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->F:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 166
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->F:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 167
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->H:Lcom/santander/app/components/view/SantanderButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setEnabled(Z)V

    .line 156
    return-void
.end method

.method public b(Lhfy;)V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->a(Landroid/content/Context;Lhfy;Z)V

    .line 191
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->a:Lcom/santander/app/components/view/SantanderTextView;

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->z:Lcom/santander/app/components/view/SantanderTextView;

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(I)V

    .line 179
    return-void
.end method

.method public c(Lhfy;)V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->a(Landroid/content/Context;Lhfy;Z)V

    .line 196
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->D:Lcom/santander/app/components/view/SantanderTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->a:Lcom/santander/app/components/view/SantanderTextView;

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->z:Lcom/santander/app/components/view/SantanderTextView;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(I)V

    .line 186
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 200
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->M:Landroid/app/Dialog;

    .line 201
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->M:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->M:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->M:Landroid/app/Dialog;

    .line 209
    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->j()V

    .line 216
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->K:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->K:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    .line 218
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->K:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 219
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100249

    iget-object v2, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->K:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    .line 220
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    .line 221
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 224
    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 258
    const-string v0, "Para seguir a contrata\u00e7\u00e3o \u00e9 necess\u00e1rio aceitar as condi\u00e7\u00f5es."

    const v1, 0x7f090bcb

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lhys;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V

    .line 262
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->K:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->k()V

    .line 246
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->K:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    .line 247
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x2002

    .line 248
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->K:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-super {p0}, Lgrs;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->setContentView(I)V

    .line 72
    const v0, 0x7f090061

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->c(I)V

    .line 73
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->i()V

    .line 74
    new-instance v0, Lhgz;

    invoke-direct {v0, p0}, Lhgz;-><init>(Lhgs;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->L:Lhgy;

    .line 75
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->L:Lhgy;

    invoke-interface {v0}, Lhgy;->a()V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->L:Lhgy;

    invoke-interface {v0}, Lhgy;->b()V

    .line 82
    return-void
.end method
