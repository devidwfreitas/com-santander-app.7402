.class public Linp;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/Boolean;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lioi;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/support/v4/app/FragmentManager;

.field private f:Landroid/support/v7/app/AppCompatActivity;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Landroid/support/v7/app/AppCompatActivity;Landroid/database/DataSetObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lioi;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/support/v7/app/AppCompatActivity;",
            "Landroid/database/DataSetObserver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linp;->l:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Linp;->b:Ljava/util/ArrayList;

    .line 63
    iput-object p2, p0, Linp;->c:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Linp;->f:Landroid/support/v7/app/AppCompatActivity;

    .line 65
    iget-object v0, p0, Linp;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Linp;->d:Landroid/view/LayoutInflater;

    .line 67
    return-void
.end method

.method static synthetic a(Linp;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Linp;->k:I

    return p1
.end method

.method static synthetic a(Linp;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 270
    .line 271
    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    iget v2, p0, Linp;->k:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linp;->i:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    iget v2, p0, Linp;->k:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linp;->j:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Linp;->i:Ljava/lang/String;

    const-string v2, ""

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Linp;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Linp;->j:Ljava/lang/String;

    const-string v2, ""

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Linp;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Linp;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Linp;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 276
    iget-object v2, p0, Linp;->j:Ljava/lang/String;

    invoke-virtual {p0, v2}, Linp;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 277
    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    iget v2, p0, Linp;->k:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lioi;->e(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    iget v2, p0, Linp;->k:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lioi;->f(Ljava/lang/String;)V

    move v0, v1

    .line 289
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 283
    goto :goto_0

    :cond_2
    move v0, v1

    .line 287
    goto :goto_0
.end method

.method static synthetic b(Linp;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Linp;->f:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 305
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Linp;->c:Landroid/content/Context;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 306
    const v0, 0x7f040188

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 307
    const v0, 0x7f100772

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 309
    const-string v2, "A data inicial deve ser menor que a final."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const v0, 0x7f1005ed

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentTextView;

    .line 312
    const-string v2, "Alerta"

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentTextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const v0, 0x7f100783

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 314
    new-instance v2, Lint;

    invoke-direct {v2, p0, v1}, Lint;-><init>(Linp;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 321
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 296
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 90
    const-string v0, "Santander"

    const-string v1, "adapter getview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Linp;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f04021b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 93
    const v0, 0x7f100a2d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    const v1, 0x7f100a36

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    const v2, 0x7f100a37

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 96
    const v3, 0x7f100a4b

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 97
    const v4, 0x7f100a4c

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 98
    const v5, 0x7f100a2e

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 99
    const v6, 0x7f100a30

    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 100
    const v7, 0x7f100a2f

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Linp;->g:Landroid/widget/TextView;

    .line 101
    const v7, 0x7f100a31

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Linp;->h:Landroid/widget/TextView;

    .line 103
    iget-object v7, p0, Linp;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lioi;

    invoke-virtual {v7}, Lioi;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Linp;->g:Landroid/widget/TextView;

    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Linp;->h:Landroid/widget/TextView;

    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v0}, Lioi;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    :cond_0
    new-instance v0, Linq;

    invoke-direct {v0, p0, p1, v4, v3}, Linq;-><init>(Linp;ILandroid/widget/LinearLayout;Landroid/widget/Button;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v0, Linr;

    invoke-direct {v0, p0, p1}, Linr;-><init>(Linp;I)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v0, Lins;

    invoke-direct {v0, p0, p1}, Lins;-><init>(Linp;I)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    return-object v8
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Linp;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 264
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    .line 266
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 267
    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4

    .prologue
    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 215
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 216
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 217
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 219
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 222
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    iget-object v0, p0, Linp;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    iget v3, p0, Linp;->k:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->e(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Linp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Linp;->notifyDataSetChanged()V

    .line 252
    :goto_1
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 226
    const-string v3, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0}, Linp;->b()V

    goto :goto_1

    .line 242
    :cond_1
    iget-object v0, p0, Linp;->b:Ljava/util/ArrayList;

    iget v3, p0, Linp;->k:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->f(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Linp;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0}, Linp;->notifyDataSetChanged()V

    goto :goto_1

    .line 249
    :cond_2
    invoke-direct {p0}, Linp;->b()V

    goto :goto_1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 258
    return-void
.end method
