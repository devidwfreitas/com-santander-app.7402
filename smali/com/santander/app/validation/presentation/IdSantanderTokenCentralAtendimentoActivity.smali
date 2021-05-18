.class public Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnbz;


# static fields
.field public static final a:I = 0x4


# instance fields
.field private b:Lndm;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;)Lndm;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->b:Lndm;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    const-string v1, "showLogin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->finish()V

    .line 172
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 162
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    const v0, 0x7f10032b

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f100481

    .line 111
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f100480

    .line 113
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    const v2, 0x7f020507

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/String;J)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x3e8

    .line 127
    const v0, 0x7f100482

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v0, 0x7f100483

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 129
    div-long v0, p4, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 130
    new-instance v0, Lnbx;

    move-object v1, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v6}, Lnbx;-><init>(Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;JJLandroid/widget/ProgressBar;)V

    iput-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->d:Landroid/os/CountDownTimer;

    .line 140
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 141
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lnby;

    invoke-direct {v1, p0}, Lnby;-><init>(Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    return-void
.end method

.method public hideTokenContainer(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 120
    const v0, 0x7f100481

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    const v0, 0x7f100480

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 122
    const v1, 0x7f020507

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->a(Z)V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 45
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->setContentView(I)V

    .line 47
    new-instance v0, Lndn;

    invoke-direct {v0, p0, p0}, Lndn;-><init>(Landroid/content/Context;Lnbz;)V

    iput-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->b:Lndm;

    .line 48
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 49
    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 50
    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setVisibility(I)V

    .line 52
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    const v1, 0x7f090ad2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090936

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 63
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09016c

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v1, Lnbv;

    invoke-direct {v1, p0}, Lnbv;-><init>(Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    :goto_1
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040255

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->c()V

    .line 84
    const v0, 0x7f100c6a

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 85
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->b:Lndm;

    invoke-interface {v1}, Lndm;->a()Lnde;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 87
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lnde;

    new-instance v1, Lnbw;

    invoke-direct {v1, p0}, Lnbw;-><init>(Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;)V

    .line 88
    invoke-virtual {v0, v1}, Lnde;->a(Lndg;)V

    .line 94
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090937

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lgrs;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;->b:Lndm;

    invoke-interface {v0}, Lndm;->b()V

    .line 100
    return-void
.end method

.method public showTokenContainer(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 156
    const v0, 0x7f100481

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    const v0, 0x7f100480

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 158
    const v1, 0x7f02050b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    return-void
.end method
