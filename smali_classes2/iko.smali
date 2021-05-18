.class Liko;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Likl;

.field private b:J


# direct methods
.method constructor <init>(Likl;)V
    .locals 2

    .prologue
    .line 213
    iput-object p1, p0, Liko;->a:Likl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Liko;->b:J

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->a(Likl;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->e(Likl;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10

    .prologue
    const/16 v9, 0x39

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 217
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 218
    iget-wide v2, p0, Liko;->b:J

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 219
    iput-wide v0, p0, Liko;->b:J

    .line 220
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->a(Likl;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    const/16 v1, 0x21

    if-lt p4, v1, :cond_6

    .line 223
    iget-object v1, p0, Liko;->a:Likl;

    invoke-static {v1, v0}, Likl;->a(Likl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 226
    :goto_0
    iget-object v0, p0, Liko;->a:Likl;

    invoke-virtual {v0}, Likl;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1008fb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 227
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 228
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 229
    iget-object v1, p0, Liko;->a:Likl;

    invoke-virtual {v1}, Likl;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1008e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 230
    iget-object v2, p0, Liko;->a:Likl;

    invoke-virtual {v2}, Likl;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f100901

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 232
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x38

    if-ne v4, v5, :cond_2

    .line 234
    if-nez p2, :cond_0

    .line 235
    const-string v4, "Empresa:"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->c(Likl;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->d(Likl;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->e(Likl;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->f(Likl;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 243
    :cond_0
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->a(Likl;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Liko;->a:Likl;

    invoke-static {v1, v3}, Likl;->b(Likl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->a(Likl;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Liko;->a:Likl;

    invoke-static {v1}, Likl;->a(Likl;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 266
    :cond_1
    :goto_1
    return-void

    .line 245
    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v9, :cond_4

    .line 247
    if-nez p2, :cond_3

    .line 248
    const-string v4, "Benefici\u00e1rio:"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->c(Likl;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->d(Likl;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->e(Likl;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->f(Likl;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 256
    :cond_3
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->a(Likl;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Liko;->a:Likl;

    invoke-static {v1, v3}, Likl;->c(Likl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Liko;->a:Likl;

    invoke-static {v0}, Likl;->a(Likl;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Liko;->a:Likl;

    invoke-static {v1}, Likl;->a(Likl;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 258
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_1

    .line 260
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Liko;->a:Likl;

    invoke-static {v1}, Likl;->g(Likl;)Lcom/santander/app/FazerPagamentoActivity;

    move-result-object v1

    const-string v2, "Informa\u00e7\u00e3o invalida"

    invoke-virtual {v0, v1, v2}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :cond_5
    const-string v1, "Benefici\u00e1rio:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method
