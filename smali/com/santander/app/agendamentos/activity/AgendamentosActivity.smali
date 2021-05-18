.class public Lcom/santander/app/agendamentos/activity/AgendamentosActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lfrb;",
            ">;>;"
        }
    .end annotation
.end field

.field private B:I

.field private C:Lgoo;

.field private D:Lcom/santander/app/widget/Indicator;

.field private E:Landroid/support/v4/view/ViewPager;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageView;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/santander/app/contacorrente/domain/Conta;

.field private J:Landroid/widget/LinearLayout;

.field private K:Landroid/widget/ImageView;

.field private L:I

.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/GridView;

.field private c:Lfqq;

.field private d:Ljava/util/Calendar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private w:I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private x:I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private final y:Landroid/text/format/DateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "NewApi",
            "NewApi",
            "NewApi"
        }
    .end annotation
.end field

.field private z:Lfrc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 70
    const-string v0, "AgendamentosActivity"

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->a:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/text/format/DateFormat;

    invoke-direct {v0}, Landroid/text/format/DateFormat;-><init>()V

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->y:Landroid/text/format/DateFormat;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->I:Lcom/santander/app/contacorrente/domain/Conta;

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/16 v4, 0xa

    .line 133
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020287

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 141
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 147
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    invoke-virtual {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 150
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 151
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 155
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 164
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 165
    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->J:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;Lfrc;)Lfrc;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->z:Lfrc;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 671
    new-instance v0, Lfqr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfqr;-><init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;Lfqm;)V

    .line 672
    invoke-virtual {v0, p1}, Lfqr;->a(I)V

    .line 673
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfqr;->a(Z)V

    .line 674
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfqr;->c([Ljava/lang/Object;)Lgne;

    .line 684
    return-void
.end method

.method private a(II)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 493
    new-instance v0, Lfqq;

    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f101175

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lfqq;-><init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->c:Lfqq;

    .line 494
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->d:Ljava/util/Calendar;

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->d:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 495
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->e:Landroid/widget/TextView;

    const-string v1, "%s %s"

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->d:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lnaq;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->d:Ljava/util/Calendar;

    .line 496
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 495
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->c:Lfqq;

    invoke-virtual {v0}, Lfqq;->notifyDataSetChanged()V

    .line 498
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->c:Lfqq;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 499
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Lfrc;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->z:Lfrc;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 169
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->d:Ljava/util/Calendar;

    .line 170
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->d:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->w:I

    .line 171
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->d:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->x:I

    .line 173
    const v0, 0x7f1004cb

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->f:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v0, 0x7f1004cc

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->e:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->e:Landroid/widget/TextView;

    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->d:Ljava/util/Calendar;

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lnaq;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->d:Ljava/util/Calendar;

    .line 178
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 177
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const v0, 0x7f1004cd

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->g:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v0, 0x7f1004cf

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->b:Landroid/widget/GridView;

    .line 186
    new-instance v0, Lfqq;

    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f101175

    iget v4, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->w:I

    iget v5, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->x:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lfqq;-><init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->c:Lfqq;

    .line 187
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->c:Lfqq;

    invoke-virtual {v0}, Lfqq;->notifyDataSetChanged()V

    .line 188
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->c:Lfqq;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->A:Ljava/util/HashMap;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 595
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->z:Lfrc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->z:Lfrc;

    invoke-virtual {v0}, Lfrc;->ai()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->z:Lfrc;

    invoke-virtual {v0}, Lfrc;->ai()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrb;

    .line 599
    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lfrb;->K()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 600
    :cond_1
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 601
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :cond_2
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Lfrb;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 609
    :cond_3
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->L:I

    return v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 612
    const v0, 0x7f1004c7

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->E:Landroid/support/v4/view/ViewPager;

    .line 613
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->E:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 615
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->E:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lfqm;

    invoke-direct {v1, p0}, Lfqm;-><init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 630
    const v0, 0x7f1004ca

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->D:Lcom/santander/app/widget/Indicator;

    .line 631
    const v0, 0x7f1004c8

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->G:Landroid/widget/ImageView;

    .line 632
    const v0, 0x7f1004c9

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->F:Landroid/widget/ImageView;

    .line 633
    new-instance v0, Lgoo;

    iget-object v2, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->E:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->D:Lcom/santander/app/widget/Indicator;

    iget-object v4, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->G:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->F:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lgoo;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->C:Lgoo;

    .line 634
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->H:Ljava/util/List;

    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->I:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 635
    if-gez v0, :cond_0

    .line 636
    const/4 v0, 0x0

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->C:Lgoo;

    iget-object v2, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->H:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lgoo;->a(Ljava/util/List;I)V

    .line 639
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->G:Landroid/widget/ImageView;

    new-instance v1, Lfqn;

    invoke-direct {v1, p0}, Lfqn;-><init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->F:Landroid/widget/ImageView;

    new-instance v1, Lfqo;

    invoke-direct {v1, p0}, Lfqo;-><init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->I:Lcom/santander/app/contacorrente/domain/Conta;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->c()V

    return-void
.end method

.method public static synthetic g(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->b()V

    return-void
.end method

.method public static synthetic h(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Lfqq;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->c:Lfqq;

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->E:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->d()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 503
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 504
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->B:I

    const/4 v1, -0x3

    if-lt v0, v1, :cond_0

    .line 505
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->B:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->B:I

    .line 506
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->w:I

    if-gt v0, v2, :cond_2

    .line 507
    const/16 v0, 0xc

    iput v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->w:I

    .line 508
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->x:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->x:I

    .line 512
    :goto_0
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->w:I

    iget v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->x:I

    invoke-direct {p0, v0, v1}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->a(II)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 517
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->B:I

    if-gt v0, v3, :cond_1

    .line 518
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->B:I

    .line 519
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->w:I

    if-le v0, v3, :cond_3

    .line 520
    iput v2, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->w:I

    .line 521
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->x:I

    .line 525
    :goto_1
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->w:I

    iget v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->x:I

    invoke-direct {p0, v0, v1}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->a(II)V

    .line 528
    :cond_1
    return-void

    .line 510
    :cond_2
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->w:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->w:I

    goto :goto_0

    .line 523
    :cond_3
    iget v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->w:I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f0400de

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 107
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 109
    iput-object p0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->i:Landroid/app/Activity;

    .line 110
    invoke-direct {p0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 111
    const v0, 0x7f1004c6

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 113
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->H:Ljava/util/List;

    .line 115
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->H:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->I:Lcom/santander/app/contacorrente/domain/Conta;

    .line 117
    invoke-direct {p0, v2}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->a(I)V

    .line 118
    iput v2, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->L:I

    .line 121
    :cond_0
    new-instance v0, Lfqp;

    invoke-direct {v0, p0}, Lfqp;-><init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lfqp;->c([Ljava/lang/Object;)Lgne;

    .line 123
    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 126
    const v0, 0x7f1004d0

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->J:Landroid/widget/LinearLayout;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->A:Ljava/util/HashMap;

    .line 129
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 772
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .prologue
    .line 776
    const-string v0, "Outros_Agendamentos_Acao"

    const-string v1, "SelecionarConta"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->E:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->F:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->G:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->D:Lcom/santander/app/widget/Indicator;

    move v4, p1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 780
    iput p1, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->L:I

    .line 782
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->H:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->I:Lcom/santander/app/contacorrente/domain/Conta;

    .line 785
    new-instance v0, Lfqp;

    invoke-direct {v0, p0}, Lfqp;-><init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfqp;->c([Ljava/lang/Object;)Lgne;

    .line 788
    :cond_0
    return-void
.end method
