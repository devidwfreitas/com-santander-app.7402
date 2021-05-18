.class public Lglu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lglb;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Z

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Ljdf;

.field private p:I

.field private q:Lgla;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lglu;->d:Z

    .line 54
    iput-object p2, p0, Lglu;->e:Landroid/view/View$OnClickListener;

    .line 55
    iput-object p1, p0, Lglu;->a:Landroid/app/Activity;

    .line 56
    return-void
.end method

.method private a(Landroid/view/View;Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 86
    const v0, 0x7f10059d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lglu;->f:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f100599

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lglu;->j:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f10059a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lglu;->h:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f10059c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lglu;->i:Landroid/widget/Button;

    .line 90
    const v0, 0x7f100598

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lglu;->g:Landroid/widget/RelativeLayout;

    .line 91
    const v0, 0x7f1005a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lglu;->k:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f1005a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lglu;->l:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f1005a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lglu;->m:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f1005a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lglu;->n:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lglu;->i:Landroid/widget/Button;

    const v1, 0x7f0906d5

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lglu;->j:Landroid/widget/TextView;

    const v1, 0x7f0906f8

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lglu;->k:Landroid/widget/TextView;

    const v1, 0x7f0906d4

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lglu;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lglu;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lglu;->i:Landroid/widget/Button;

    new-instance v1, Lglv;

    invoke-direct {v1, p0}, Lglv;-><init>(Lglu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lglu;->f:Landroid/widget/LinearLayout;

    new-instance v1, Lglw;

    invoke-direct {v1, p0}, Lglw;-><init>(Lglu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lglu;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lglx;

    invoke-direct {v1, p0}, Lglx;-><init>(Lglu;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lglu;->a(Z)V

    .line 134
    return-void
.end method

.method static synthetic a(Lglu;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lglu;->e()V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 138
    if-nez p1, :cond_0

    .line 139
    iget-boolean v0, p0, Lglu;->d:Z

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "Outros_ExibirEOcultar_Investimentos_Acao"

    const-string v1, "Ocultar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lglu;->d:Z

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lglu;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lglu;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lglu;->h:Landroid/widget/ImageView;

    const v1, 0x7f0204d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    :goto_1
    return-void

    .line 142
    :cond_1
    const-string v0, "Outros_ExibirEOcultar_Investimentos_Acao"

    const-string v1, "Exibir "

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lglu;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lglu;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lglu;->h:Landroid/widget/ImageView;

    const v1, 0x7f0204f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method static synthetic a(Lglu;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lglu;->d:Z

    return p1
.end method

.method static synthetic b(Lglu;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lglu;->a(Z)V

    return-void
.end method

.method static synthetic b(Lglu;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lglu;->d:Z

    return v0
.end method

.method static synthetic c(Lglu;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lglu;->e:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lglu;->a:Landroid/app/Activity;

    iget-object v1, p0, Lglu;->o:Ljdf;

    invoke-static {v0, v1}, Ljcw;->a(Landroid/app/Activity;Ljdf;)V

    .line 159
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f040120

    return v0
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Ljava/util/List;)Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<*>;)",
            "Landroid/support/v4/view/PagerAdapter;"
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 75
    const v0, 0x7f1005c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lglu;->b:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lglu;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lglu;->a:Landroid/app/Activity;

    const v2, 0x7f09069a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v0, 0x7f1005c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lglu;->c:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lglu;->c:Landroid/widget/ImageView;

    const v1, 0x7f020421

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lglu;->a:Landroid/app/Activity;

    invoke-direct {p0, p1, v0}, Lglu;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 82
    return-void
.end method

.method public a(Lgla;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lglu;->q:Lgla;

    .line 209
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 194
    return-void
.end method

.method public a(Ljdf;)V
    .locals 2

    .prologue
    .line 172
    iput-object p1, p0, Lglu;->o:Ljdf;

    .line 173
    iget-object v0, p0, Lglu;->o:Ljdf;

    invoke-virtual {v0}, Ljdf;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lglu;->o:Ljdf;

    .line 174
    invoke-virtual {v0}, Ljdf;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R$ 0,00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lglu;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lglu;->o:Ljdf;

    invoke-virtual {v1}, Ljdf;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lglu;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljdf;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 65
    iput p1, p0, Lglu;->p:I

    .line 66
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lglu;->a(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lglu;->l:Landroid/widget/TextView;

    const-string v1, "Servi\u00e7o indispon\u00edvel"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method
