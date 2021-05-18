.class public Ljhw;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljdl;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljie;

.field private d:Ljem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljie;Ljem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljdl;",
            ">;",
            "Ljie;",
            "Ljem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Ljhw;->a:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Ljhw;->b:Ljava/util/List;

    .line 46
    iput-object p3, p0, Ljhw;->c:Ljie;

    .line 47
    iput-object p4, p0, Ljhw;->d:Ljem;

    .line 49
    return-void
.end method

.method private a(Ljdx;)Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 189
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Ljhw;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 193
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 194
    iget-object v1, p0, Ljhw;->a:Landroid/content/Context;

    const v2, 0x7f02007a

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Ljhw;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 197
    iget-object v2, p0, Ljhw;->a:Landroid/content/Context;

    const v3, 0x7f0e0043

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 198
    iget-object v2, p0, Ljhw;->a:Landroid/content/Context;

    const v3, 0x7f0e0024

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 199
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    invoke-virtual {p1}, Ljdx;->t()Ljdk;

    move-result-object v2

    invoke-virtual {v2}, Ljdk;->label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 203
    new-instance v2, Ljhy;

    invoke-direct {v2, p0}, Ljhy;-><init>(Ljhw;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    return-object v0
.end method

.method static synthetic a(Ljhw;)Ljie;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljhw;->c:Ljie;

    return-object v0
.end method

.method private a(Ljdx;Ljic;)V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ljdx;

    invoke-direct {v0}, Ljdx;-><init>()V

    .line 141
    invoke-virtual {p1}, Ljdx;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {p1}, Ljdx;->a()Ljdx;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    :goto_0
    sget-object v1, Ljdk;->RESGATAR:Ljdk;

    invoke-virtual {v0, v1}, Ljdx;->a(Ljdk;)V

    .line 148
    invoke-static {p2}, Ljic;->k(Ljic;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0, v0}, Ljhw;->a(Ljdx;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    :cond_0
    invoke-virtual {p1}, Ljdx;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :try_start_1
    invoke-virtual {p1}, Ljdx;->a()Ljdx;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 156
    :goto_1
    sget-object v1, Ljdk;->APLICAR:Ljdk;

    invoke-virtual {v0, v1}, Ljdx;->a(Ljdk;)V

    .line 157
    invoke-static {p2}, Ljic;->k(Ljic;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0, v0}, Ljhw;->a(Ljdx;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    :cond_1
    invoke-virtual {p1}, Ljdx;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    :try_start_2
    invoke-virtual {p1}, Ljdx;->a()Ljdx;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 165
    :goto_2
    sget-object v1, Ljdk;->CANCELAR:Ljdk;

    invoke-virtual {v0, v1}, Ljdx;->a(Ljdk;)V

    .line 166
    invoke-static {p2}, Ljic;->k(Ljic;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0, v0}, Ljhw;->a(Ljdx;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    :cond_2
    invoke-virtual {p1}, Ljdx;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    :try_start_3
    invoke-virtual {p1}, Ljdx;->a()Ljdx;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 174
    :goto_3
    sget-object v1, Ljdk;->EXTRATO:Ljdk;

    invoke-virtual {v0, v1}, Ljdx;->a(Ljdk;)V

    .line 175
    invoke-static {p2}, Ljic;->k(Ljic;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0, v0}, Ljhw;->a(Ljdx;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    :cond_3
    invoke-virtual {p1}, Ljdx;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 179
    :try_start_4
    invoke-virtual {p1}, Ljdx;->a()Ljdx;
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    .line 183
    :goto_4
    sget-object v1, Ljdk;->REAPLICAR:Ljdk;

    invoke-virtual {v0, v1}, Ljdx;->a(Ljdk;)V

    .line 184
    invoke-static {p2}, Ljic;->k(Ljic;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0, v0}, Ljhw;->a(Ljdx;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    :cond_4
    return-void

    .line 144
    :catch_0
    move-exception v1

    .line 145
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    :catch_1
    move-exception v1

    .line 154
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 162
    :catch_2
    move-exception v1

    .line 163
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 171
    :catch_3
    move-exception v1

    .line 172
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 180
    :catch_4
    move-exception v1

    .line 181
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Ljhw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    invoke-virtual {p0}, Ljhw;->notifyDataSetChanged()V

    .line 320
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljhw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdl;

    invoke-virtual {v0}, Ljdl;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 58
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 65
    if-nez p4, :cond_0

    .line 67
    iget-object v0, p0, Ljhw;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 68
    const v1, 0x7f040300

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 69
    new-instance v1, Ljic;

    invoke-direct {v1, v2}, Ljic;-><init>(Ljhx;)V

    .line 71
    const v0, 0x7f100fb0

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Ljic;->a(Ljic;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f100fb1

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Ljic;->a(Ljic;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 74
    const v0, 0x7f100a04

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Ljic;->b(Ljic;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f100fb2

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Ljic;->b(Ljic;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 77
    const v0, 0x7f100fb6

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Ljic;->c(Ljic;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 78
    const v0, 0x7f100fb7

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Ljic;->c(Ljic;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 79
    const v0, 0x7f10049f

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Ljic;->d(Ljic;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 80
    const v0, 0x7f100c31

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Ljic;->e(Ljic;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 81
    const v0, 0x7f100fb4

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Ljic;->f(Ljic;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 82
    const v0, 0x7f100fb5

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Ljic;->g(Ljic;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 83
    const v0, 0x7f100fb3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Ljic;->h(Ljic;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 84
    const v0, 0x7f100fb8

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Ljic;->d(Ljic;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 86
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    :goto_0
    iget-object v0, p0, Ljhw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdl;

    invoke-virtual {v0}, Ljdl;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdx;

    .line 93
    invoke-static {v1}, Ljic;->a(Ljic;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljdx;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-static {v1}, Ljic;->b(Ljic;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljdx;->N()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {v1}, Ljic;->c(Ljic;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljdx;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {v1}, Ljic;->d(Ljic;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljdx;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    sget-object v2, Ljib;->a:[I

    iget-object v3, p0, Ljhw;->d:Ljem;

    invoke-virtual {v3}, Ljem;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 121
    :goto_1
    invoke-direct {p0, v0, v1}, Ljhw;->a(Ljdx;Ljic;)V

    .line 123
    new-instance v0, Ljhx;

    invoke-direct {v0, p0, v1, p1, p2}, Ljhx;-><init>(Ljhw;Ljic;II)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-object p4

    .line 88
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljic;

    move-object v1, v0

    goto :goto_0

    .line 100
    :pswitch_0
    invoke-virtual {v0, v4}, Ljdx;->f(Z)V

    .line 101
    invoke-virtual {v0, v4}, Ljdx;->c(Z)V

    .line 102
    invoke-static {v1}, Ljic;->e(Ljic;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    invoke-static {v1}, Ljic;->f(Ljic;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljdx;->X()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {v1}, Ljic;->g(Ljic;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    invoke-static {v1}, Ljic;->h(Ljic;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljdx;->Y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {v1}, Ljic;->i(Ljic;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Aplica\u00e7\u00e3o m\u00ednima adicional"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {v1}, Ljic;->j(Ljic;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Ljdx;->u()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NAO DISPONIVEL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "N\u00e3o se aplica"

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljdx;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 113
    :pswitch_1
    invoke-virtual {v0, v4}, Ljdx;->d(Z)V

    .line 114
    invoke-static {v1}, Ljic;->e(Ljic;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    invoke-static {v1}, Ljic;->g(Ljic;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    invoke-static {v1}, Ljic;->i(Ljic;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Aplica\u00e7\u00e3o m\u00ednima"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-static {v1}, Ljic;->j(Ljic;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Ljdx;->v()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NAO DISPONIVEL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "N\u00e3o se aplica"

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v0}, Ljdx;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Ljhw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdl;

    invoke-virtual {v0}, Ljdl;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Ljhw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Ljhw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 240
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    if-nez p3, :cond_0

    .line 249
    iget-object v0, p0, Ljhw;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 250
    const v1, 0x7f0402fc

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 251
    new-instance v1, Ljid;

    invoke-direct {v1, v2}, Ljid;-><init>(Ljhx;)V

    .line 253
    const v0, 0x7f10032d

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Ljid;->a(Ljid;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 254
    const v0, 0x7f100fa7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Ljid;->a(Ljid;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 256
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 261
    :goto_0
    iget-object v0, p0, Ljhw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdl;

    .line 263
    invoke-static {v1}, Ljid;->a(Ljid;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljdl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-static {v1}, Ljid;->b(Ljid;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Ljhz;

    invoke-direct {v1, p0, p1}, Ljhz;-><init>(Ljhw;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    check-cast p4, Landroid/widget/ExpandableListView;

    .line 274
    invoke-virtual {p4, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 276
    new-instance v0, Ljia;

    invoke-direct {v0, p0, p1}, Ljia;-><init>(Ljhw;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    return-object p3

    .line 258
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljid;

    move-object v1, v0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method
