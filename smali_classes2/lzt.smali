.class public Llzt;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "response-key"


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/support/design/widget/TextInputLayout;

.field private e:Landroid/support/design/widget/TextInputEditText;

.field private f:Landroid/support/design/widget/TextInputLayout;

.field private g:Landroid/support/design/widget/TextInputEditText;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

.field private k:Lkvb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Llzt;)Landroid/support/design/widget/TextInputEditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Llzt;->e:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method public static a(Lkvb;)Llzt;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string v1, "response-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v1, Llzt;

    invoke-direct {v1}, Llzt;-><init>()V

    .line 52
    invoke-virtual {v1, v0}, Llzt;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Llzt;->j:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a()Lmgs;

    move-result-object v0

    sget-object v1, Lkuq;->EMAIL_PHONE:Lkuq;

    invoke-virtual {v0, v1}, Lmgs;->c(Lkuq;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Llzt;->j:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a()Lmgs;

    move-result-object v0

    sget-object v1, Lkuq;->EMAIL_PHONE:Lkuq;

    invoke-virtual {v0, v1}, Lmgs;->b(Lkuq;)Lkva;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Llzt;->e:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Lkva;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Llzt;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Lkva;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Llzt;->k:Lkvb;

    invoke-virtual {v0}, Lkvb;->d()Lkvv;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llzt;->k:Lkvb;

    invoke-virtual {v0}, Lkvb;->d()Lkvv;

    move-result-object v0

    invoke-virtual {v0}, Lkvv;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Llzt;->i:Landroid/widget/TextView;

    iget-object v1, p0, Llzt;->k:Lkvb;

    invoke-virtual {v1}, Lkvb;->d()Lkvv;

    move-result-object v1

    invoke-virtual {v1}, Lkvv;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_1
    iget-object v0, p0, Llzt;->e:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->clearFocus()V

    .line 111
    iget-object v0, p0, Llzt;->c:Landroid/widget/TextView;

    iget-object v1, p0, Llzt;->k:Lkvb;

    invoke-virtual {v1}, Lkvb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Llzt;->g:Landroid/support/design/widget/TextInputEditText;

    const-string v1, "(##)####-####"

    const-string v2, "(##)#####-####"

    iget-object v3, p0, Llzt;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-static {v1, v2, v3}, Lmhb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-object v0, p0, Llzt;->e:Landroid/support/design/widget/TextInputEditText;

    new-instance v1, Llzu;

    invoke-direct {v1, p0}, Llzu;-><init>(Llzt;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object v0, p0, Llzt;->g:Landroid/support/design/widget/TextInputEditText;

    new-instance v1, Llzv;

    invoke-direct {v1, p0}, Llzv;-><init>(Llzt;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    return-void

    .line 98
    :cond_2
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    sget-object v1, Lkuq;->EMAIL_PHONE:Lkuq;

    invoke-virtual {v0, v1}, Lmhv;->containsRequest(Lkuq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    sget-object v1, Lkuq;->EMAIL_PHONE:Lkuq;

    invoke-virtual {v0, v1}, Lmhv;->getRequest(Lkuq;)Lkva;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Llzt;->e:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Lkva;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Llzt;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Lkva;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 197
    const v0, 0x7f10030c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llzt;->b:Landroid/widget/ImageView;

    .line 198
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llzt;->c:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f100750

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Llzt;->d:Landroid/support/design/widget/TextInputLayout;

    .line 200
    const v0, 0x7f100751

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Llzt;->e:Landroid/support/design/widget/TextInputEditText;

    .line 201
    const v0, 0x7f1009a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Llzt;->f:Landroid/support/design/widget/TextInputLayout;

    .line 202
    const v0, 0x7f1009a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Llzt;->g:Landroid/support/design/widget/TextInputEditText;

    .line 203
    const v0, 0x7f1002d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llzt;->h:Landroid/widget/Button;

    .line 204
    iget-object v0, p0, Llzt;->h:Landroid/widget/Button;

    new-instance v1, Llzw;

    invoke-direct {v1, p0}, Llzw;-><init>(Llzt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v0, 0x7f1009a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llzt;->i:Landroid/widget/TextView;

    .line 211
    return-void
.end method

.method static synthetic b(Llzt;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Llzt;->d:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 158
    invoke-direct {p0}, Llzt;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Lkva;

    invoke-direct {v0}, Lkva;-><init>()V

    .line 161
    sget-object v1, Lkuz;->NEXT:Lkuz;

    invoke-virtual {v0, v1}, Lkva;->a(Lkuz;)V

    .line 162
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v1}, Lmhv;->getCoverageId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v1}, Lmhv;->getCoverageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->b(Ljava/lang/Long;)V

    .line 165
    :cond_0
    iget-object v1, p0, Llzt;->k:Lkvb;

    invoke-virtual {v1}, Lkvb;->q()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/lang/Integer;)V

    .line 166
    sget-object v1, Lkuq;->EMAIL_PHONE:Lkuq;

    invoke-virtual {v0, v1}, Lkva;->a(Lkuq;)V

    .line 167
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Llzt;->e:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Llzt;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lmhj;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->a(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Llzt;->e:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->d(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Llzt;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkva;->e(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Llzt;->j:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkva;)V

    .line 173
    :cond_1
    return-void
.end method

.method static synthetic c(Llzt;)Landroid/support/design/widget/TextInputEditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Llzt;->g:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 176
    const/4 v0, 0x1

    .line 177
    iget-object v2, p0, Llzt;->e:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 178
    iget-object v0, p0, Llzt;->d:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0}, Llzt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09044e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 185
    :cond_0
    :goto_0
    iget-object v2, p0, Llzt;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 186
    iget-object v0, p0, Llzt;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0}, Llzt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090463

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 193
    :goto_1
    return v1

    .line 180
    :cond_1
    iget-object v2, p0, Llzt;->e:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    iget-object v0, p0, Llzt;->d:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0}, Llzt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09044f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 182
    goto :goto_0

    .line 188
    :cond_2
    iget-object v2, p0, Llzt;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Llzt;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    .line 189
    iget-object v0, p0, Llzt;->f:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p0}, Llzt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090464

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method static synthetic d(Llzt;)Landroid/support/design/widget/TextInputLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Llzt;->f:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic e(Llzt;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Llzt;->b()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 62
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iput-object p1, p0, Llzt;->j:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    .line 65
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

    .line 72
    invoke-virtual {p0}, Llzt;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llzt;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "response-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llzt;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "response-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkvb;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvb;

    iput-object v0, p0, Llzt;->k:Lkvb;

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lkvb;

    invoke-direct {v0}, Lkvb;-><init>()V

    iput-object v0, p0, Llzt;->k:Lkvb;

    goto :goto_0
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
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 83
    const v0, 0x7f0401ed

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Llzt;->a(Landroid/view/View;)V

    .line 86
    invoke-direct {p0}, Llzt;->a()V

    .line 87
    return-object v0
.end method
