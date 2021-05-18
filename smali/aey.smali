.class public Laey;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# static fields
.field private static d:Landroid/content/res/ColorStateList;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lafh;

.field private c:I


# direct methods
.method public constructor <init>(Lafh;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Laey;->c:I

    iput-object p1, p0, Laey;->b:Lafh;

    iput-object p2, p0, Laey;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Laey;)I
    .locals 1

    iget v0, p0, Laey;->c:I

    return v0
.end method

.method static synthetic a(Laey;I)I
    .locals 0

    iput p1, p0, Laey;->c:I

    return p1
.end method

.method static synthetic a(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-static {p0}, Laey;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static synthetic b(Laey;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laey;->a:Ljava/util/List;

    return-object v0
.end method

.method private static b(Landroid/content/res/ColorStateList;)V
    .locals 1

    sget-object v0, Laey;->d:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    sput-object p0, Laey;->d:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method static synthetic c(Laey;)Lafh;
    .locals 1

    iget-object v0, p0, Laey;->b:Lafh;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Laey;->c:I

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Laez;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ladt;->layout_title_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Laez;

    invoke-direct {v1, p0, v0}, Laez;-><init>(Laey;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Laez;I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Laey;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laeb;

    iget-object v3, p1, Laez;->a:Landroid/widget/RadioButton;

    iget v1, p0, Laey;->c:I

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :try_start_0
    iget-object v1, p1, Laez;->b:Landroid/widget/TextView;

    invoke-static {}, Laea;->a()Laea;

    move-result-object v3

    invoke-virtual {v3}, Laea;->d()Lji;

    move-result-object v3

    invoke-virtual {v0}, Laeb;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0}, Laeb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laeo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Vencido em "

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Laez;->e:Landroid/widget/TextView;

    iget-object v4, p0, Laey;->b:Lafh;

    invoke-virtual {v4}, Lafh;->a()Landroid/app/Activity;

    move-result-object v4

    sget v5, Lado;->vencido_em:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p1, Laez;->c:Landroid/widget/TextView;

    iget-object v4, p0, Laey;->b:Lafh;

    invoke-virtual {v4}, Lafh;->a()Landroid/app/Activity;

    move-result-object v4

    sget v5, Lado;->vencido_em:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p1, Laez;->d:Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;

    iget-object v4, p0, Laey;->b:Lafh;

    invoke-virtual {v4}, Lafh;->a()Landroid/app/Activity;

    move-result-object v4

    sget v5, Lado;->vencido_em:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;->setTextColor(I)V

    :goto_2
    iget-object v3, p1, Laez;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Laeb;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laeo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Laez;->d:Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;

    invoke-virtual {v0}, Laeb;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Laeb;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laep;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;->setTextAndFormat(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-class v3, Laey;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    iget-object v3, p1, Laez;->e:Landroid/widget/TextView;

    sget-object v4, Laey;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p1, Laez;->c:Landroid/widget/TextView;

    sget-object v4, Laey;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p1, Laez;->d:Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;

    sget-object v4, Laey;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Laey;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Laez;

    invoke-virtual {p0, p1, p2}, Laey;->a(Laez;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Laey;->a(Landroid/view/ViewGroup;I)Laez;

    move-result-object v0

    return-object v0
.end method
