.class public Llmu;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Lkqa;

.field private d:Ljava/lang/String;

.field private e:Landroid/support/design/widget/TextInputEditText;

.field private f:Landroid/support/design/widget/TextInputEditText;

.field private g:Landroid/support/design/widget/TextInputEditText;

.field private h:Landroid/support/design/widget/TextInputEditText;

.field private i:Landroid/support/design/widget/TextInputEditText;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/text/TextWatcher;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/Boolean;

.field private o:Llmz;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private u:Lkxw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "beneficiary-item"

    sput-object v0, Llmu;->a:Ljava/lang/String;

    .line 44
    const-string v0, "certificate-item"

    sput-object v0, Llmu;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Llmu;)Landroid/support/design/widget/TextInputEditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Llmu;->g:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method public static a(Lkqa;Ljava/lang/String;)Llmu;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    sget-object v1, Llmu;->a:Ljava/lang/String;

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v1, Llmu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v1, Llmu;

    invoke-direct {v1}, Llmu;-><init>()V

    .line 76
    invoke-virtual {v1, v0}, Llmu;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v1
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const-string v0, "(##)####-####"

    const-string v1, "(##)#####-####"

    iget-object v2, p0, Llmu;->h:Landroid/support/design/widget/TextInputEditText;

    invoke-static {v0, v1, v2}, Lmhb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v0

    iput-object v0, p0, Llmu;->l:Landroid/text/TextWatcher;

    .line 115
    iget-object v0, p0, Llmu;->h:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Llmu;->l:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Llmu;->c:Lkqa;

    invoke-virtual {v1}, Lkqa;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llmu;->q:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Llmu;->c:Lkqa;

    invoke-virtual {v0}, Lkqa;->c()Lksa;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llmu;->c:Lkqa;

    invoke-virtual {v0}, Lkqa;->c()Lksa;

    move-result-object v0

    invoke-virtual {v0}, Lksa;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Llmu;->c:Lkqa;

    invoke-virtual {v1}, Lkqa;->c()Lksa;

    move-result-object v1

    invoke-virtual {v1}, Lksa;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llmu;->r:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Llmu;->h:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Llmu;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Llmu;->h:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llmu;->n:Ljava/lang/Boolean;

    .line 129
    :goto_0
    iget-object v0, p0, Llmu;->c:Lkqa;

    invoke-virtual {v0}, Lkqa;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Llmu;->c:Lkqa;

    invoke-virtual {v1}, Lkqa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llmu;->s:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Llmu;->g:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Llmu;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Llmu;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llmu;->m:Ljava/lang/Boolean;

    .line 139
    :goto_1
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Llmu;->c:Lkqa;

    invoke-virtual {v1}, Lkqa;->a()Lkqx;

    move-result-object v1

    invoke-virtual {v1}, Lkqx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llmu;->p:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Llmu;->e:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Llmu;->q:Ljava/lang/String;

    invoke-static {v1}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Llmu;->f:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Llmu;->c:Lkqa;

    invoke-virtual {v1}, Lkqa;->g()Lkod;

    move-result-object v1

    invoke-virtual {v1}, Lkod;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Llmu;->i:Landroid/support/design/widget/TextInputEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llmu;->c:Lkqa;

    invoke-virtual {v2}, Lkqa;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Llmu;->k:Landroid/widget/Button;

    new-instance v1, Llmv;

    invoke-direct {v1, p0}, Llmv;-><init>(Llmu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Llmu;->j:Landroid/widget/Button;

    new-instance v1, Llmy;

    invoke-direct {v1, p0}, Llmy;-><init>(Llmu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void

    .line 125
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llmu;->n:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 127
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llmu;->n:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 135
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llmu;->m:Ljava/lang/Boolean;

    goto :goto_1

    .line 137
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llmu;->m:Ljava/lang/Boolean;

    goto/16 :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    const v0, 0x7f100722

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Llmu;->e:Landroid/support/design/widget/TextInputEditText;

    .line 233
    const v0, 0x7f10074f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Llmu;->f:Landroid/support/design/widget/TextInputEditText;

    .line 234
    const v0, 0x7f100751

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Llmu;->g:Landroid/support/design/widget/TextInputEditText;

    .line 235
    const v0, 0x7f100753

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Llmu;->h:Landroid/support/design/widget/TextInputEditText;

    .line 236
    const v0, 0x7f100755

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Llmu;->i:Landroid/support/design/widget/TextInputEditText;

    .line 237
    const v0, 0x7f10072e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llmu;->j:Landroid/widget/Button;

    .line 238
    const v0, 0x7f10072a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llmu;->k:Landroid/widget/Button;

    .line 239
    const v0, 0x7f10074d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Llmu;->t:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 241
    iget-object v0, p0, Llmu;->e:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setInputType(I)V

    .line 242
    iget-object v0, p0, Llmu;->e:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setFocusable(Z)V

    .line 243
    iget-object v0, p0, Llmu;->e:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setFocusableInTouchMode(Z)V

    .line 245
    iget-object v0, p0, Llmu;->f:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setInputType(I)V

    .line 246
    iget-object v0, p0, Llmu;->f:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setFocusable(Z)V

    .line 247
    iget-object v0, p0, Llmu;->f:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setFocusableInTouchMode(Z)V

    .line 249
    iget-object v0, p0, Llmu;->i:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setInputType(I)V

    .line 250
    iget-object v0, p0, Llmu;->i:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setFocusable(Z)V

    .line 251
    iget-object v0, p0, Llmu;->i:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setFocusableInTouchMode(Z)V

    .line 254
    return-void
.end method

.method static synthetic b(Llmu;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Llmu;->m:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Llmu;)Landroid/support/design/widget/TextInputEditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Llmu;->h:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method static synthetic d(Llmu;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Llmu;->n:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic e(Llmu;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Llmu;->t:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method static synthetic f(Llmu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Llmu;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Llmu;)Lkqa;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Llmu;->c:Lkqa;

    return-object v0
.end method

.method static synthetic h(Llmu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Llmu;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Llmu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Llmu;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Llmu;)Llmz;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Llmu;->o:Llmz;

    return-object v0
.end method

.method static synthetic k(Llmu;)Lkxw;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Llmu;->u:Lkxw;

    return-object v0
.end method


# virtual methods
.method public a(Llmz;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Llmu;->o:Llmz;

    .line 68
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Llmu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llmu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Llmu;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llmu;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Llmu;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkqa;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqa;

    iput-object v0, p0, Llmu;->c:Lkqa;

    .line 93
    :cond_0
    invoke-virtual {p0}, Llmu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llmu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Llmu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Llmu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Llmu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llmu;->d:Ljava/lang/String;

    .line 97
    :cond_1
    new-instance v0, Lkxw;

    invoke-direct {v0}, Lkxw;-><init>()V

    iput-object v0, p0, Llmu;->u:Lkxw;

    .line 98
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 258
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 260
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 261
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 262
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    const v0, 0x7f040178

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Llmu;->a(Landroid/view/View;)V

    .line 106
    invoke-direct {p0}, Llmu;->a()V

    .line 108
    return-object v0
.end method
