.class public Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lhgw;


# static fields
.field private static final S:I


# instance fields
.field private A:Lcom/santander/app/components/view/SantanderButtonView;

.field private B:Lcom/santander/app/components/view/CheckCardGroup;

.field private C:Lcom/santander/app/components/view/CheckCardView;

.field private D:Landroid/widget/LinearLayout;

.field private E:Lcom/santander/app/components/view/SantanderTextView;

.field private F:Lcom/santander/app/components/view/SantanderTextView;

.field private G:Lcom/santander/app/components/view/SantanderTextView;

.field private H:Lcom/santander/app/components/view/SantanderTextView;

.field private I:Lcom/santander/app/components/view/CheckCardView;

.field private J:Landroid/widget/LinearLayout;

.field private K:Lcom/santander/app/components/view/SantanderTextView;

.field private L:Lcom/santander/app/components/view/SantanderTextView;

.field private M:Lcom/santander/app/components/view/SantanderTextView;

.field private N:Lcom/santander/app/components/view/SantanderTextView;

.field private O:Landroid/widget/LinearLayout;

.field private P:Lhhb;

.field private Q:Landroid/app/Dialog;

.field private R:I

.field private a:Lhgu;

.field private b:Landroid/support/v4/widget/NestedScrollView;

.field private c:Landroid/widget/RadioGroup;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/FrameLayout;

.field private x:Landroid/support/v7/widget/AppCompatSpinner;

.field private y:Landroid/support/v7/widget/AppCompatSpinner;

.field private z:Landroid/support/v7/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a(Lhfx;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 366
    invoke-interface {p1}, Lhfx;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhhr;->c(Ljava/lang/String;)V

    .line 367
    invoke-interface {p1}, Lhfx;->u()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-interface {p1}, Lhfx;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "R$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 369
    const-string v2, "taxa %s a.m."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lhfx;->r()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    invoke-interface {p1}, Lhfx;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v4, " de "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    if-eqz p2, :cond_0

    .line 375
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_0
    invoke-interface {p1}, Lhfx;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v4, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->E:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v4, v5}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 380
    iget-object v4, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->E:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v4, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->F:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->G:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->H:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    return-void
.end method

.method private b(Lhfx;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 387
    invoke-interface {p1}, Lhfx;->v()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-interface {p1}, Lhfx;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "R$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 389
    const-string v2, "taxa %s a.m."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lhfx;->s()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    const-string v4, "1x de "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    if-eqz p2, :cond_0

    .line 394
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_0
    invoke-interface {p1}, Lhfx;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-object v4, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->K:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v4, v5}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 399
    iget-object v4, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->K:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v4, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->L:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->M:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->N:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1000da

    .line 104
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lhgu;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->a:Lhgu;

    .line 106
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->b:Landroid/support/v4/widget/NestedScrollView;

    .line 108
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->c:Landroid/widget/RadioGroup;

    .line 110
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->d:Landroid/widget/RadioButton;

    .line 111
    const v0, 0x7f1000df

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->e:Landroid/widget/RadioButton;

    .line 113
    const v0, 0x7f1000e0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->f:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f1000dc

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->g:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f1000e1

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->w:Landroid/widget/FrameLayout;

    .line 119
    const v0, 0x7f1000e2

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->x:Landroid/support/v7/widget/AppCompatSpinner;

    .line 120
    const v0, 0x7f1000e3

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->y:Landroid/support/v7/widget/AppCompatSpinner;

    .line 121
    const v0, 0x7f1000e4

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->z:Landroid/support/v7/widget/AppCompatSpinner;

    .line 122
    const v0, 0x7f1000f1

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->A:Lcom/santander/app/components/view/SantanderButtonView;

    .line 124
    const v0, 0x7f1000e5

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/CheckCardGroup;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->B:Lcom/santander/app/components/view/CheckCardGroup;

    .line 126
    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->O:Landroid/widget/LinearLayout;

    .line 128
    const v0, 0x7f1000e6

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/CheckCardView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->C:Lcom/santander/app/components/view/CheckCardView;

    .line 129
    const v0, 0x7f1000e7

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->D:Landroid/widget/LinearLayout;

    .line 130
    const v0, 0x7f1000e8

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->E:Lcom/santander/app/components/view/SantanderTextView;

    .line 131
    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->F:Lcom/santander/app/components/view/SantanderTextView;

    .line 132
    const v0, 0x7f1000e9

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->G:Lcom/santander/app/components/view/SantanderTextView;

    .line 133
    const v0, 0x7f1000ea

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->H:Lcom/santander/app/components/view/SantanderTextView;

    .line 135
    const v0, 0x7f1000eb

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/CheckCardView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->I:Lcom/santander/app/components/view/CheckCardView;

    .line 136
    const v0, 0x7f1000ec

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->J:Landroid/widget/LinearLayout;

    .line 137
    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->K:Lcom/santander/app/components/view/SantanderTextView;

    .line 138
    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->L:Lcom/santander/app/components/view/SantanderTextView;

    .line 139
    const v0, 0x7f1000ef

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->M:Lcom/santander/app/components/view/SantanderTextView;

    .line 140
    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->N:Lcom/santander/app/components/view/SantanderTextView;

    .line 142
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->A:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->B:Lcom/santander/app/components/view/CheckCardGroup;

    new-instance v1, Lhgv;

    invoke-direct {v1, p0}, Lhgv;-><init>(Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardGroup;->setOnCheckedChangeListener(Lgor;)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->z:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->x:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 162
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->y:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->w:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->w:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->a:Lhgu;

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->b:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->a:Lhgu;

    invoke-interface {v0}, Lhgu;->a()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 206
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->O:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->c:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    return-void
.end method

.method public a(Lhfx;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41900000    # 18.0f

    .line 312
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->C:Lcom/santander/app/components/view/CheckCardView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/CheckCardView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->I:Lcom/santander/app/components/view/CheckCardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->C:Lcom/santander/app/components/view/CheckCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardView;->setChecked(Z)V

    .line 317
    invoke-direct {p0, p1, v3}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->a(Lhfx;Z)V

    .line 319
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->D:Landroid/widget/LinearLayout;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 320
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->E:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 321
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->F:Lcom/santander/app/components/view/SantanderTextView;

    const/high16 v1, 0x42080000    # 34.0f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 322
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->G:Lcom/santander/app/components/view/SantanderTextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 323
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->H:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 324
    return-void
.end method

.method public a(Lhfy;)V
    .locals 2

    .prologue
    .line 446
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 448
    return-void
.end method

.method public a(Lhfz;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->a:Lhgu;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->a:Lhgu;

    invoke-interface {v0, p1}, Lhgu;->a(Lhfz;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v0, 0x7f04037e

    invoke-direct {v1, p0, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 226
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->u()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 229
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 232
    :cond_0
    const v0, 0x7f04037d

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 234
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->x:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 235
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04037e

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 240
    const v1, 0x7f04037d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 241
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->y:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 242
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->y:Landroid/support/v7/widget/AppCompatSpinner;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 243
    return-void

    .line 242
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->a:Lhgu;

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->a:Lhgu;

    invoke-interface {v0}, Lhgu;->b()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .param p1    # I
        .annotation build Lhfr;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 213
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 215
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->w()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    if-ne p1, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 218
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->x()V

    goto :goto_0
.end method

.method public b(Lhfx;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41900000    # 18.0f

    .line 328
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->C:Lcom/santander/app/components/view/CheckCardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->I:Lcom/santander/app/components/view/CheckCardView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/CheckCardView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->I:Lcom/santander/app/components/view/CheckCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardView;->setChecked(Z)V

    .line 333
    invoke-direct {p0, p1, v3}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->b(Lhfx;Z)V

    .line 335
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->J:Landroid/widget/LinearLayout;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 336
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->K:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 337
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->L:Lcom/santander/app/components/view/SantanderTextView;

    const/high16 v1, 0x42080000    # 34.0f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 338
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->M:Lcom/santander/app/components/view/SantanderTextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 339
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->N:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 340
    return-void
.end method

.method public b(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04037e

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 248
    const v1, 0x7f04037d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 249
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->z:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 250
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->z:Landroid/support/v7/widget/AppCompatSpinner;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 251
    return-void

    .line 250
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->b:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 168
    return-void
.end method

.method public c(Lhfx;)V
    .locals 7

    .prologue
    const/high16 v6, 0x42080000    # 34.0f

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v3, 0x41300000    # 11.0f

    const/4 v2, 0x1

    .line 344
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->C:Lcom/santander/app/components/view/CheckCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->I:Lcom/santander/app/components/view/CheckCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->C:Lcom/santander/app/components/view/CheckCardView;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/CheckCardView;->setChecked(Z)V

    .line 349
    invoke-direct {p0, p1, v2}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->a(Lhfx;Z)V

    .line 350
    invoke-direct {p0, p1, v2}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->b(Lhfx;Z)V

    .line 352
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->D:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 353
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->E:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v6}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 354
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->F:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v5}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 355
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->G:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 356
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->H:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 358
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->J:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 359
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->K:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v6}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 360
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->L:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v5}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 361
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->M:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 362
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->N:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/SantanderTextView;->setTextSize(F)V

    .line 363
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->b:Landroid/support/v4/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 173
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 484
    iput p1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->R:I

    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->B:Lcom/santander/app/components/view/CheckCardGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardGroup;->setVisibility(I)V

    .line 293
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->B:Lcom/santander/app/components/view/CheckCardGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardGroup;->setVisibility(I)V

    .line 298
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->E:Lcom/santander/app/components/view/SantanderTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 303
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->K:Lcom/santander/app/components/view/SantanderTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 308
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->I:Lcom/santander/app/components/view/CheckCardView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/CheckCardView;->c()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->C:Lcom/santander/app/components/view/CheckCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardView;->setChecked(Z)V

    .line 413
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->I:Lcom/santander/app/components/view/CheckCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/CheckCardView;->setChecked(Z)V

    .line 418
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->A:Lcom/santander/app/components/view/SantanderButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setEnabled(Z)V

    .line 423
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->A:Lcom/santander/app/components/view/SantanderButtonView;

    const v1, 0x7f09006f

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->P:Lhhb;

    invoke-interface {v0}, Lhhb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 202
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 255
    packed-switch p2, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 257
    :pswitch_0
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->x()V

    .line 258
    invoke-static {v1}, Lhhr;->a(Z)V

    .line 259
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->P:Lhhb;

    invoke-interface {v0, v1}, Lhhb;->b(I)V

    goto :goto_0

    .line 263
    :pswitch_1
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->w()V

    .line 264
    const/4 v0, 0x0

    invoke-static {v0}, Lhhr;->a(Z)V

    .line 265
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->P:Lhhb;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lhhb;->b(I)V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000de
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 442
    :goto_0
    return-void

    .line 440
    :pswitch_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->P:Lhhb;

    invoke-interface {v0}, Lhhb;->f()V

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x7f1000f1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->setContentView(I)V

    .line 88
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->c(I)V

    .line 90
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->v()V

    .line 92
    new-instance v0, Lhhc;

    invoke-direct {v0, p0}, Lhhc;-><init>(Lhgw;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->P:Lhhb;

    .line 93
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->P:Lhhb;

    invoke-interface {v0}, Lhhb;->a()V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->P:Lhhb;

    invoke-interface {v0}, Lhhb;->b()V

    .line 100
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
    .line 272
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->y:Landroid/support/v7/widget/AppCompatSpinner;

    if-ne p1, v0, :cond_1

    .line 273
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    invoke-static {v0}, Lhhr;->b(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->P:Lhhb;

    invoke-interface {v1, v0}, Lhhb;->a(Ljava/lang/String;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->z:Landroid/support/v7/widget/AppCompatSpinner;

    if-ne p1, v0, :cond_2

    .line 277
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    invoke-static {v0}, Lhhr;->a(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->P:Lhhb;

    invoke-interface {v1, v0}, Lhhb;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->x:Landroid/support/v7/widget/AppCompatSpinner;

    if-ne p1, v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->P:Lhhb;

    invoke-interface {v0, p3}, Lhhb;->a(I)V

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
    .line 287
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->A:Lcom/santander/app/components/view/SantanderButtonView;

    const v1, 0x7f09005a

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 462
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->Q:Landroid/app/Dialog;

    .line 463
    return-void
.end method

.method public r()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->Q:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->Q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->Q:Landroid/app/Dialog;

    .line 471
    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .prologue
    .line 475
    const v0, 0x7f09043f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lhys;->a(Landroid/app/Activity;IZ)V

    .line 476
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->b:Landroid/support/v4/widget/NestedScrollView;

    invoke-static {v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 481
    return-void
.end method

.method public u()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;->R:I

    return v0
.end method
