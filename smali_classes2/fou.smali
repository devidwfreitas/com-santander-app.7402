.class public Lfou;
.super Lfom;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfos;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lnez;

.field private e:Landroid/app/Activity;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lfos;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lfom;-><init>()V

    .line 44
    iput-object v0, p0, Lfou;->b:Ljava/util/Vector;

    .line 45
    iput-object v0, p0, Lfou;->c:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lfou;->d:Lnez;

    .line 47
    iput-object v0, p0, Lfou;->e:Landroid/app/Activity;

    .line 48
    iput-object v0, p0, Lfou;->f:Landroid/widget/TextView;

    .line 52
    iput-object p1, p0, Lfou;->c:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lfou;->b:Ljava/util/Vector;

    .line 54
    iput-object p3, p0, Lfou;->e:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method static synthetic a(Lfou;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lfou;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lfou;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lfou;->f:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lfou;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lfou;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lfou;)Lnez;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lfou;->d:Lnez;

    return-object v0
.end method

.method static synthetic d(Lfou;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lfou;->b:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public a(Lnez;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lfou;->d:Lnez;

    .line 65
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lfou;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .prologue
    const v3, 0x7f04014d

    const/4 v2, 0x0

    .line 74
    .line 75
    iget-object v0, p0, Lfou;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfos;

    invoke-virtual {v0}, Lfos;->c()Lfot;

    move-result-object v0

    sget-object v1, Lfot;->DPP:Lfot;

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lfou;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 77
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 78
    new-instance v1, Lfov;

    invoke-direct {v1, p0, p2}, Lfov;-><init>(Lfou;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v3, v0

    .line 149
    :goto_0
    const v0, 0x7f100071

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    const v1, 0x7f1006ad

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 151
    iget-object v2, p0, Lfou;->b:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfos;

    invoke-virtual {v2}, Lfos;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lfou;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfos;

    invoke-virtual {v0}, Lfos;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 155
    return-object v3

    .line 88
    :cond_0
    iget-object v0, p0, Lfou;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfos;

    invoke-virtual {v0}, Lfos;->c()Lfot;

    move-result-object v0

    sget-object v1, Lfot;->NORMAL:Lfot;

    if-ne v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lfou;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 90
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 91
    new-instance v1, Lfow;

    invoke-direct {v1, p0, p2}, Lfow;-><init>(Lfou;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v3, v0

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lfou;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 104
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04014c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 106
    const v1, 0x7f1006ae

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 107
    new-instance v2, Lfox;

    invoke-direct {v2, p0, p2}, Lfox;-><init>(Lfou;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v3, v0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 160
    check-cast p2, Landroid/widget/LinearLayout;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 9

    .prologue
    const v8, 0x7f1006ad

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 170
    invoke-virtual {v1, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 171
    invoke-virtual {v1, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 172
    const/4 v0, 0x5

    invoke-virtual {v1, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 174
    iget-object v0, p0, Lfou;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 175
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lnak;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 179
    iget-object v0, p0, Lfou;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 180
    iget-object v0, p0, Lfou;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfos;

    invoke-virtual {v0, v3}, Lfos;->b(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lfou;->e:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lfou;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 183
    iget-object v0, p0, Lfou;->b:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfos;

    invoke-virtual {v0, v3}, Lfos;->b(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lfou;->e:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lfou;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 186
    iget-object v0, p0, Lfou;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lfou;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfos;

    invoke-virtual {v0, v3}, Lfos;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
