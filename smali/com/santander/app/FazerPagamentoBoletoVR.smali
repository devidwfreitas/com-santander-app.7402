.class public Lcom/santander/app/FazerPagamentoBoletoVR;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Lfvk;

.field private d:Landroid/app/Dialog;

.field private e:Landroid/widget/RadioGroup;

.field private f:Landroid/widget/RadioGroup;

.field private g:Landroid/widget/EditText;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/Button;

.field private y:Lguk;

.field private z:Lguk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 38
    const-string v0, "FazerPagamentoBoletoVR"

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoBoletoVR;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->d:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoBoletoVR;Lfvk;)Lfvk;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->c:Lfvk;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoBoletoVR;)Lguk;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->y:Lguk;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/FazerPagamentoBoletoVR;Lguk;)Lguk;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->y:Lguk;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 142
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->e:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->e:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->e:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 146
    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->c:Lfvk;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Lfvk;->I(Ljava/lang/String;)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 160
    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->c:Lfvk;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Lfvk;->J(Ljava/lang/String;)V

    .line 171
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnai;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 173
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoBoletoVR;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090309

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    :goto_2
    return-void

    .line 148
    :cond_0
    if-ne v0, v2, :cond_1

    .line 149
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->c:Lfvk;

    const-string v1, "J"

    invoke-virtual {v0, v1}, Lfvk;->I(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoBoletoVR;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 162
    :cond_2
    if-ne v0, v2, :cond_3

    .line 163
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->c:Lfvk;

    const-string v1, "J"

    invoke-virtual {v0, v1}, Lfvk;->J(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoBoletoVR;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 176
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->c:Lfvk;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->q(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :try_start_2
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnai;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 186
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 187
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoBoletoVR;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090309

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 191
    :catch_0
    move-exception v0

    .line 192
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->w:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 177
    :catch_1
    move-exception v0

    .line 178
    iget-object v1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 190
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->c:Lfvk;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->w:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->r(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 197
    new-instance v0, Lfhq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfhq;-><init>(Lcom/santander/app/FazerPagamentoBoletoVR;Lfhn;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfhq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2
.end method

.method public static synthetic b(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/FazerPagamentoBoletoVR;Lguk;)Lguk;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->z:Lguk;

    return-object p1
.end method

.method public static synthetic c(Lcom/santander/app/FazerPagamentoBoletoVR;)Lguk;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->z:Lguk;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/FazerPagamentoBoletoVR;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/santander/app/FazerPagamentoBoletoVR;->a()V

    return-void
.end method

.method public static synthetic f(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/FazerPagamentoBoletoVR;)Lfvk;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->c:Lfvk;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->d:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0401ca

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoBoletoVR;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    iput-object p0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->b:Landroid/app/Activity;

    .line 66
    const v1, 0x7f0904a1

    invoke-virtual {p0, v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/FazerPagamentoBoletoVR;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pagamentoBean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lfvk;

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->c:Lfvk;

    .line 71
    const v0, 0x7f1008ad

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->e:Landroid/widget/RadioGroup;

    .line 72
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->e:Landroid/widget/RadioGroup;

    const v1, 0x7f1008ae

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 73
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->e:Landroid/widget/RadioGroup;

    new-instance v1, Lfhn;

    invoke-direct {v1, p0}, Lfhn;-><init>(Lcom/santander/app/FazerPagamentoBoletoVR;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 93
    const v0, 0x7f1008b2

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->f:Landroid/widget/RadioGroup;

    .line 94
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->f:Landroid/widget/RadioGroup;

    const v1, 0x7f1008b3

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 95
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->f:Landroid/widget/RadioGroup;

    new-instance v1, Lfho;

    invoke-direct {v1, p0}, Lfho;-><init>(Lcom/santander/app/FazerPagamentoBoletoVR;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 116
    const v0, 0x7f1008b0

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->g:Landroid/widget/EditText;

    .line 117
    new-instance v0, Lguk;

    const-string v1, "F"

    invoke-direct {v0, v1}, Lguk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->y:Lguk;

    .line 118
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->y:Lguk;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lguk;->a(Landroid/widget/EditText;)V

    .line 119
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->y:Lguk;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    const v0, 0x7f1008b5

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->w:Landroid/widget/EditText;

    .line 123
    new-instance v0, Lguk;

    const-string v1, "F"

    invoke-direct {v0, v1}, Lguk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->z:Lguk;

    .line 124
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->z:Lguk;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lguk;->a(Landroid/widget/EditText;)V

    .line 125
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->w:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->z:Lguk;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    const v0, 0x7f1008b6

    invoke-virtual {p0, v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->x:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/santander/app/FazerPagamentoBoletoVR;->x:Landroid/widget/Button;

    new-instance v1, Lfhp;

    invoke-direct {v1, p0}, Lfhp;-><init>(Lcom/santander/app/FazerPagamentoBoletoVR;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method
