.class final Laez;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field a:Landroid/widget/RadioButton;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;

.field e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private synthetic g:Laey;


# direct methods
.method constructor <init>(Laey;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Laez;->g:Laey;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Ladr;->radio_button_item_selected:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Laez;->a:Landroid/widget/RadioButton;

    sget v0, Ladr;->text_view_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laez;->b:Landroid/widget/TextView;

    sget v0, Ladr;->text_view_rs:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laez;->c:Landroid/widget/TextView;

    sget v0, Ladr;->text_view_value:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;

    iput-object v0, p0, Laez;->d:Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;

    sget v0, Ladr;->text_view_due_date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laez;->e:Landroid/widget/TextView;

    sget v0, Ladr;->image_view_details:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laez;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Laez;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Laey;->a(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Laez;->a:Landroid/widget/RadioButton;

    new-instance v1, Lafa;

    invoke-direct {v1, p0}, Lafa;-><init>(Laez;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laez;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lafb;

    invoke-direct {v1, p0}, Lafb;-><init>(Laez;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Laez;->a:Landroid/widget/RadioButton;

    new-instance v1, Lafa;

    invoke-direct {v1, p0}, Lafa;-><init>(Laez;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laez;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lafb;

    invoke-direct {v1, p0}, Lafb;-><init>(Laez;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Laez;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Laez;->g:Laey;

    invoke-virtual {p0}, Laez;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Laey;->a(Laey;I)I

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v1

    const-string v2, "Pagamentos_DDA"

    invoke-static {}, Laea;->a()Laea;

    move-result-object v0

    invoke-virtual {v0}, Laea;->d()Lji;

    move-result-object v3

    iget-object v0, p0, Laez;->g:Laey;

    invoke-static {v0}, Laey;->b(Laey;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Laez;->g:Laey;

    invoke-static {v4}, Laey;->a(Laey;)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laeb;

    invoke-virtual {v0}, Laeb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Laez;->g:Laey;

    invoke-static {v0}, Laey;->c(Laey;)Lafh;

    move-result-object v0

    invoke-virtual {v0}, Lafh;->b()V

    iget-object v0, p0, Laez;->g:Laey;

    invoke-virtual {v0}, Laey;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Laey;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    sget v0, Ladr;->radio_button_item_selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Laez;->a:Landroid/widget/RadioButton;

    sget v0, Ladr;->text_view_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laez;->b:Landroid/widget/TextView;

    sget v0, Ladr;->text_view_rs:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laez;->c:Landroid/widget/TextView;

    sget v0, Ladr;->text_view_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;

    iput-object v0, p0, Laez;->d:Lbr/com/santander/modulo/ddav1/components/CurrencyFormattedTextView;

    sget v0, Ladr;->text_view_due_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laez;->e:Landroid/widget/TextView;

    sget v0, Ladr;->image_view_details:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laez;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Laez;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Laey;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private b()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Laez;->g:Laey;

    invoke-virtual {p0}, Laez;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Laey;->a(Laey;I)I

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v1

    const-string v2, "Pagamentos_DDA"

    invoke-static {}, Laea;->a()Laea;

    move-result-object v0

    invoke-virtual {v0}, Laea;->d()Lji;

    move-result-object v3

    iget-object v0, p0, Laez;->g:Laey;

    invoke-static {v0}, Laey;->b(Laey;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Laez;->g:Laey;

    invoke-static {v4}, Laey;->a(Laey;)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laeb;

    invoke-virtual {v0}, Laeb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lji;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Laez;->g:Laey;

    invoke-static {v0}, Laey;->c(Laey;)Lafh;

    move-result-object v0

    invoke-virtual {v0}, Lafh;->b()V

    iget-object v0, p0, Laez;->g:Laey;

    invoke-virtual {v0}, Laey;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Laey;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Laez;)V
    .locals 3

    iget-object v0, p0, Laez;->g:Laey;

    invoke-static {v0}, Laey;->c(Laey;)Lafh;

    move-result-object v1

    iget-object v0, p0, Laez;->g:Laey;

    invoke-static {v0}, Laey;->b(Laey;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Laez;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laeb;

    invoke-virtual {v1, v0}, Lafh;->a(Laeb;)V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Laez;->g:Laey;

    invoke-static {v0}, Laey;->c(Laey;)Lafh;

    move-result-object v1

    iget-object v0, p0, Laez;->g:Laey;

    invoke-static {v0}, Laey;->b(Laey;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Laez;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laeb;

    invoke-virtual {v1, v0}, Lafh;->a(Laeb;)V

    return-void
.end method
