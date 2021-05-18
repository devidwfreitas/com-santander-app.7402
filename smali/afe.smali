.class public Lafe;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/Button;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafe;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lafe;->a()V

    invoke-direct {p0}, Lafe;->b()V

    return-void
.end method

.method static synthetic a(Lafe;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lafe;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lafe;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_title_error:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafe;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lafe;->a:Landroid/app/Activity;

    sget v1, Ladr;->text_view_subtitle_error:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafe;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lafe;->a:Landroid/app/Activity;

    sget v1, Ladr;->textview_cpf_cadastro_dda:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lafe;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lafe;->a:Landroid/app/Activity;

    sget v1, Ladr;->layout_cadastro_dda:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lafe;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lafe;->a:Landroid/app/Activity;

    sget v1, Ladr;->checkbox_termo_adesao:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lafe;->f:Landroid/widget/CheckBox;

    iget-object v0, p0, Lafe;->a:Landroid/app/Activity;

    sget v1, Ladr;->button_cadastrar_dda:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lafe;->g:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lafe;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lafe;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, p3, v0, v1, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lafe;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b()V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lafe;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subtitleError"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafe;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lafe;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subtitleError"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafe;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lafe;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lafe;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "titleError"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lafe;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lafe;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private c()Landroid/text/SpannableStringBuilder;
    .locals 6

    const/16 v5, 0x21

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "Li e concordo com o "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const-string v1, "Termo de Ades\u00e3o"

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    :goto_0
    new-instance v1, Lafi;

    invoke-direct {v1, p0}, Lafi;-><init>(Lafe;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xf

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v1, " ao pagador eletr\u00f4nico"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lafe;->a:Landroid/app/Activity;

    const v3, 0x106000c

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x14

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    :cond_0
    const-string v1, "Termo de Ades\u00e3o"

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-direct {p0, v0, v1, v2, v5}, Lafe;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lafe;->a:Landroid/app/Activity;

    invoke-static {v0}, Lano;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v1

    const-string v2, "Pagamentos_DDA_Cadastrar_Acao"

    const-string v3, "Cadastrar"

    invoke-virtual {v1, v2, v3}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v1

    const-string v2, "Pagamentos_DDA_Cadastrar_Autenticacao_Acao"

    const-string v3, "IDSantander"

    invoke-virtual {v1, v2, v3}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lafe;->h:Ljava/lang/String;

    new-instance v2, Lafj;

    invoke-direct {v2, p0, v0}, Lafj;-><init>(Lafe;Landroid/app/Dialog;)V

    invoke-static {v1, v2}, Laeu;->a(Ljava/lang/String;Laev;)V

    return-void
.end method
