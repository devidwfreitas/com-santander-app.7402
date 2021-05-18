.class public Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljgd;
.implements Lnau;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/support/v7/widget/RecyclerView;

.field private F:Lcom/santander/app/components/view/SantanderTextView;

.field private a:Landroid/widget/ImageView;

.field private b:Z

.field private c:Landroid/widget/Button;

.field private d:Ljik;

.field private e:Ljdx;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private final x:I

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->b:Z

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->x:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Ljdx;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->e:Ljdx;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 6

    .prologue
    const v5, 0x7f0e0068

    const/4 v4, 0x0

    .line 290
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 291
    const-string v1, "Declaro aderir aos termos e condi\u00e7\u00f5es do Regulamento"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 292
    new-instance v1, Ljga;

    invoke-direct {v1, p0}, Ljga;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)V

    .line 298
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, "Regulamento"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 292
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 300
    const-string v1, ", Formul\u00e1rio de Informa\u00e7\u00f5es Complementares"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 301
    new-instance v1, Ljgb;

    invoke-direct {v1, p0}, Ljgb;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)V

    .line 308
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, "Formul\u00e1rio de Informa\u00e7\u00f5es Complementares"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 301
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 310
    const-string v1, " e L\u00e2mina de Informa\u00e7\u00f5es Essenciais"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 311
    new-instance v1, Ljgc;

    invoke-direct {v1, p0}, Ljgc;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)V

    .line 316
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, "L\u00e2mina de informa\u00e7\u00f5es Essenciais"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 311
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 317
    const-string v1, ", se houver, do fundo de investimento em refer\u00eancia, os quais me foram previamente disponibilizados."

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 319
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x29

    const/16 v3, 0x34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 320
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x36

    const/16 v3, 0x5e

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 321
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x61

    const/16 v3, 0x81

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 323
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 324
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 325
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->b:Z

    return p1
.end method

.method public static synthetic b(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Ljik;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->d:Ljik;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    const v0, 0x7f100ae1

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->w:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f100aea

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->a:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f100aec

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->c:Landroid/widget/Button;

    .line 107
    const v0, 0x7f100aeb

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->D:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->D:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->a(Landroid/widget/TextView;)V

    .line 109
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->c:Landroid/widget/Button;

    new-instance v1, Ljft;

    invoke-direct {v1, p0}, Ljft;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->d()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f100b0b

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->f:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    const v0, 0x7f1001f0

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->g:Landroid/widget/LinearLayout;

    .line 133
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    const v0, 0x7f100ae3

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->y:Landroid/widget/RelativeLayout;

    .line 136
    const v0, 0x7f100ae8

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->z:Landroid/widget/RelativeLayout;

    .line 137
    const v0, 0x7f100ae2

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->A:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f100ae9

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->B:Landroid/widget/LinearLayout;

    .line 140
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->y:Landroid/widget/RelativeLayout;

    new-instance v1, Ljfv;

    invoke-direct {v1, p0}, Ljfv;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->z:Landroid/widget/RelativeLayout;

    new-instance v1, Ljfw;

    invoke-direct {v1, p0}, Ljfw;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v0, 0x7f100312

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->E:Landroid/support/v7/widget/RecyclerView;

    .line 157
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 158
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->E:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 159
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->b:Z

    return v0
.end method

.method private d()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Ljfx;

    invoke-direct {v0, p0}, Ljfx;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->c:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const v3, 0x7f100b0b

    .line 199
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 202
    if-nez v1, :cond_0

    .line 203
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 204
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 205
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 207
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 208
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    return-void
.end method

.method public a(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    sget-object v0, Ljfu;->a:[I

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->e:Ljdx;

    invoke-virtual {v1}, Ljdx;->t()Ljdk;

    move-result-object v1

    invoke-virtual {v1}, Ljdk;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->d:Ljik;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->e:Ljdx;

    invoke-interface {v0, v1, v2}, Ljik;->a(Ljdx;Z)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->d:Ljik;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->e:Ljdx;

    invoke-interface {v0, v1, v2}, Ljik;->b(Ljdx;Z)V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lgvb;)V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    const-string v1, "comprovanteBase"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    invoke-static {p0, p1}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljdy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->E:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Ljhr;

    invoke-direct {v1, p1}, Ljhr;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 249
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 229
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->e:Ljdx;

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Ljfu;->a:[I

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->e:Ljdx;

    invoke-virtual {v1}, Ljdx;->t()Ljdk;

    move-result-object v1

    invoke-virtual {v1}, Ljdk;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 244
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 232
    :pswitch_1
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 253
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->i:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 254
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 256
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 258
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 260
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 261
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 266
    const v3, 0x7f09016b

    invoke-virtual {p0, v3}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    new-instance v4, Ljfy;

    invoke-direct {v4, p0, v1, p1}, Ljfy;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;Landroid/app/Dialog;Ljava/lang/String;)V

    .line 276
    const v0, 0x7f09016a

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 277
    new-instance v5, Ljfz;

    invoke-direct {v5, p0, v1}, Ljfz;-><init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;Landroid/app/Dialog;)V

    .line 284
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->i:Landroid/app/Activity;

    const v2, 0x7f0903b7

    invoke-virtual {p0, v2}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090133

    invoke-virtual {p0, v3}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 286
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 83
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fundos_confirmacao"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljdx;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->e:Ljdx;

    .line 88
    sget-object v0, Ljfu;->a:[I

    iget-object v2, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->e:Ljdx;

    invoke-virtual {v2}, Ljdx;->t()Ljdk;

    move-result-object v2

    invoke-virtual {v2}, Ljdk;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->c()V

    .line 99
    new-instance v0, Ljil;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->i:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Ljil;-><init>(Landroid/app/Activity;Ljgd;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->d:Ljik;

    .line 100
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->d:Ljik;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->e:Ljdx;

    invoke-interface {v0, v1}, Ljik;->a(Ljdx;)V

    .line 101
    return-void

    .line 91
    :pswitch_0
    const v0, 0x7f090636

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :pswitch_1
    const v0, 0x7f0906ca

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
