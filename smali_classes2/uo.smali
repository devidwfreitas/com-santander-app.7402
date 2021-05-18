.class public Luo;
.super Lacy;
.source "SourceFile"


# instance fields
.field private g:Landroid/app/Activity;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/RadioButton;

.field private l:Landroid/widget/RadioButton;

.field private m:Landroid/widget/RadioButton;

.field private n:Landroid/widget/LinearLayout;

.field private o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

.field private p:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/TextView;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/Double;

.field private v:Ljava/lang/Double;

.field private w:Lacg;


# direct methods
.method public constructor <init>(Lack;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 44
    invoke-direct {p0, p1}, Lacy;-><init>(Lack;)V

    .line 38
    const-string v0, "N"

    iput-object v0, p0, Luo;->t:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Luo;->g:Landroid/app/Activity;

    .line 47
    sget v0, Lla;->investir_por_valor_include_loading_state:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Luo;->h:Landroid/view/View;

    .line 48
    sget v0, Lla;->investir_por_valor_include_content:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Luo;->i:Landroid/view/View;

    .line 49
    sget v0, Lla;->investir_por_valor_include_carteira:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Luo;->j:Landroid/view/View;

    .line 51
    sget v0, Lla;->investir_por_valor_layout_valor_parcial:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Luo;->n:Landroid/widget/LinearLayout;

    .line 52
    sget v0, Lla;->investir_por_valor_radio_group_valor_parcial:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Luo;->l:Landroid/widget/RadioButton;

    .line 53
    iget-object v0, p0, Luo;->l:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setInputType(I)V

    .line 54
    sget v0, Lla;->investir_por_valor_radio_group_valor_total:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Luo;->k:Landroid/widget/RadioButton;

    .line 55
    iget-object v0, p0, Luo;->l:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setInputType(I)V

    .line 56
    sget v0, Lla;->investir_por_valor_radio_group_outras_opcoes:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Luo;->m:Landroid/widget/RadioButton;

    .line 57
    iget-object v0, p0, Luo;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setInputType(I)V

    .line 58
    sget v0, Lla;->investir_por_valor_edit_text_valor:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    iput-object v0, p0, Luo;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    .line 59
    sget v0, Lla;->investir_por_valor_edit_text_valor_parcial:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    iput-object v0, p0, Luo;->p:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    .line 60
    sget v0, Lla;->investir_por_valor_button_ver_recomendacao:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Luo;->q:Landroid/widget/Button;

    .line 62
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Luo;->w:Lacg;

    .line 63
    new-instance v0, Lace;

    invoke-direct {v0}, Lace;-><init>()V

    iput-object v0, p0, Luo;->c:Lace;

    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Luo;->e:Ljava/lang/Boolean;

    .line 69
    invoke-virtual {p0}, Luo;->j()V

    .line 70
    invoke-direct {p0}, Luo;->l()V

    .line 71
    return-void
.end method

.method static synthetic a(Luo;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Luo;->g:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/widget/EditText;Z)V
    .locals 3

    .prologue
    .line 169
    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laat;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Luo;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Luo;->c(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Luo;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v0

    sget v1, Lla;->borda_meio:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkz;->gray_bottom_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v0, p0, Luo;->p:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Luo;->v:Ljava/lang/Double;

    .line 184
    iget-object v0, p0, Luo;->l:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 185
    iget-object v0, p0, Luo;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 186
    invoke-direct {p0}, Luo;->d()V

    .line 187
    const-string v0, "M"

    iput-object v0, p0, Luo;->t:Ljava/lang/String;

    .line 189
    :cond_0
    return-void
.end method

.method static synthetic b(Luo;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Luo;->m()V

    return-void
.end method

.method static synthetic b(Luo;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Luo;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Luo;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v0

    sget v1, Lla;->borda_meio:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkz;->gray_bottom_border_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v0, p0, Luo;->k:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 198
    iget-object v0, p0, Luo;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 199
    invoke-direct {p0}, Luo;->d()V

    .line 200
    const-string v0, "M"

    iput-object v0, p0, Luo;->t:Ljava/lang/String;

    .line 202
    :cond_0
    return-void
.end method

.method static synthetic c(Luo;)Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Luo;->p:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    return-object v0
.end method

.method static synthetic c(Luo;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Luo;->b(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Luo;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v0

    sget v1, Lla;->borda_meio:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkz;->gray_bottom_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Luo;->p:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {v0}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Luo;->v:Ljava/lang/Double;

    .line 211
    iget-object v0, p0, Luo;->l:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 212
    iget-object v0, p0, Luo;->k:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 213
    invoke-direct {p0}, Luo;->d()V

    .line 214
    const-string v0, "N"

    iput-object v0, p0, Luo;->t:Ljava/lang/String;

    .line 216
    :cond_0
    return-void
.end method

.method static synthetic d(Luo;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Luo;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 219
    iget-object v0, p0, Luo;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 220
    iget-object v0, p0, Luo;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Luo;->q:Landroid/widget/Button;

    iget-object v1, p0, Luo;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lkx;->inv_white:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 222
    return-void
.end method

.method static synthetic e(Luo;)Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Luo;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Luo;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 226
    iget-object v0, p0, Luo;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Luo;->q:Landroid/widget/Button;

    iget-object v1, p0, Luo;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lkx;->inv_warm_grey:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 228
    return-void
.end method

.method private m()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 232
    invoke-virtual {p0}, Luo;->h()Lou;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lou;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laat;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 235
    invoke-virtual {v0}, Lou;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laat;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 236
    iget-object v2, p0, Luo;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {v2}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Luo;->u:Ljava/lang/Double;

    .line 239
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    const-string v3, "\\."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, "."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Luo;->u:Ljava/lang/Double;

    .line 243
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Luo;->v:Ljava/lang/Double;

    .line 244
    const-string v2, ""

    .line 246
    iget-object v2, p0, Luo;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Luo;->p:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    .line 247
    invoke-virtual {v2}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Luo;->p:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    .line 248
    invoke-virtual {v2}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    iget-object v2, p0, Luo;->p:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    invoke-virtual {v2}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    const-string v3, "\\."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, "."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Luo;->v:Ljava/lang/Double;

    .line 253
    :cond_1
    iget-object v2, p0, Luo;->v:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Luo;->u:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 255
    iget-object v2, p0, Luo;->u:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_2

    .line 257
    iget-object v0, p0, Luo;->g:Landroid/app/Activity;

    iget-object v1, p0, Luo;->g:Landroid/app/Activity;

    sget v2, Llg;->app_atencao:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Insira algum valor para investir !"

    new-instance v3, Lux;

    invoke-direct {v3, p0}, Lux;-><init>(Luo;)V

    invoke-static {v0, v1, v2, v3}, Laad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Laas;)Landroid/support/v7/app/AlertDialog;

    .line 295
    :goto_0
    return-void

    .line 263
    :cond_2
    iget-object v2, p0, Luo;->v:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Luo;->u:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    .line 265
    iget-object v0, p0, Luo;->g:Landroid/app/Activity;

    iget-object v1, p0, Luo;->g:Landroid/app/Activity;

    sget v2, Llg;->app_atencao:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Valor parcial \u00e9 superior a valor total !"

    new-instance v3, Luy;

    invoke-direct {v3, p0}, Luy;-><init>(Luo;)V

    invoke-static {v0, v1, v2, v3}, Laad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Laas;)Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 271
    :cond_3
    iget-object v2, p0, Luo;->l:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Luo;->v:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_4

    .line 273
    iget-object v0, p0, Luo;->g:Landroid/app/Activity;

    iget-object v1, p0, Luo;->g:Landroid/app/Activity;

    sget v2, Llg;->app_atencao:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Insira algum valor parcial !"

    new-instance v3, Luq;

    invoke-direct {v3, p0}, Luq;-><init>(Luo;)V

    invoke-static {v0, v1, v2, v3}, Laad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Laas;)Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 282
    :cond_4
    iget-object v2, p0, Luo;->u:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_5

    .line 283
    iget-object v0, p0, Luo;->w:Lacg;

    invoke-virtual {v0, v8}, Lacg;->c(Z)V

    .line 284
    iget-object v0, p0, Luo;->w:Lacg;

    invoke-virtual {v0, v9}, Lacg;->d(Z)V

    .line 285
    invoke-direct {p0}, Luo;->n()V

    goto :goto_0

    .line 287
    :cond_5
    iget-object v0, p0, Luo;->u:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_6

    .line 288
    iget-object v0, p0, Luo;->w:Lacg;

    invoke-virtual {v0, v9}, Lacg;->c(Z)V

    .line 289
    iget-object v0, p0, Luo;->w:Lacg;

    invoke-virtual {v0, v8}, Lacg;->d(Z)V

    .line 290
    invoke-direct {p0}, Luo;->n()V

    goto/16 :goto_0

    .line 293
    :cond_6
    invoke-direct {p0}, Luo;->n()V

    goto/16 :goto_0
.end method

.method private n()V
    .locals 7

    .prologue
    .line 298
    .line 299
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_recomendacao_valor_aplicacao_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Luo;->u:Ljava/lang/Double;

    .line 300
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 298
    invoke-static {v0, v2, v3}, Lzy;->a(Ljava/lang/String;D)V

    .line 303
    iget-object v0, p0, Luo;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_recomendacao_parte_valor_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Luo;->v:Ljava/lang/Double;

    .line 306
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 304
    invoke-static {v0, v2, v3}, Lzy;->a(Ljava/lang/String;D)V

    .line 310
    :cond_0
    iget-object v0, p0, Luo;->t:Ljava/lang/String;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Luo;->v:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Luo;->u:Ljava/lang/Double;

    iput-object v0, p0, Luo;->v:Ljava/lang/Double;

    .line 315
    :cond_1
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_recomendacao_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_ver_recomendacao:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Luo;->g:Landroid/app/Activity;

    .line 319
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Luo;->t:Ljava/lang/String;

    iget-object v3, p0, Luo;->u:Ljava/lang/Double;

    .line 321
    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Luo;->v:Ljava/lang/Double;

    .line 322
    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Luo;->c:Lace;

    iget-object v6, p0, Luo;->w:Lacg;

    .line 318
    invoke-virtual/range {v0 .. v6}, Lzs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lace;Lacg;)V

    .line 325
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Luo;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Luo;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Luo;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lacy;->a()V

    .line 77
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_recomendacao_acao:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_selecionarConta:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lacy;->b()V

    .line 87
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Luo;->r:Landroid/widget/ImageButton;

    .line 88
    iget-object v0, p0, Luo;->r:Landroid/widget/ImageButton;

    new-instance v1, Lup;

    invoke-direct {v1, p0}, Lup;-><init>(Luo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Luo;->r:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 95
    invoke-virtual {p0}, Luo;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Luo;->s:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Luo;->s:Landroid/widget/TextView;

    sget v1, Llg;->app_aplicar_valor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v0, p0, Luo;->q:Landroid/widget/Button;

    new-instance v1, Lur;

    invoke-direct {v1, p0}, Lur;-><init>(Luo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Luo;->p:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    new-instance v1, Lus;

    invoke-direct {v1, p0}, Lus;-><init>(Luo;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->a(Laay;)V

    .line 117
    iget-object v0, p0, Luo;->o:Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    new-instance v1, Lut;

    invoke-direct {v1, p0}, Lut;-><init>(Luo;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;->a(Laay;)V

    .line 131
    iget-object v0, p0, Luo;->m:Landroid/widget/RadioButton;

    new-instance v1, Luu;

    invoke-direct {v1, p0}, Luu;-><init>(Luo;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    iget-object v0, p0, Luo;->k:Landroid/widget/RadioButton;

    new-instance v1, Luv;

    invoke-direct {v1, p0}, Luv;-><init>(Luo;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 153
    iget-object v0, p0, Luo;->l:Landroid/widget/RadioButton;

    new-instance v1, Luw;

    invoke-direct {v1, p0}, Luw;-><init>(Luo;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 165
    invoke-direct {p0}, Luo;->o()V

    .line 166
    return-void
.end method
