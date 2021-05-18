.class public Laqe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Laqn;

.field private c:Landroid/app/Activity;

.field private d:Ljava/io/File;

.field private e:Ljava/lang/String;

.field private f:Landroid/app/Dialog;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lard;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Laqn;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lard;->a()Lard;

    move-result-object v0

    iput-object v0, p0, Laqe;->i:Lard;

    .line 68
    iput-object p1, p0, Laqe;->c:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Laqe;->b:Laqn;

    .line 70
    iput-object p3, p0, Laqe;->e:Ljava/lang/String;

    .line 71
    iput p4, p0, Laqe;->a:I

    .line 72
    return-void
.end method

.method static synthetic a(Laqe;)Lard;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Laqe;->i:Lard;

    return-object v0
.end method

.method static synthetic a(Laqe;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Laqe;->d:Ljava/io/File;

    return-object p1
.end method

.method private a(IILandroid/widget/TextView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v0, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 144
    invoke-virtual {p3, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 147
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 148
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 149
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 154
    iget-object v1, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v1, v0}, Laqr;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 156
    iget-object v1, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Laqs;->a(Ljava/io/File;Landroid/content/Context;)V

    .line 157
    invoke-direct {p0, v0}, Laqe;->a(Ljava/io/File;)V

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Laqe;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laqe;->d:Ljava/io/File;

    .line 161
    iget-object v0, p0, Laqe;->d:Ljava/io/File;

    iget-object v1, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Laqs;->a(Ljava/io/File;Landroid/content/Context;)V

    .line 162
    iget-object v0, p0, Laqe;->d:Ljava/io/File;

    invoke-direct {p0, v0}, Laqe;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 259
    iget-object v0, p0, Laqe;->b:Laqn;

    if-eqz v0, :cond_0

    .line 260
    invoke-static {p1}, Laqs;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Laqe;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Laqe;->b:Laqn;

    iget-object v1, p0, Laqe;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Laqn;->a(Ljava/io/File;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-static {p1}, Laqr;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    const-string v1, "Chat Santander"

    const-string v2, "Voc\u00ea pode confirmar o envio do documento {document}?"

    const-string v3, "{document}"

    .line 266
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Enviar"

    new-instance v4, Laql;

    invoke-direct {v4, p0, p1}, Laql;-><init>(Laqe;Ljava/io/File;)V

    new-instance v5, Laqm;

    invoke-direct {v5, p0}, Laqm;-><init>(Laqe;)V

    .line 265
    invoke-static/range {v0 .. v5}, Lase;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Laqe;->b:Laqn;

    invoke-interface {v0, p1}, Laqn;->a(Ljava/io/File;)V

    goto :goto_0

    .line 292
    :cond_3
    const-string v0, "Chat Santander"

    const-string v1, "Desculpe, n\u00e3o conseguimos receber esse arquivo. Ele deve ter no m\u00e1ximo 5MB."

    iget-object v2, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lase;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 294
    iget-object v0, p0, Laqe;->b:Laqn;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Laqn;->a(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 336
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Laqe;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Laqe;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 202
    iget-object v1, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v1, v0}, Laqr;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 203
    invoke-direct {p0, v0}, Laqe;->a(Ljava/io/File;)V

    .line 205
    :cond_0
    return-void
.end method

.method static synthetic b(Laqe;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Laqe;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic c(Laqe;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 208
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lapk;->frame_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 213
    new-instance v4, Landroid/support/v7/app/AppCompatDialog;

    iget-object v1, p0, Laqe;->c:Landroid/app/Activity;

    const v2, 0x1030009

    invoke-direct {v4, v1, v2}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 216
    invoke-virtual {v4, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 217
    const-string v0, "Preview"

    invoke-virtual {v4, v0}, Landroid/support/v7/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    sget v0, Lapi;->image_preview:I

    invoke-virtual {v4, v0}, Landroid/support/v7/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 219
    sget v1, Lapi;->image_confirm:I

    invoke-virtual {v4, v1}, Landroid/support/v7/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 220
    sget v2, Lapi;->image_cancel:I

    invoke-virtual {v4, v2}, Landroid/support/v7/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 221
    sget v3, Lapi;->close_image_preview_tv:I

    invoke-virtual {v4, v3}, Landroid/support/v7/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 222
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 225
    iget-object v5, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v5, v3}, Laqr;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v5

    .line 227
    iget-object v6, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v6, v3}, Laqs;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 228
    iget-object v0, p0, Laqe;->b:Laqn;

    invoke-interface {v0, v7}, Laqn;->a(I)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laqs;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 232
    if-eqz v3, :cond_2

    .line 233
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    new-instance v0, Laqj;

    invoke-direct {v0, p0, v5, v4}, Laqj;-><init>(Laqe;Ljava/io/File;Landroid/support/v7/app/AppCompatDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    new-instance v0, Laqk;

    invoke-direct {v0, p0, v4}, Laqk;-><init>(Laqe;Landroid/support/v7/app/AppCompatDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDialog;->show()V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Laqe;->b:Laqn;

    invoke-interface {v0, v7}, Laqn;->a(I)V

    goto :goto_0
.end method

.method static synthetic d(Laqe;)Laqn;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Laqe;->b:Laqn;

    return-object v0
.end method

.method private e()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 75
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    sget v1, Lapk;->capture_or_pick_image_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 80
    sget v0, Lapi;->text_action_camera:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    sget v1, Lapi;->text_action_gallery:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    sget v2, Lapi;->text_action_document:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    iget v5, p0, Laqe;->a:I

    sget v6, Laph;->ico_squadchat_action_capture:I

    invoke-direct {p0, v5, v6, v0}, Laqe;->a(IILandroid/widget/TextView;)V

    .line 85
    iget v5, p0, Laqe;->a:I

    sget v6, Laph;->ico_squadchat_action_gallery:I

    invoke-direct {p0, v5, v6, v1}, Laqe;->a(IILandroid/widget/TextView;)V

    .line 86
    iget v5, p0, Laqe;->a:I

    sget v6, Laph;->ico_squadchat_action_document:I

    invoke-direct {p0, v5, v6, v2}, Laqe;->a(IILandroid/widget/TextView;)V

    .line 88
    new-instance v5, Laqf;

    invoke-direct {v5, p0}, Laqf;-><init>(Laqe;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v0, Laqg;

    invoke-direct {v0, p0}, Laqg;-><init>(Laqe;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v0, Laqh;

    invoke-direct {v0, p0}, Laqh;-><init>(Laqe;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lapo;->cancel:I

    new-instance v2, Laqi;

    invoke-direct {v2, p0}, Laqi;-><init>(Laqe;)V

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Laqe;->e()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Laqe;->f:Landroid/app/Dialog;

    .line 137
    iget-object v0, p0, Laqe;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 138
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 181
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 182
    packed-switch p1, :pswitch_data_0

    .line 193
    iget-object v0, p0, Laqe;->b:Laqn;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Laqn;->a(I)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 184
    :pswitch_0
    invoke-direct {p0, p3}, Laqe;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 187
    :pswitch_1
    invoke-direct {p0, p3}, Laqe;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-direct {p0, p3}, Laqe;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(I[Ljava/lang/String;[IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    if-nez p1, :cond_0

    .line 169
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 171
    if-nez p4, :cond_0

    .line 172
    invoke-virtual {p0}, Laqe;->a()V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Laqe;->b:Laqn;

    invoke-interface {v0, v1}, Laqn;->a(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v0}, Laqs;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v0}, Laqs;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Laqe;->h:Z

    .line 303
    invoke-static {}, Laqr;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0}, Laqe;->a()V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Laqe;->h:Z

    .line 308
    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v0}, Laqs;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 312
    :cond_2
    iget-object v0, p0, Laqe;->b:Laqn;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Laqn;->a(I)V

    goto :goto_0
.end method

.method public c()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 317
    iget-object v0, p0, Laqe;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Laqe;->a(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Laqe;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 321
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Laqr;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 324
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laqe;->g:Ljava/lang/String;

    .line 330
    :goto_0
    return-object v0

    .line 327
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Laqe;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Laqr;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 329
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laqe;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Laqe;->h:Z

    return v0
.end method
