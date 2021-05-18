.class public Lfxv;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lfyk;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/Boolean;


# instance fields
.field public b:Lfyg;

.field public c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfyk;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Lfye;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lfxv;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lfye;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfye;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lfyk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    const v0, 0x7f040313

    invoke-direct {p0, p2, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 38
    new-instance v0, Lfyg;

    invoke-direct {v0}, Lfyg;-><init>()V

    iput-object v0, p0, Lfxv;->b:Lfyg;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lfxv;->c:I

    .line 44
    iput-object p1, p0, Lfxv;->g:Lfye;

    .line 45
    iput-object p2, p0, Lfxv;->f:Landroid/content/Context;

    .line 46
    iput-object p4, p0, Lfxv;->d:Ljava/util/List;

    .line 47
    iput p3, p0, Lfxv;->e:I

    .line 48
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lfxv;->a:Ljava/lang/Boolean;

    .line 50
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    return-void
.end method

.method static synthetic a(Lfxv;)Lfye;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lfxv;->g:Lfye;

    return-object v0
.end method


# virtual methods
.method public a(I)Lfyk;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfyk;

    return-object v0
.end method

.method public a(Lfyk;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1}, Lfyk;->h()Z

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Lfyk;->a(Z)V

    .line 68
    return-void
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lfxv;->a(I)Lfyk;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 73
    .line 75
    iget-object v0, p0, Lfxv;->d:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 77
    if-nez p2, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lfxv;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    iget v1, p0, Lfxv;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 81
    new-instance v0, Lfyd;

    invoke-direct {v0}, Lfyd;-><init>()V

    .line 82
    new-instance v1, Lfyd;

    invoke-direct {v1}, Lfyd;-><init>()V

    .line 83
    iget-object v0, p0, Lfxv;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfyk;

    invoke-static {v1, v0}, Lfyd;->a(Lfyd;Lfyk;)Lfyk;

    .line 84
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfyd;

    .line 88
    const v1, 0x7f100fe5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lfyd;->a(Lfyd;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 89
    invoke-static {v0}, Lfyd;->b(Lfyd;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v2

    invoke-virtual {v2}, Lfyk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 91
    invoke-static {v0}, Lfyd;->b(Lfyd;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :goto_0
    const v1, 0x7f100fe6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v0, v1}, Lfyd;->a(Lfyd;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 97
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->h()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 98
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 103
    :goto_1
    const v1, 0x7f100fe4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {v0, v1}, Lfyd;->a(Lfyd;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 105
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget v1, p0, Lfxv;->c:I

    if-nez v1, :cond_1

    .line 108
    iget v1, p0, Lfxv;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfxv;->c:I

    .line 109
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->k(Ljava/lang/String;)V

    .line 110
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Ljava/lang/String;)V

    .line 111
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Ljava/lang/String;)V

    .line 112
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b(Ljava/lang/String;)V

    .line 113
    new-instance v1, Lfyg;

    invoke-direct {v1}, Lfyg;-><init>()V

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lfyg;)V

    .line 114
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->a(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->b(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->d(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->e(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->c(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v2

    invoke-virtual {v2}, Lfyk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->g(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 127
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 128
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 129
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 130
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lfxw;

    invoke-direct {v2, p0, v0}, Lfxw;-><init>(Lfxv;Lfyd;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    :cond_2
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "05"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->k(Ljava/lang/String;)V

    .line 174
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Ljava/lang/String;)V

    .line 175
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Ljava/lang/String;)V

    .line 176
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b(Ljava/lang/String;)V

    .line 178
    new-instance v1, Lfyg;

    invoke-direct {v1}, Lfyg;-><init>()V

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lfyg;)V

    .line 179
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->a(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->b(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->d(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->e(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->c(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v2

    invoke-virtual {v2}, Lfyk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->g(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 193
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 194
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 195
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 197
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lfxx;

    invoke-direct {v2, p0, v0}, Lfxx;-><init>(Lfxv;Lfyd;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 217
    :cond_3
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "06"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->k(Ljava/lang/String;)V

    .line 220
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Ljava/lang/String;)V

    .line 221
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Ljava/lang/String;)V

    .line 222
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b(Ljava/lang/String;)V

    .line 224
    new-instance v1, Lfyg;

    invoke-direct {v1}, Lfyg;-><init>()V

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lfyg;)V

    .line 225
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->a(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->b(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->d(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->e(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->c(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v2

    invoke-virtual {v2}, Lfyk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->g(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 238
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 239
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 241
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 242
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lfxy;

    invoke-direct {v2, p0, v0}, Lfxy;-><init>(Lfxv;Lfyd;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 265
    :cond_4
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 267
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->k(Ljava/lang/String;)V

    .line 268
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Ljava/lang/String;)V

    .line 269
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Ljava/lang/String;)V

    .line 270
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b(Ljava/lang/String;)V

    .line 272
    new-instance v1, Lfyg;

    invoke-direct {v1}, Lfyg;-><init>()V

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lfyg;)V

    .line 273
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->a(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->b(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->d(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->e(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->c(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v2

    invoke-virtual {v2}, Lfyk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->g(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 286
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 287
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 289
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 290
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lfxz;

    invoke-direct {v2, p0, v0}, Lfxz;-><init>(Lfxv;Lfyd;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 313
    :cond_5
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 314
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 315
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OCL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    sget-object v1, Lfxv;->a:Ljava/lang/Boolean;

    .line 316
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 317
    invoke-static {v0}, Lfyd;->d(Lfyd;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 318
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lfxv;->a:Ljava/lang/Boolean;

    .line 321
    :cond_7
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 323
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->k(Ljava/lang/String;)V

    .line 324
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Ljava/lang/String;)V

    .line 325
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Ljava/lang/String;)V

    .line 326
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b(Ljava/lang/String;)V

    .line 328
    new-instance v1, Lfyg;

    invoke-direct {v1}, Lfyg;-><init>()V

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lfyg;)V

    .line 329
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->a(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->b(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->d(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->e(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->c(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v2

    invoke-virtual {v2}, Lfyk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->g(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 342
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 344
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 345
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 347
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 348
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lfya;

    invoke-direct {v2, p0, v0}, Lfya;-><init>(Lfxv;Lfyd;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 371
    :cond_8
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 373
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->k(Ljava/lang/String;)V

    .line 374
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Ljava/lang/String;)V

    .line 375
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Ljava/lang/String;)V

    .line 376
    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v1

    invoke-virtual {v1}, Lfyk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b(Ljava/lang/String;)V

    .line 378
    new-instance v1, Lfyg;

    invoke-direct {v1}, Lfyg;-><init>()V

    invoke-static {v1}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lfyg;)V

    .line 379
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->a(Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->b(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->d(Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->e(Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->c(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v1

    invoke-static {v0}, Lfyd;->a(Lfyd;)Lfyk;

    move-result-object v2

    invoke-virtual {v2}, Lfyk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfyg;->g(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->n()Lfyg;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-static {v0}, Lfyd;->d(Lfyd;)Landroid/widget/CheckBox;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 392
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 393
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 395
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 396
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 398
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 399
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lfyb;

    invoke-direct {v2, p0, v0}, Lfyb;-><init>(Lfxv;Lfyd;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 423
    :cond_9
    invoke-static {v0}, Lfyd;->d(Lfyd;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lfyc;

    invoke-direct {v1, p0}, Lfyc;-><init>(Lfxv;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 434
    :cond_a
    :goto_2
    return-object p2

    .line 93
    :cond_b
    invoke-static {v0}, Lfyd;->b(Lfyd;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 100
    :cond_c
    :try_start_1
    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
