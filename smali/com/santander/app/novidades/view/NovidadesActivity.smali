.class public Lcom/santander/app/novidades/view/NovidadesActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Ljsn;


# static fields
.field public static final a:Ljava/lang/String; = "extra_segment"

.field public static final b:I = 0x2


# instance fields
.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/widget/TextView;

.field private g:Ljsc;

.field private h:Lcom/santander/app/widget/PagerIndicator;

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->i:Z

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/novidades/view/NovidadesActivity;)Lcom/santander/app/widget/PagerIndicator;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->h:Lcom/santander/app/widget/PagerIndicator;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/novidades/view/NovidadesActivity;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->i:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/novidades/view/NovidadesActivity;)Ljsc;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->g:Ljsc;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/novidades/view/NovidadesActivity;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->i:Z

    return v0
.end method

.method private d()Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljsi;

    invoke-direct {v0, p0}, Ljsi;-><init>(Lcom/santander/app/novidades/view/NovidadesActivity;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/novidades/view/NovidadesActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljsj;

    invoke-direct {v0, p0}, Ljsj;-><init>(Lcom/santander/app/novidades/view/NovidadesActivity;)V

    return-object v0
.end method

.method private e()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljsl;

    invoke-direct {v0, p0}, Ljsl;-><init>(Lcom/santander/app/novidades/view/NovidadesActivity;)V

    return-object v0
.end method

.method private e(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljsk;

    invoke-direct {v0, p0}, Ljsk;-><init>(Lcom/santander/app/novidades/view/NovidadesActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 117
    const v0, 0x7f0e0019

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->j:I

    .line 118
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->h:Lcom/santander/app/widget/PagerIndicator;

    iget v1, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->j:I

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/PagerIndicator;->setBackgroundColor(I)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->h:Lcom/santander/app/widget/PagerIndicator;

    const v1, 0x7f0205af

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/PagerIndicator;->setIndicatorDrawable(I)V

    .line 121
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljrv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->e:Landroid/support/v4/view/ViewPager;

    new-instance v1, Ljsm;

    iget v2, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->j:I

    invoke-direct {v1, p0, p1, v2}, Ljsm;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 152
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->h:Lcom/santander/app/widget/PagerIndicator;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/PagerIndicator;->setIndicatorCount(I)V

    .line 153
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 125
    const v0, 0x7f0e003e

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->j:I

    .line 126
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->h:Lcom/santander/app/widget/PagerIndicator;

    iget v1, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->j:I

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/PagerIndicator;->setBackgroundColor(I)V

    .line 128
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->h:Lcom/santander/app/widget/PagerIndicator;

    const v1, 0x7f0205b1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/PagerIndicator;->setIndicatorDrawable(I)V

    .line 129
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->d:Landroid/widget/Button;

    const-string v1, "Pular"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->d:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/santander/app/novidades/view/NovidadesActivity;->e(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->c:Landroid/widget/Button;

    const-string v1, "Continuar"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->c:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/santander/app/novidades/view/NovidadesActivity;->d(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 133
    const v0, 0x7f0e0001

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->j:I

    .line 134
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->h:Lcom/santander/app/widget/PagerIndicator;

    iget v1, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->j:I

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/PagerIndicator;->setBackgroundColor(I)V

    .line 136
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->h:Lcom/santander/app/widget/PagerIndicator;

    const v1, 0x7f0205b0

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/PagerIndicator;->setIndicatorDrawable(I)V

    .line 137
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->c:Landroid/widget/Button;

    const-string v1, "Fechar"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->c:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/novidades/view/NovidadesActivity;->e()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f04008f

    invoke-virtual {p0, v0}, Lcom/santander/app/novidades/view/NovidadesActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/novidades/view/NovidadesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/novidades/view/NovidadesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 50
    :cond_0
    const v0, 0x7f0e0019

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->j:I

    .line 52
    const v0, 0x7f1003be

    invoke-virtual {p0, v0}, Lcom/santander/app/novidades/view/NovidadesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->c:Landroid/widget/Button;

    .line 53
    const v0, 0x7f1003bd

    invoke-virtual {p0, v0}, Lcom/santander/app/novidades/view/NovidadesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->d:Landroid/widget/Button;

    .line 54
    const v0, 0x7f1003c0

    invoke-virtual {p0, v0}, Lcom/santander/app/novidades/view/NovidadesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 55
    const v0, 0x7f1003bf

    invoke-virtual {p0, v0}, Lcom/santander/app/novidades/view/NovidadesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->f:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f1003c1

    invoke-virtual {p0, v0}, Lcom/santander/app/novidades/view/NovidadesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/PagerIndicator;

    iput-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->h:Lcom/santander/app/widget/PagerIndicator;

    .line 58
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lcom/santander/app/novidades/view/NovidadesActivity;->d()Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 60
    new-instance v0, Ljsd;

    invoke-direct {v0, p0}, Ljsd;-><init>(Ljsn;)V

    iput-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->g:Ljsc;

    .line 61
    iget-object v0, p0, Lcom/santander/app/novidades/view/NovidadesActivity;->g:Ljsc;

    invoke-interface {v0}, Ljsc;->a()V

    .line 62
    return-void
.end method
