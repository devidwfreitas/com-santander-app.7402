.class public Lmad;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "response-key"


# instance fields
.field private final b:I

.field private c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

.field private d:Lkvb;

.field private e:Ljava/lang/Double;

.field private f:Lkvb;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/santander/app/seguros/ui/widgets/SliderValue;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Lcom/santander/app/components/view/SantanderEditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    const/16 v0, 0x14

    iput v0, p0, Lmad;->b:I

    .line 50
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lmad;->e:Ljava/lang/Double;

    return-void
.end method

.method public static a(Lkvb;)Lmad;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string v1, "response-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lmad;

    invoke-direct {v1}, Lmad;-><init>()V

    .line 73
    invoke-virtual {v1, v0}, Lmad;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 110
    .line 113
    iget-object v0, p0, Lmad;->d:Lkvb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmad;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->d()Lkvv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmad;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->d()Lkvv;

    move-result-object v0

    invoke-virtual {v0}, Lkvv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmad;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->d()Lkvv;

    move-result-object v0

    invoke-virtual {v0}, Lkvv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lmad;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->B:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 117
    iget-object v0, p0, Lmad;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->d()Lkvv;

    move-result-object v0

    invoke-virtual {v0}, Lkvv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 122
    :cond_0
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    sget-object v1, Lkuq;->SLIDER_VALUE:Lkuq;

    invoke-virtual {v0, v1}, Lmhv;->containsRequest(Lkuq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    sget-object v1, Lkuq;->SLIDER_VALUE:Lkuq;

    invoke-virtual {v0, v1}, Lmhv;->getRequest(Lkuq;)Lkva;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkva;->k()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lmad;->m:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lkva;->k()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lmhj;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lmad;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lmad;->d:Lkvb;

    invoke-virtual {v1}, Lkvb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 198
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmad;->g:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmad;->h:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f1002d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmad;->l:Landroid/widget/Button;

    .line 204
    const v0, 0x7f100a16

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderEditText;

    iput-object v0, p0, Lmad;->m:Lcom/santander/app/components/view/SantanderEditText;

    .line 205
    iget-object v0, p0, Lmad;->l:Landroid/widget/Button;

    new-instance v1, Lmae;

    invoke-direct {v1, p0}, Lmae;-><init>(Lmad;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    new-instance v0, Lguj;

    invoke-direct {v0}, Lguj;-><init>()V

    .line 213
    iget-object v1, p0, Lmad;->m:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, v1}, Lguj;->a(Landroid/widget/EditText;)V

    .line 214
    iget-object v1, p0, Lmad;->m:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 215
    return-void
.end method

.method static synthetic a(Lmad;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lmad;->c()V

    return-void
.end method

.method private b()I
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lmad;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->d()Lkvv;

    move-result-object v0

    invoke-virtual {v0}, Lkvv;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmad;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->d()Lkvv;

    move-result-object v0

    invoke-virtual {v0}, Lkvv;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lmad;->d:Lkvb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmad;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->d()Lkvv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmad;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->d()Lkvv;

    move-result-object v0

    invoke-virtual {v0}, Lkvv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmad;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->d()Lkvv;

    move-result-object v0

    invoke-virtual {v0}, Lkvv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lmad;->d:Lkvb;

    invoke-virtual {v0}, Lkvb;->d()Lkvv;

    move-result-object v0

    invoke-virtual {v0}, Lkvv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 164
    iget-object v2, p0, Lmad;->d:Lkvb;

    invoke-virtual {v2}, Lkvb;->d()Lkvv;

    move-result-object v2

    invoke-virtual {v2}, Lkvv;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 165
    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 173
    iget-object v0, p0, Lmad;->m:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lmad;->m:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lmad;->e:Ljava/lang/Double;

    .line 175
    const-string v0, "Seguros_Sinistro_Acionar_EstimativaPrejuizo_Acao"

    iget-object v1, p0, Lmad;->e:Ljava/lang/Double;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lmad;->e:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lmad;->d:Lkvb;

    invoke-virtual {v2}, Lkvb;->d()Lkvv;

    move-result-object v2

    invoke-virtual {v2}, Lkvv;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lmad;->e:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lmad;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v2, v2, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->B:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 178
    new-instance v0, Lkva;

    invoke-direct {v0}, Lkva;-><init>()V

    .line 179
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v1}, Lmhv;->getCoverageId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 180
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v1}, Lmhv;->getCoverageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->b(Ljava/lang/Long;)V

    .line 182
    :cond_0
    sget-object v1, Lkuz;->NEXT:Lkuz;

    invoke-virtual {v0, v1}, Lkva;->a(Lkuz;)V

    .line 183
    iget-object v1, p0, Lmad;->d:Lkvb;

    invoke-virtual {v1}, Lkvb;->q()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/lang/Integer;)V

    .line 184
    iget-object v1, p0, Lmad;->e:Ljava/lang/Double;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/lang/String;)V

    .line 185
    sget-object v1, Lkuq;->SLIDER_VALUE:Lkuq;

    invoke-virtual {v0, v1}, Lkva;->a(Lkuq;)V

    .line 186
    iget-object v1, p0, Lmad;->e:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/lang/Double;)V

    .line 187
    iget-object v1, p0, Lmad;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkva;)V

    .line 195
    :goto_1
    return-void

    .line 173
    :cond_1
    const-string v0, "0"

    goto/16 :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lmad;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "O valor precisa ser maior ou igual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmad;->d:Lkvb;

    .line 190
    invoke-virtual {v2}, Lkvb;->d()Lkvv;

    move-result-object v2

    invoke-virtual {v2}, Lkvv;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lmhj;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " e menor ou igual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmad;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v2, v2, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->B:Ljava/lang/String;

    .line 192
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lmhj;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 64
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iput-object p1, p0, Lmad;->c:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    .line 67
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
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    new-instance v0, Lkvb;

    invoke-direct {v0}, Lkvb;-><init>()V

    iput-object v0, p0, Lmad;->f:Lkvb;

    .line 83
    invoke-virtual {p0}, Lmad;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmad;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "response-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lmad;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "response-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvb;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvb;

    iput-object v0, p0, Lmad;->d:Lkvb;

    .line 98
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
    .line 102
    const v0, 0x7f04020a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, Lmad;->a(Landroid/view/View;)V

    .line 104
    invoke-direct {p0}, Lmad;->a()V

    .line 105
    return-object v0
.end method
