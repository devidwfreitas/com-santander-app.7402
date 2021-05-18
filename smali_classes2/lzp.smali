.class public Llzp;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "response-key"


# instance fields
.field private b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

.field private c:Lkvb;

.field private d:Ljava/util/Date;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Llzp;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llzp;->d:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic a(Llzp;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Llzp;->d:Ljava/util/Date;

    return-object p1
.end method

.method public static a(Lkvb;)Llzp;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v1, "response-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Llzp;

    invoke-direct {v1}, Llzp;-><init>()V

    .line 65
    invoke-virtual {v1, v0}, Llzp;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-object v1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Llzp;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Llzp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bdf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Llzp;->g:Landroid/widget/TextView;

    iget-object v1, p0, Llzp;->c:Lkvb;

    invoke-virtual {v1}, Lkvb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    sget-object v1, Lkuq;->DATE:Lkuq;

    invoke-virtual {v0, v1}, Lmhv;->containsRequest(Lkuq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    sget-object v1, Lkuq;->DATE:Lkuq;

    invoke-virtual {v0, v1}, Lmhv;->getRequest(Lkuq;)Lkva;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkva;->j()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lkva;->j()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Llzp;->d:Ljava/util/Date;

    .line 104
    :cond_0
    :goto_0
    iget-object v0, p0, Llzp;->h:Landroid/widget/TextView;

    iget-object v1, p0, Llzp;->d:Ljava/util/Date;

    const-string v2, "dd/MM/yyyy"

    invoke-static {v1, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Llzp;->f:Landroid/widget/FrameLayout;

    new-instance v1, Llzq;

    invoke-direct {v1, p0}, Llzq;-><init>(Llzp;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void

    .line 101
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Llzp;->d:Ljava/util/Date;

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 152
    const v0, 0x7f1009a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llzp;->e:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f100433

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llzp;->f:Landroid/widget/FrameLayout;

    .line 154
    const v0, 0x7f10099f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llzp;->g:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f100434

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llzp;->h:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f1002d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llzp;->i:Landroid/widget/Button;

    .line 157
    iget-object v0, p0, Llzp;->i:Landroid/widget/Button;

    new-instance v1, Llzs;

    invoke-direct {v1, p0}, Llzs;-><init>(Llzp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method static synthetic b(Llzp;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llzp;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 134
    const-string v0, "Seguros_Sinistro_Acionar_QuandoAconteceu_Acao"

    iget-object v1, p0, Llzp;->d:Ljava/util/Date;

    const-string v2, "ddMMyyyy"

    invoke-static {v1, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Llzp;->d:Ljava/util/Date;

    const-string v1, "yyyyMMdd"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Lkva;

    invoke-direct {v1}, Lkva;-><init>()V

    .line 139
    sget-object v2, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v2}, Lmhv;->getCoverageId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 140
    sget-object v2, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v2}, Lmhv;->getCoverageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkva;->b(Ljava/lang/Long;)V

    .line 142
    :cond_0
    sget-object v2, Lkuq;->DATE:Lkuq;

    invoke-virtual {v1, v2}, Lkva;->a(Lkuq;)V

    .line 143
    iget-object v2, p0, Llzp;->d:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lkva;->b(Ljava/util/Date;)V

    .line 144
    sget-object v2, Lkuz;->NEXT:Lkuz;

    invoke-virtual {v1, v2}, Lkva;->a(Lkuz;)V

    .line 145
    invoke-virtual {v1, v0}, Lkva;->a(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Llzp;->c:Lkvb;

    invoke-virtual {v0}, Lkvb;->q()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkva;->a(Ljava/lang/Integer;)V

    .line 147
    iget-object v0, p0, Llzp;->d:Ljava/util/Date;

    invoke-virtual {v1, v0}, Lkva;->b(Ljava/util/Date;)V

    .line 148
    iget-object v0, p0, Llzp;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkva;)V

    .line 149
    return-void
.end method

.method static synthetic c(Llzp;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llzp;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Llzp;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Llzp;->b()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 56
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iput-object p1, p0, Llzp;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    .line 59
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Llzp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llzp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "response-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llzp;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "response-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvb;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvb;

    iput-object v0, p0, Llzp;->c:Lkvb;

    .line 78
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    const v0, 0x7f0401ea

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Llzp;->a(Landroid/view/View;)V

    .line 84
    invoke-direct {p0}, Llzp;->a()V

    .line 86
    return-object v0
.end method
