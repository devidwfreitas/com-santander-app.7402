.class public Lzf;
.super Lacr;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/app/Fragment;

.field private c:Lack;

.field private d:Landroid/view/View;

.field private e:Lys;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/Button;

.field private h:[Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lacg;


# direct methods
.method public constructor <init>(Lack;Landroid/support/v4/app/Fragment;Landroid/view/View;Lys;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 40
    iput-object p2, p0, Lzf;->a:Landroid/support/v4/app/Fragment;

    .line 41
    iput-object p1, p0, Lzf;->c:Lack;

    .line 42
    iput-object p3, p0, Lzf;->d:Landroid/view/View;

    .line 43
    iput-object p4, p0, Lzf;->e:Lys;

    .line 44
    invoke-virtual {p4}, Lys;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzf;->h:[Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lack;->a()Lacf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lacg;

    invoke-direct {v0}, Lacg;-><init>()V

    iput-object v0, p0, Lzf;->j:Lacg;

    .line 52
    :goto_0
    invoke-direct {p0}, Lzf;->a()V

    .line 53
    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lzf;->j:Lacg;

    goto :goto_0
.end method

.method static synthetic a(Lzf;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lzf;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 9

    .prologue
    .line 56
    iget-object v0, p0, Lzf;->d:Landroid/view/View;

    sget v1, Lla;->validacao_cso_textview_posicao:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lzf;->d:Landroid/view/View;

    sget v2, Lla;->validacao_cso_button_opcoes_1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 58
    iget-object v2, p0, Lzf;->d:Landroid/view/View;

    sget v3, Lla;->validacao_cso_button_opcoes_2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 59
    iget-object v3, p0, Lzf;->d:Landroid/view/View;

    sget v4, Lla;->validacao_cso_button_opcoes_3:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 60
    iget-object v4, p0, Lzf;->d:Landroid/view/View;

    sget v5, Lla;->validacao_cso_button_opcoes_4:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 61
    iget-object v5, p0, Lzf;->d:Landroid/view/View;

    sget v6, Lla;->validacao_cso_button_opcoes_5:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 62
    iget-object v6, p0, Lzf;->d:Landroid/view/View;

    sget v7, Lla;->validacao_cso_button_opcoes_6:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 63
    iget-object v7, p0, Lzf;->d:Landroid/view/View;

    sget v8, Lla;->validacao_cso_edit_text_codigo:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lzf;->f:Landroid/widget/EditText;

    .line 64
    iget-object v7, p0, Lzf;->d:Landroid/view/View;

    sget v8, Lla;->validacao_cso_button_confirmar:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lzf;->g:Landroid/widget/Button;

    .line 66
    iget-object v7, p0, Lzf;->e:Lys;

    invoke-virtual {v7}, Lys;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lzf;->h:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ou "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lzf;->h:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lzf;->h:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ou "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lzf;->h:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lzf;->h:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ou "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lzf;->h:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lzf;->h:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ou "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lzf;->h:[Ljava/lang/String;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lzf;->h:[Ljava/lang/String;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ou "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lzf;->h:[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lzf;->i:Ljava/lang/String;

    .line 76
    new-instance v0, Lzg;

    invoke-direct {v0, p0}, Lzg;-><init>(Lzf;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v0, Lzh;

    invoke-direct {v0, p0}, Lzh;-><init>(Lzf;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v0, Lzi;

    invoke-direct {v0, p0}, Lzi;-><init>(Lzf;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v0, Lzj;

    invoke-direct {v0, p0}, Lzj;-><init>(Lzf;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v0, Lzk;

    invoke-direct {v0, p0}, Lzk;-><init>(Lzf;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v0, Lzl;

    invoke-direct {v0, p0}, Lzl;-><init>(Lzf;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lzf;->g:Landroid/widget/Button;

    new-instance v1, Lzm;

    invoke-direct {v1, p0}, Lzm;-><init>(Lzf;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method static synthetic a(Lzf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lzf;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lzf;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lzf;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lzf;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lzf;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lzf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lzf;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lzf;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lzf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lzf;)Lys;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lzf;->e:Lys;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 136
    iget-object v0, p0, Lzf;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lzf;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzf;->i:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lzf;->f:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lzf;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lzf;->g:Landroid/widget/Button;

    iget-object v0, p0, Lzf;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    :cond_0
    return-void

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lzf;)Lack;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lzf;->c:Lack;

    return-object v0
.end method

.method static synthetic f(Lzf;)Lacg;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lzf;->j:Lacg;

    return-object v0
.end method
