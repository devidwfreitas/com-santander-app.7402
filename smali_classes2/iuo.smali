.class public Liuo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liun;


# instance fields
.field private a:Lium;

.field private b:Lisa;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lium;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Liuo;->a:Lium;

    .line 55
    iget-object v0, p0, Liuo;->a:Lium;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Liuo;->g:Landroid/app/Activity;

    .line 56
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->a()V

    .line 58
    new-instance v0, Lisb;

    iget-object v1, p0, Liuo;->g:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lisb;-><init>(Landroid/app/Activity;Liun;)V

    iput-object v0, p0, Liuo;->b:Lisa;

    .line 59
    return-void
.end method

.method static synthetic a(Liuo;)Lium;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Liuo;->a:Lium;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 243
    sparse-switch p1, :sswitch_data_0

    .line 264
    :goto_0
    return-void

    .line 247
    :sswitch_0
    iget-object v0, p0, Liuo;->b:Lisa;

    invoke-interface {v0}, Lisa;->f()V

    goto :goto_0

    .line 252
    :sswitch_1
    if-eqz p3, :cond_0

    const-string v1, "showLogin"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 253
    :cond_0
    iget-object v1, p0, Liuo;->a:Lium;

    invoke-interface {v1, v0}, Lium;->b(Z)V

    goto :goto_0

    .line 258
    :sswitch_2
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->u()V

    goto :goto_0

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x462 -> :sswitch_2
        0x46a -> :sswitch_2
        0x26c0 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(I[Ljava/lang/String;[ILandroid/app/Activity;)V
    .locals 5
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-static {p1, p2, p3, p4}, Lmze;->a(I[Ljava/lang/String;[ILandroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 154
    const-string v0, ""

    .line 157
    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 158
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v1

    .line 159
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 162
    :goto_0
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    invoke-static {v2, p1, v0, p4}, Lmze;->a(Ljava/lang/String;IZLandroid/app/Activity;)V

    .line 177
    :cond_0
    :goto_1
    return-void

    .line 165
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 166
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->r()V

    goto :goto_1

    .line 167
    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 168
    aget v0, p3, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 169
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->i()V

    goto :goto_1

    .line 171
    :cond_3
    iget-object v0, p0, Liuo;->a:Lium;

    const-string v1, "Para utilizar o Localizador de Ag\u00eancias, habilite a permiss\u00e3o de localiza\u00e7\u00e3o."

    invoke-interface {v0, v1, v4}, Lium;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 173
    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 174
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->s()V

    goto :goto_1

    :cond_5
    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 188
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    const v1, 0x7f100d6a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/SantanderSwitch;

    .line 198
    check-cast p1, Landroid/app/AlertDialog;

    const v0, 0x7f100d62

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 200
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 206
    iget-object v1, p0, Liuo;->b:Lisa;

    invoke-interface {v1, v0}, Lisa;->a(I)V

    .line 207
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 115
    iput-object p1, p0, Liuo;->f:Landroid/graphics/Bitmap;

    .line 116
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0, p1}, Lium;->a(Landroid/graphics/Bitmap;)V

    .line 117
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Liuo;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liuo;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->f()V

    .line 125
    :cond_0
    return-void
.end method

.method public a(Lirz;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 87
    packed-switch p3, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->h()V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p1}, Lirz;->b()I

    move-result v0

    iput v0, p0, Liuo;->d:I

    .line 99
    invoke-virtual {p1}, Lirz;->c()I

    move-result v0

    iput v0, p0, Liuo;->e:I

    .line 101
    iget v0, p0, Liuo;->d:I

    invoke-static {v0}, Lmyo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->d()V

    goto :goto_0

    .line 103
    :cond_0
    iget v0, p0, Liuo;->d:I

    const v1, 0x7f090538

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Liuo;->a:Lium;

    iget v1, p0, Liuo;->d:I

    invoke-interface {v0, v1}, Lium;->a(I)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->b()V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Liuo;->a:Lium;

    check-cast v0, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-virtual {v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020096

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    iget-object v1, p0, Liuo;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Liuo;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Liuo;->c:Ljava/lang/String;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    iput-object p1, p0, Liuo;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lirz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0, p1}, Lium;->a(Ljava/util/List;)V

    .line 82
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0, p1}, Lium;->b(Z)V

    .line 269
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0, p1}, Lium;->a([Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->e()V

    .line 142
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Liuo;->d:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Liuo;->e:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lium;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->g()V

    .line 130
    iget-object v0, p0, Liuo;->a:Lium;

    iget-object v1, p0, Liuo;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lium;->a(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Liuo;->b:Lisa;

    new-instance v1, Liup;

    invoke-direct {v1, p0, p1}, Liup;-><init>(Liuo;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lisa;->a(Lfoh;)V

    .line 238
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->c()V

    .line 136
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Liuo;->d:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lium;->b(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->m()V

    .line 227
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->l()V

    .line 222
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->k()V

    .line 182
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->n()V

    .line 212
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->o()V

    .line 217
    return-void
.end method

.method public i()Landroid/content/Context;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Liuo;->a:Lium;

    check-cast v0, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Liuo;->b:Lisa;

    invoke-interface {v0}, Lisa;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Liuo;->b:Lisa;

    invoke-interface {v0}, Lisa;->a()V

    .line 284
    iget-object v0, p0, Liuo;->b:Lisa;

    invoke-interface {v0}, Lisa;->b()V

    .line 285
    iget-object v0, p0, Liuo;->b:Lisa;

    invoke-interface {v0}, Lisa;->c()V

    .line 286
    iget-object v0, p0, Liuo;->b:Lisa;

    iget-object v1, p0, Liuo;->a:Lium;

    invoke-interface {v1}, Lium;->p()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lisa;->a(Landroid/os/Bundle;)V

    .line 287
    iget-object v0, p0, Liuo;->b:Lisa;

    invoke-interface {v0}, Lisa;->g()V

    .line 288
    iget-object v0, p0, Liuo;->b:Lisa;

    invoke-interface {v0}, Lisa;->d()V

    .line 289
    invoke-virtual {p0}, Liuo;->n()V

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Liuo;->a(Z)V

    .line 291
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Liuo;->b:Lisa;

    invoke-interface {v0}, Lisa;->i()V

    .line 296
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->r()V

    .line 301
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Liuo;->a:Lium;

    invoke-interface {v0}, Lium;->q()V

    .line 305
    return-void
.end method
