.class public Lmas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/graphics/Typeface;

.field final synthetic c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;Ljava/util/List;Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    iput-object p2, p0, Lmas;->a:Ljava/util/List;

    iput-object p3, p0, Lmas;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 134
    iget-object v0, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Lmay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Lmay;

    move-result-object v1

    iget-object v0, p0, Lmas;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lmay;->a(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->b(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    iget-object v0, p0, Lmas;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->c(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    iget-object v0, p0, Lmas;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->d(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    iget-object v0, p0, Lmas;->a:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->a(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v0, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->e(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    move-result-object v0

    iget-object v1, p0, Lmas;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v5}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 143
    iget-object v0, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->f(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    move-result-object v0

    iget-object v1, p0, Lmas;->b:Landroid/graphics/Typeface;

    iget-object v2, p0, Lmas;->b:Landroid/graphics/Typeface;

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 144
    iget-object v0, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->g(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    move-result-object v0

    iget-object v1, p0, Lmas;->b:Landroid/graphics/Typeface;

    iget-object v2, p0, Lmas;->b:Landroid/graphics/Typeface;

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 146
    iget-object v0, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->h(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lmas;->c:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->h(Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    move-result-object v1

    iget-object v0, p0, Lmas;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrl;

    invoke-virtual {v0}, Lkrl;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method
