.class public Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;
.super Lgoj;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/RelativeLayout;

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/LinearLayout;

.field private N:Landroid/widget/LinearLayout;

.field private O:Landroid/widget/LinearLayout;

.field private P:Landroid/support/v7/widget/ViewStubCompat;

.field private Q:Ljava/lang/String;

.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/LinearLayout;

.field public c:Lgvb;

.field public f:Landroid/widget/LinearLayout;

.field private g:Ljava/lang/String;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 54
    const-string v0, "ComprovanteBaseActivity"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->g:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->r()V

    return-void
.end method

.method private b(Landroid/content/Context;Lgky;)Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x5

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 342
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 343
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 344
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    invoke-virtual {p2}, Lgky;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 347
    invoke-virtual {v0, v6, v7, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 353
    :goto_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 354
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 355
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    invoke-static {p0, v4}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 357
    invoke-virtual {p2}, Lgky;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-virtual {p2}, Lgky;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 362
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 364
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    invoke-static {p0, v5}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 366
    invoke-virtual {p2}, Lgky;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    return-object v0

    .line 349
    :cond_1
    invoke-virtual {v0, v6, v7, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 350
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->q()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->G:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 118
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->f:Landroid/widget/LinearLayout;

    .line 119
    const v0, 0x7f1001a2

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->F:Landroid/widget/RelativeLayout;

    .line 120
    const v0, 0x7f1001a5

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->I:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f1001a7

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->H:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f1001a6

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->G:Landroid/widget/LinearLayout;

    .line 123
    const v0, 0x7f1005d3

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->N:Landroid/widget/LinearLayout;

    .line 124
    const v0, 0x7f1005d5

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->O:Landroid/widget/LinearLayout;

    .line 126
    const v0, 0x7f1005d2

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->P:Landroid/support/v7/widget/ViewStubCompat;

    .line 128
    const v0, 0x7f1005d1

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->y:Landroid/widget/LinearLayout;

    .line 129
    const v0, 0x7f10019b

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->E:Landroid/widget/LinearLayout;

    .line 130
    const v0, 0x7f1005d0

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->x:Landroid/widget/LinearLayout;

    .line 131
    const v0, 0x7f1001aa

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->w:Landroid/widget/LinearLayout;

    .line 132
    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a:Landroid/widget/LinearLayout;

    .line 133
    const v0, 0x7f1001ad

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->b:Landroid/widget/LinearLayout;

    .line 134
    const v0, 0x7f1005d4

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->z:Landroid/widget/LinearLayout;

    .line 135
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->A:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f100199

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->B:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f1005cf

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->C:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f10019a

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->J:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f1001a1

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->K:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f10019f

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->L:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f1001ab

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->D:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f1001a8

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->M:Landroid/widget/LinearLayout;

    .line 143
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v1}, Lgvb;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v1}, Lgvb;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->L:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v1}, Lgvb;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    :cond_0
    const v0, 0x7f1001a0

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->i()V

    .line 156
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->j()V

    .line 158
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 164
    :goto_1
    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->o()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lgus;

    invoke-direct {v1, p0}, Lgus;-><init>(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lgut;

    invoke-direct {v1, p0}, Lgut;-><init>(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->z:Landroid/widget/LinearLayout;

    new-instance v1, Lguu;

    invoke-direct {v1, p0}, Lguu;-><init>(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->I:Landroid/widget/ImageView;

    new-instance v1, Lguv;

    invoke-direct {v1, p0}, Lguv;-><init>(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->J:Landroid/widget/ImageView;

    const v1, 0x7f0204ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v1}, Lgvb;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :goto_3
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->p()V

    .line 225
    :cond_1
    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 164
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->J:Landroid/widget/ImageView;

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method private i()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v1}, Lgvb;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->w:Landroid/widget/LinearLayout;

    new-instance v1, Lguw;

    invoke-direct {v1, p0}, Lguw;-><init>(Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->d()Lgvu;

    move-result-object v0

    sget-object v1, Lgvu;->COMPROVANTE_PAGAMENTO:Lgvu;

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->z:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->z:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private n()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 312
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->x()Ljava/lang/String;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 317
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 318
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 319
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->x:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->x:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->h()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->E:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    :cond_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    .line 335
    iget-object v2, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->E:Landroid/widget/LinearLayout;

    invoke-direct {p0, p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->b(Landroid/content/Context;Lgky;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private p()V
    .locals 6

    .prologue
    .line 508
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->z()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->z()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->z()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 511
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 512
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lfrq;->a(Ljava/lang/String;D)V

    goto :goto_0

    .line 514
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_1
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    const-string v0, "Cartoes_Bloqueio_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    const-string v0, "Cartoes_ParcelamentoDeFatura_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    const-string v0, "Transferencia_Acao"

    const-string v1, "BotaoCompartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    const-string v0, "Pagamentos_Pagamento_TitulosEmCatorio_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 543
    const-string v0, "Investimentos_Poupanca_Aplicar_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_4
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->I()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 547
    const-string v0, "Investimentos_Poupanca_Resgatar_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_5
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->J()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 551
    const-string v0, "Pagamentos_Pagamento_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_6
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 555
    const-string v0, "CreditoFinanciamento_Emprestimos_Comprovante_Compartilhar_Acao"

    const-string v1, "Consignado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_7
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 559
    const-string v0, "CreditoFinanciamento_Emprestimos_Comprovante_Compartilhar_Acao"

    const-string v1, "CreditoPessoal"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_8
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 563
    const-string v0, "CreditoFinanciamento_Emprestimos_Comprovante_Compartilhar_Acao"

    const-string v1, "Refinanciamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_9
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->L()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 567
    const-string v0, "Outros_RecargaDeTelefone_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_a
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->M()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 571
    const-string v0, "ServicosInternacionais_Cambio_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_b
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->N()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 575
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_c
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->O()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 579
    const-string v0, "Outros_PropostasEmAberto_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_d
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->P()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 583
    const-string v0, "CreditoFinanciamento_Antecipar13_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_e
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->Q()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 587
    const-string v0, "Investimentos_Fundos_Aplicar_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_f
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->R()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 591
    const-string v0, "Investimentos_Fundos_Resgate_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_10
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->S()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 595
    const-string v0, "Investimentos_RendaFixa_Resgate_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_11
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->T()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 599
    const-string v0, "CreditoFinanciamento_AnteciparIR_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_12
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    const-string v0, "Transferencia_Acao"

    const-string v1, "BotaoFechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    const-string v0, "Cartoes_Bloqueio_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    const-string v0, "Cartoes_ParcelamentoDeFatura_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    const-string v0, "Pagamentos_Pagamento_TitulosEmCatorio_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 621
    const-string v0, "Investimentos_Poupanca_Aplicar_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_4
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->I()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 625
    const-string v0, "Investimentos_Poupanca_Resgatar_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_5
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->J()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 629
    const-string v0, "Pagamentos_Pagamento_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_6
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 633
    const-string v0, "CreditoFinanciamento_Emprestimos_Comprovante_Fechar_Acao"

    const-string v1, "Consignado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_7
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 637
    const-string v0, "CreditoFinanciamento_Emprestimos_Comprovante_Fechar_Acao"

    const-string v1, "CreditoPessoal"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_8
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 641
    const-string v0, "CreditoFinanciamento_Emprestimos_Comprovante_Fechar_Acao"

    const-string v1, "Refinanciamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_9
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->L()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 645
    const-string v0, "Outros_RecargaDeTelefone_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_a
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->M()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 649
    const-string v0, "ServicosInternacionais_Cambio_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_b
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->N()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 653
    const-string v0, "Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_c
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->O()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 657
    const-string v0, "Outros_PropostasEmAberto_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_d
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->P()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 661
    const-string v0, "CreditoFinanciamento_Antecipar13_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_e
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->Q()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 665
    const-string v0, "Investimentos_Fundos_Aplicar_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_f
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->R()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 669
    const-string v0, "Investimentos_Fundos_Resgate_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_10
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->S()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 673
    const-string v0, "Investimentos_RendaFixa_Resgate_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_11
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->T()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 677
    const-string v0, "CreditoFinanciamento_AnteciparIR_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_12
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    const-string v0, "Transferencia"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    const-string v0, "Cartoes_BloqueioDeCartao"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    const-string v0, "Cartoes_ParcelamentoDeFatura"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->G()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->J()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 695
    :cond_3
    const-string v0, "Pagamento"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 698
    :cond_4
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->H()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 699
    const-string v0, "Poupanca_Aplicar"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 702
    :cond_5
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->I()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 703
    const-string v0, "Poupanca_Resgatar"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 706
    :cond_6
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->b()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 707
    :cond_7
    const-string v0, "Emprestimos"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 710
    :cond_8
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->K()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 711
    const-string v0, "TrocarSenha"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 714
    :cond_9
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->L()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 715
    const-string v0, "RecargaDeTelefone"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 718
    :cond_a
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->M()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 719
    const-string v0, "Cambio_TransferenciaParaOExterior"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 722
    :cond_b
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->N()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 723
    const-string v0, "InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 726
    :cond_c
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->O()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 727
    const-string v0, "Formalizacao"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 730
    :cond_d
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->P()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 731
    const-string v0, "Antecipacao13"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 734
    :cond_e
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->Q()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 735
    const-string v0, "Fundos_Aplicar"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 738
    :cond_f
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->R()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 739
    const-string v0, "Fundos_Resgatar"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 742
    :cond_10
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->S()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 743
    const-string v0, "Rendafixa_Resgatar"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 746
    :cond_11
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->T()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 747
    const-string v0, "AntecipacaoIR"

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    .line 750
    :cond_12
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->p()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 751
    :cond_13
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    const-string v1, "TransacaoNaoPermitida"

    invoke-static {v0, v1}, Lfrq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :goto_0
    return-void

    .line 753
    :cond_14
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->Q:Ljava/lang/String;

    invoke-static {v0}, Lfrq;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Lgky;)Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 478
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 479
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 480
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 481
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    invoke-virtual {p2}, Lgky;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 485
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 491
    :goto_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 492
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 493
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    invoke-static {p0, v3}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 496
    invoke-virtual {p2}, Lgky;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 497
    invoke-virtual {p2}, Lgky;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    :cond_0
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    return-object v0

    .line 487
    :cond_1
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 488
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 498
    :cond_2
    invoke-virtual {p2}, Lgky;->a()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {p2}, Lgky;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgky;

    .line 472
    iget-object v2, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->O:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a(Landroid/content/Context;Lgky;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 475
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->F()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->F()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->F()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v1}, Lgvb;->F()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    :goto_0
    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 238
    return-void

    .line 236
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->F()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->F()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->E()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v1}, Lgvb;->E()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 247
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->k()V

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->k()V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->j()V

    .line 380
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 412
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->I:Landroid/widget/ImageView;

    const v1, 0x7f02057c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    :cond_0
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/16 v3, 0xa

    .line 427
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->f()Ljava/lang/String;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v1}, Lgvb;->d()Lgvu;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v1}, Lgvb;->d()Lgvu;

    move-result-object v1

    sget-object v2, Lgvu;->COMPROVANTE_PREVIDENCIA:Lgvu;

    if-ne v1, v2, :cond_0

    .line 430
    const v0, 0x7f090552

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 432
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 433
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 434
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    :goto_0
    return-void

    .line 440
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 443
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 444
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 445
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->N:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 456
    sget-object v0, Lgux;->a:[I

    iget-object v1, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v1}, Lgvb;->d()Lgvu;

    move-result-object v1

    invoke-virtual {v1}, Lgvu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 464
    new-instance v0, Lgvt;

    invoke-direct {v0}, Lgvt;-><init>()V

    invoke-virtual {v0}, Lgvt;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a(Ljava/util/ArrayList;)V

    .line 467
    :goto_0
    return-void

    .line 458
    :pswitch_0
    new-instance v0, Lgvt;

    invoke-direct {v0}, Lgvt;-><init>()V

    invoke-virtual {v0}, Lgvt;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 461
    :pswitch_1
    new-instance v0, Lgvs;

    invoke-direct {v0}, Lgvs;-><init>()V

    invoke-virtual {v0}, Lgvs;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public k()V
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->e()Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v1, ""

    .line 266
    iget-object v2, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v2}, Lgvb;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 406
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgvb;

    iput-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    .line 96
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->s()V

    .line 98
    const v0, 0x7f040123

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->setContentView(I)V

    .line 100
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->h()V

    .line 104
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->o()V

    .line 105
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->n()V

    .line 106
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->f()V

    .line 107
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->g()V

    .line 109
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->P:Landroid/support/v7/widget/ViewStubCompat;

    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutResource(I)V

    .line 111
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->P:Landroid/support/v7/widget/ViewStubCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->onCreateContentExtra(Landroid/view/View;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onCreateContentExtra(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 522
    invoke-super {p0}, Lgoj;->onDestroy()V

    .line 523
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 393
    invoke-super {p0}, Lgoj;->onResume()V

    .line 394
    invoke-virtual {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->d()V

    .line 395
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->I:Landroid/widget/ImageView;

    const v1, 0x7f02057b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c:Lgvb;

    invoke-virtual {v0}, Lgvb;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    :cond_1
    return-void
.end method
