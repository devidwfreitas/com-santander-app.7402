.class Lsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lrz;


# direct methods
.method constructor <init>(Lrz;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lsf;->a:Lrz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 221
    new-instance v4, Landroid/app/Dialog;

    iget-object v0, p0, Lsf;->a:Lrz;

    invoke-virtual {v0}, Lrz;->e()Lack;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 223
    sget v0, Llc;->layout_composicao_poupanca:I

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 224
    sget v0, Llg;->label_composicao:I

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 227
    sget v0, Lla;->dialg_title:I

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_0
    sget v0, Lla;->btn_fechar:I

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 232
    sget v1, Lla;->vlr_nova_regra:I

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 233
    sget v2, Lla;->vlr_nova_antiga:I

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 234
    sget v3, Lla;->total_investido:I

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 236
    iget-object v5, p0, Lsf;->a:Lrz;

    .line 238
    invoke-static {v5}, Lrz;->a(Lrz;)Lacg;

    move-result-object v5

    invoke-virtual {v5}, Lacg;->n()Lto;

    move-result-object v5

    .line 239
    invoke-virtual {v5}, Lto;->s()Lsw;

    move-result-object v5

    invoke-virtual {v5}, Lsw;->i()Ljava/lang/Double;

    move-result-object v5

    .line 237
    invoke-static {v5}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lsf;->a:Lrz;

    .line 243
    invoke-static {v1}, Lrz;->a(Lrz;)Lacg;

    move-result-object v1

    invoke-virtual {v1}, Lacg;->n()Lto;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lto;->s()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->j()Ljava/lang/Double;

    move-result-object v1

    .line 242
    invoke-static {v1}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lsf;->a:Lrz;

    .line 248
    invoke-static {v1}, Lrz;->a(Lrz;)Lacg;

    move-result-object v1

    invoke-virtual {v1}, Lacg;->n()Lto;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Lto;->s()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->b()Ljava/lang/Double;

    move-result-object v1

    .line 247
    invoke-static {v1}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v1, Lsg;

    invoke-direct {v1, p0, v4}, Lsg;-><init>(Lsf;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lsf;->a:Lrz;

    invoke-virtual {v1}, Lrz;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkx;->inv_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 260
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    const/16 v2, 0x14

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 261
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 264
    return-void
.end method
