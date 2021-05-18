.class public Laig;
.super Lakb;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lajw;

.field private c:Lajw;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lajw;)V
    .locals 2

    invoke-direct {p0, p1}, Lakb;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Laig;->c:Lajw;

    iput-object p1, p0, Laig;->a:Landroid/app/Activity;

    iput-object p2, p0, Laig;->b:Lajw;

    invoke-virtual {p0}, Laig;->d()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagg;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lagl;->ajustar_limites:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Laig;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lajw;Lajw;)V
    .locals 2

    invoke-direct {p0, p1}, Lakb;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Laig;->c:Lajw;

    iput-object p1, p0, Laig;->a:Landroid/app/Activity;

    iput-object p2, p0, Laig;->b:Lajw;

    iput-object p3, p0, Laig;->c:Lajw;

    invoke-virtual {p0}, Laig;->d()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagg;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lagl;->ajustar_limites:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Laig;->a()V

    return-void
.end method

.method static synthetic a(Laig;I)I
    .locals 0

    iput p1, p0, Laig;->n:I

    return p1
.end method

.method static synthetic a(Laig;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Laig;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Laig;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Laig;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Laig;I)I
    .locals 0

    iput p1, p0, Laig;->o:I

    return p1
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    const-string v0, "[.]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ",00"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Laig;)Lajw;
    .locals 1

    iget-object v0, p0, Laig;->b:Lajw;

    return-object v0
.end method

.method static synthetic c(Laig;)I
    .locals 1

    iget v0, p0, Laig;->n:I

    return v0
.end method

.method static synthetic c(Laig;I)I
    .locals 0

    iput p1, p0, Laig;->p:I

    return p1
.end method

.method static synthetic d(Laig;)I
    .locals 1

    iget v0, p0, Laig;->o:I

    return v0
.end method

.method static synthetic e(Laig;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Laig;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Laig;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Laig;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Laig;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Laig;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Laig;)I
    .locals 1

    iget v0, p0, Laig;->p:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Laig;->a:Landroid/app/Activity;

    sget v1, Lagg;->edit_line_novo_limite:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laig;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Laig;->a:Landroid/app/Activity;

    sget v1, Lagg;->product_name_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laig;->d:Landroid/widget/TextView;

    iget-object v0, p0, Laig;->a:Landroid/app/Activity;

    sget v1, Lagg;->product_specifics_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laig;->e:Landroid/widget/TextView;

    iget-object v0, p0, Laig;->a:Landroid/app/Activity;

    sget v1, Lagg;->contract_current_limit_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laig;->g:Landroid/widget/TextView;

    iget-object v0, p0, Laig;->a:Landroid/app/Activity;

    sget v1, Lagg;->limite_maximo_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laig;->h:Landroid/widget/TextView;

    iget-object v0, p0, Laig;->a:Landroid/app/Activity;

    sget v1, Lagg;->limite_minimo_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laig;->i:Landroid/widget/TextView;

    iget-object v0, p0, Laig;->a:Landroid/app/Activity;

    sget v1, Lagg;->novo_limite_label_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laig;->j:Landroid/widget/TextView;

    iget-object v0, p0, Laig;->a:Landroid/app/Activity;

    sget v1, Lagg;->ajuste_limite_edittext:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Laig;->k:Landroid/widget/EditText;

    iget-object v0, p0, Laig;->a:Landroid/app/Activity;

    sget v1, Lagg;->help_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laig;->l:Landroid/widget/TextView;

    iget-object v0, p0, Laig;->a:Landroid/app/Activity;

    sget v1, Lagg;->continuar_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Laig;->q:Landroid/widget/Button;

    iget-object v0, p0, Laig;->g:Landroid/widget/TextView;

    iget-object v1, p0, Laig;->a:Landroid/app/Activity;

    sget v2, Lagl;->money_value:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Laig;->b:Lajw;

    invoke-virtual {v4}, Lajw;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laig;->h:Landroid/widget/TextView;

    iget-object v1, p0, Laig;->a:Landroid/app/Activity;

    sget v2, Lagl;->limite_maximo_de:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Laig;->b:Lajw;

    invoke-virtual {v4}, Lajw;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laig;->i:Landroid/widget/TextView;

    iget-object v1, p0, Laig;->a:Landroid/app/Activity;

    sget v2, Lagl;->limite_minimo_de:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Laig;->b:Lajw;

    invoke-virtual {v4}, Lajw;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laig;->c:Lajw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laig;->a:Landroid/app/Activity;

    sget v1, Lagg;->compartilhado_product_specifics_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laig;->f:Landroid/widget/TextView;

    iget-object v0, p0, Laig;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Laig;->f:Landroid/widget/TextView;

    iget-object v1, p0, Laig;->c:Lajw;

    invoke-static {v1}, Lajx;->a(Lajw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Laig;->b:Lajw;

    invoke-virtual {v0}, Lajw;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lajt;->USO_DE_LIMITE_DE_CONTA:Lajt;

    invoke-virtual {v1}, Lajt;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laig;->d:Landroid/widget/TextView;

    sget v1, Lagl;->remanejamento_label_cheque:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Laig;->e:Landroid/widget/TextView;

    iget-object v1, p0, Laig;->b:Lajw;

    invoke-static {v1}, Lajx;->b(Lajw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Laig;->b:Lajw;

    invoke-virtual {v0}, Lajw;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laig;->b:Lajw;

    invoke-virtual {v1}, Lajw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Laig;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Laig;->q:Landroid/widget/Button;

    new-instance v1, Laih;

    invoke-direct {v1, p0}, Laih;-><init>(Laig;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laig;->k:Landroid/widget/EditText;

    invoke-static {v0}, Lajx;->a(Landroid/widget/EditText;)V

    return-void

    :cond_2
    iget-object v0, p0, Laig;->b:Lajw;

    invoke-virtual {v0}, Lajw;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lajt;->CARTAO:Lajt;

    invoke-virtual {v1}, Lajt;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laig;->d:Landroid/widget/TextView;

    sget v1, Lagl;->remanejamento_label_cartao:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Laig;->e:Landroid/widget/TextView;

    iget-object v1, p0, Laig;->b:Lajw;

    invoke-static {v1}, Lajx;->a(Lajw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Laig;->l:Landroid/widget/TextView;

    iget-object v1, p0, Laig;->a:Landroid/app/Activity;

    sget v2, Lagl;->a_partir_de_x:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Laig;->b:Lajw;

    invoke-virtual {v4}, Lajw;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Laig;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lagl;->alerta:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lagl;->ok_entendi:I

    new-instance v2, Laii;

    invoke-direct {v2, p0}, Laii;-><init>(Laig;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
