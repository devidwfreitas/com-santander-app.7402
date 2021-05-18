.class public Lamw;
.super Lamv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamv",
        "<",
        "Lamx;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/widget/ImageView;

.field protected final b:Landroid/widget/TextView;

.field protected final c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 25
    sget v0, Lalu;->santander_adapter_drop_down_cartao:I

    invoke-direct {p0, p1, v0}, Lamv;-><init>(Landroid/view/ViewGroup;I)V

    .line 26
    iget-object v0, p0, Lamw;->itemView:Landroid/view/View;

    sget v1, Lals;->credit_card_image_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lamw;->a:Landroid/widget/ImageView;

    .line 27
    iget-object v0, p0, Lamw;->itemView:Landroid/view/View;

    sget v1, Lals;->credit_card_name_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lamw;->b:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lamw;->itemView:Landroid/view/View;

    sget v1, Lals;->credit_card_number_final_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lamw;->c:Landroid/widget/TextView;

    .line 29
    return-void
.end method

.method private b(Lamx;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-interface {p1}, Lamx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-interface {p1}, Lamx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 41
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lamw;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    iget-object v0, p0, Lamw;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-interface {p1}, Lamx;->b()I

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lamw;->a:Landroid/widget/ImageView;

    invoke-interface {p1}, Lamx;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    iget-object v0, p0, Lamw;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lamw;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lamx;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lamw;->b(Lamx;)V

    .line 34
    iget-object v0, p0, Lamw;->b:Landroid/widget/TextView;

    invoke-interface {p1}, Lamx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lamw;->c:Landroid/widget/TextView;

    invoke-interface {p1}, Lamx;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lamx;

    invoke-virtual {p0, p1}, Lamw;->a(Lamx;)V

    return-void
.end method
