.class public Lkbi;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkbq;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Lkbq;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lkbq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lkbi;->n:I

    .line 54
    iput-object p1, p0, Lkbi;->a:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lkbi;->c:Ljava/util/List;

    .line 57
    return-void
.end method

.method static synthetic a(Lkbi;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lkbi;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lkbi;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lkbi;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lkbi;->n:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 10

    .prologue
    const v9, 0x7f0e0103

    const v6, 0x7f020623

    const/4 v7, 0x0

    const v5, 0x7f020622

    const v8, 0x7f0e00fa

    .line 166
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    move v0, v7

    .line 205
    :goto_1
    return v0

    .line 166
    :sswitch_0
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v7

    goto :goto_0

    :sswitch_1
    const-string v1, "7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "20"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "27"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 169
    :pswitch_0
    iget-object v1, p0, Lkbi;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lkbi;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lkbi;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f020624

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    const-string v4, "Consultar"

    const-string v5, "Habilitar"

    const-string v6, "Excluir"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    move v0, v7

    .line 173
    goto/16 :goto_1

    .line 177
    :pswitch_1
    iget-object v1, p0, Lkbi;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lkbi;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lkbi;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f020624

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    const-string v4, "Bloquear"

    const-string v5, "Habilitado"

    const-string v6, "Excluir"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    .line 181
    const/16 v0, 0x32

    goto/16 :goto_1

    .line 184
    :pswitch_2
    iget-object v1, p0, Lkbi;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lkbi;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lkbi;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    const-string v4, "Consultar"

    const-string v5, "Habilitar"

    const-string v6, "Excluir"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    .line 188
    const/16 v0, 0x64

    goto/16 :goto_1

    .line 192
    :pswitch_3
    iget-object v1, p0, Lkbi;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lkbi;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lkbi;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f020624

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    const-string v4, "Bloqueado"

    const-string v5, "Habilitar"

    const-string v6, "Excluir"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    move v0, v7

    .line 196
    goto/16 :goto_1

    .line 199
    :pswitch_4
    iget-object v1, p0, Lkbi;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lkbi;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lkbi;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f020624

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    const-string v4, "Bloqueado"

    const-string v5, "Habilitar"

    const-string v6, "Excluir"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    move v0, v7

    .line 203
    goto/16 :goto_1

    .line 166
    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x37 -> :sswitch_1
        0x38 -> :sswitch_2
        0x63e -> :sswitch_3
        0x645 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(I)Lkbq;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lkbi;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbq;

    return-object v0
.end method

.method public a(IILandroid/widget/SeekBar;ILjava/lang/String;)V
    .locals 9

    .prologue
    const v8, 0x7f0e0103

    const v7, 0x7f0e00fa

    .line 210
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 212
    sparse-switch p1, :sswitch_data_0

    .line 239
    :goto_0
    iget-object v1, p0, Lkbi;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v0, p0, Lkbi;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkbq;

    move-object v0, p0

    move v4, p4

    move v5, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/app/Activity;Ljava/lang/String;Lkbq;IILandroid/widget/SeekBar;)V

    .line 240
    return-void

    .line 215
    :sswitch_0
    iget-object v0, p0, Lkbi;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbq;

    iput-object v0, p0, Lkbi;->m:Lkbq;

    .line 216
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    const-string v4, "Consultar"

    const-string v5, "Habilitar"

    const-string v6, "Excluir"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkbi;->a:Landroid/content/Context;

    const v2, 0x7f0900a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 223
    :sswitch_1
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    const-string v4, "Bloquear"

    const-string v5, "Habilitado"

    const-string v6, "Excluir"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkbi;->a:Landroid/content/Context;

    const v2, 0x7f0900a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 231
    :sswitch_2
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    const-string v4, "Consultar"

    const-string v5, "Habilitar"

    const-string v6, "Excluir"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkbi;->a:Landroid/content/Context;

    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lkbq;IILandroid/widget/SeekBar;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-static {p1, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 245
    new-instance v4, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v4, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 246
    const v0, 0x7f040128

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 247
    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 248
    const v0, 0x7f1005ee

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const v0, 0x7f1005f0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 252
    const-string v0, "Confirmar"

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    new-instance v0, Lkbk;

    move-object v1, p0

    move-object v2, p6

    move v3, p4

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lkbk;-><init>(Lkbi;Landroid/widget/SeekBar;ILandroid/app/Dialog;Lkbq;I)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    const v0, 0x7f1005ef

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 270
    const-string v1, "Cancelar"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 271
    new-instance v1, Lkbl;

    invoke-direct {v1, p0, p6, p4, v4}, Lkbl;-><init>(Lkbi;Landroid/widget/SeekBar;ILandroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    new-instance v0, Lmyg;

    invoke-direct {v0, p1}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 281
    new-instance v0, Lmyh;

    invoke-direct {v0, p1}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 282
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 284
    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    return-void
.end method

.method public a(Landroid/widget/SeekBar;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {p1, p4}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 72
    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 73
    return-void
.end method

.method public a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    invoke-virtual {p3, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    return-void
.end method

.method public a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p3, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public b(I)V
    .locals 10

    .prologue
    const v9, 0x7f020624

    const v8, 0x7f0e0103

    const v6, 0x7f020623

    const v5, 0x7f020622

    const v7, 0x7f0e00fa

    .line 288
    sparse-switch p1, :sswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 290
    :sswitch_0
    iget-object v1, p0, Lkbi;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lkbi;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lkbi;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    const-string v4, "Consultar"

    const-string v5, "Habilitar"

    const-string v6, "Excluir"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    goto :goto_0

    .line 295
    :sswitch_1
    iget-object v1, p0, Lkbi;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lkbi;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lkbi;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    const-string v4, "Bloquear"

    const-string v5, "Habilitado"

    const-string v6, "Excluir"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    goto/16 :goto_0

    .line 300
    :sswitch_2
    iget-object v1, p0, Lkbi;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lkbi;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lkbi;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    const-string v4, "Consultar"

    const-string v5, "Habilitar"

    const-string v6, "Excluir"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lkbi;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lkbi;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lkbi;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    goto/16 :goto_0

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lkbi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lkbi;->a(I)Lkbq;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 93
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f0e0103

    .line 99
    iget-object v0, p0, Lkbi;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lkbi;->b:Landroid/view/LayoutInflater;

    .line 100
    iget-object v0, p0, Lkbi;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 102
    const v0, 0x7f100315

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lkbi;->k:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f10047a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lkbi;->j:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f100479

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lkbi;->l:Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lkbi;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lkbi;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbq;

    invoke-virtual {v0}, Lkbq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v0, 0x7f1011b3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 108
    iget-object v1, p0, Lkbi;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkbq;

    invoke-virtual {v1}, Lkbq;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    .line 109
    iget-object v1, p0, Lkbi;->k:Landroid/widget/ImageView;

    iget-object v3, p0, Lkbi;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_0
    iget-object v3, p0, Lkbi;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inclus\u00e3o: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lkbi;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkbq;

    invoke-virtual {v1}, Lkbq;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lkbi;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    const v1, 0x7f1011b7

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lkbi;->d:Landroid/widget/ImageView;

    .line 116
    const v1, 0x7f1011b8

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lkbi;->e:Landroid/widget/ImageView;

    .line 117
    const v1, 0x7f1011b9

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lkbi;->f:Landroid/widget/ImageView;

    .line 118
    const v1, 0x7f1011b4

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lkbi;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    const v1, 0x7f1011b5

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkbi;->h:Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lkbi;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    const v1, 0x7f1011b6

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkbi;->i:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lkbi;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020621

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p0, v0, v3, v4, v1}, Lkbi;->a(Landroid/widget/SeekBar;Landroid/graphics/drawable/Drawable;II)V

    .line 128
    iget-object v1, p0, Lkbi;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkbq;

    invoke-virtual {v1}, Lkbq;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkbi;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 130
    new-instance v1, Lkbj;

    invoke-direct {v1, p0, p1}, Lkbj;-><init>(Lkbi;I)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 162
    return-object v2
.end method
