.class public Lmxn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "Dispositivo com conex\u00e3o inst\u00e1vel ou sem acesso \u00e0 internet. Verifique se sua conex\u00e3o est\u00e1 dispon\u00edvel. Por favor acesse novamente."

.field public static b:Landroid/app/Activity; = null

.field public static c:Landroid/app/Dialog; = null

.field private static final d:Ljava/lang/String; = "DialogUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lmxn;->c:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 283
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 284
    const v0, 0x7f04018d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 287
    const v0, 0x7f100773

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 288
    new-instance v2, Lmyc;

    invoke-direct {v2, p0, v1}, Lmyc;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v0, 0x7f10078d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 335
    new-instance v2, Lmye;

    invoke-direct {v2, v1}, Lmye;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 343
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 345
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 347
    return-object v1
.end method

.method public static a(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmxn;->b(Landroid/app/Activity;IZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;IILjava/lang/String;I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 257
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 258
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 260
    invoke-virtual {v1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {v1, p4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 265
    new-instance v2, Lmyb;

    invoke-direct {v2, v1}, Lmyb;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 273
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 275
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 277
    return-object v1
.end method

.method public static a(Landroid/app/Activity;IZ)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 355
    invoke-static {p0, p1, p2}, Lmxn;->b(Landroid/app/Activity;IZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 223
    const v0, 0x7f1005ed

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 224
    const v1, 0x7f100772

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 226
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const-string v0, "\\|"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "\\|"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object p3, v0, v2

    .line 232
    :cond_0
    invoke-static {p3}, Lhav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const v0, 0x7f1002da

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 236
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const v0, 0x7f100d61

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 239
    invoke-virtual {v0, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 243
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 245
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 247
    return-object p1
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 718
    invoke-static/range {p0 .. p5}, Lmxn;->c(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 714
    invoke-static/range {p0 .. p6}, Lmxn;->b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 698
    invoke-static {p0, p1, p2, p3}, Lmxn;->c(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 702
    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lmxn;->b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 710
    invoke-static/range {p0 .. p5}, Lmxn;->b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 706
    invoke-static/range {p0 .. p6}, Lmxn;->b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 821
    invoke-static {p0, v3}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 823
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 824
    const v0, 0x7f040190

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 825
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 827
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 828
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 829
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 830
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 831
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 832
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 834
    const v0, 0x7f100795

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 835
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    const v0, 0x7f100783

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 837
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 840
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 842
    return-object v1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 110
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 111
    const v0, 0x7f040279

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 112
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 114
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0b021e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 116
    const v0, 0x7f1005ed

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    const v1, 0x7f100772

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    if-eqz p2, :cond_0

    const-string v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 123
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object p2, v0, v3

    .line 125
    :cond_0
    invoke-static {p2}, Lhav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v0, 0x7f1002da

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 129
    if-eqz p3, :cond_2

    .line 130
    sput-object p0, Lmxn;->b:Landroid/app/Activity;

    .line 131
    new-instance v1, Lmxx;

    invoke-direct {v1, v2}, Lmxx;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :goto_0
    if-eqz p4, :cond_1

    .line 148
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_1
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 153
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 155
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 157
    return-object v2

    .line 140
    :cond_2
    new-instance v1, Lmxy;

    invoke-direct {v1, v2}, Lmxy;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-static {p0, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 163
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 164
    const v0, 0x7f040279

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 165
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 167
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0b021e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 169
    const v0, 0x7f1005ed

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    const v1, 0x7f100772

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 172
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    if-eqz p2, :cond_0

    const-string v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 176
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object p2, v0, v3

    .line 178
    :cond_0
    invoke-static {p2}, Lhav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const v0, 0x7f1002da

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 182
    if-eqz p3, :cond_2

    .line 183
    sput-object p0, Lmxn;->b:Landroid/app/Activity;

    .line 184
    new-instance v1, Lmxz;

    invoke-direct {v1, v2, p5, p0}, Lmxz;-><init>(Landroid/app/Dialog;ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :goto_0
    if-eqz p4, :cond_1

    .line 208
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_1
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 213
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 215
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 217
    return-object v2

    .line 200
    :cond_2
    new-instance v1, Lmya;

    invoke-direct {v1, v2}, Lmya;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 398
    invoke-static {p0, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 400
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 401
    const v0, 0x7f040279

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 402
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 404
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0b021e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 406
    const v0, 0x7f1005ed

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 407
    const v1, 0x7f100772

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 409
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    if-eqz p1, :cond_0

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 413
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object p1, v0, v3

    .line 415
    :cond_0
    invoke-static {p1}, Lhav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    const v0, 0x7f1002da

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 419
    new-instance v1, Lmxp;

    invoke-direct {v1, v2, p2, p0}, Lmxp;-><init>(Landroid/app/Dialog;ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 433
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 435
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 437
    return-object v2
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0903b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception occurred evaluating xpath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const v1, 0x7f09051e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 58
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lmxn;->c:Landroid/app/Dialog;

    .line 59
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 85
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 86
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 87
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090199

    new-instance v4, Lmxo;

    invoke-direct {v4, v0}, Lmxo;-><init>(Landroid/app/AlertDialog;)V

    .line 88
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 95
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 880
    invoke-static {p0, v2}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 882
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 883
    const v0, 0x7f040279

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 884
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 885
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 887
    const v0, 0x7f1005ed

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 888
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    const v0, 0x7f100772

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 891
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 894
    new-instance v2, Lmxw;

    invoke-direct {v2, v1}, Lmxw;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 901
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 903
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 905
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 906
    return-void

    .line 888
    :cond_0
    const-string p1, ""

    goto :goto_0

    .line 891
    :cond_1
    const-string p2, ""

    goto :goto_1

    .line 899
    :cond_2
    const-string p3, ""

    goto :goto_2
.end method

.method public static a(Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 481
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 482
    const v0, 0x7f040183

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 483
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 485
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 487
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 489
    const v0, 0x7f100773

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 490
    new-instance v2, Lmxq;

    invoke-direct {v2, p1, p0, v1}, Lmxq;-><init>(ZLandroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    const v0, 0x7f100772

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 550
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 909
    invoke-static {}, Laqt;->a()V

    .line 911
    invoke-static {}, Lcom/santander/app/MinhaConta;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    :goto_0
    return-void

    .line 915
    :cond_0
    invoke-static {}, Lcom/santander/app/MinhaConta;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    invoke-static {p0, p1}, Lcom/santander/app/MinhaConta;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 918
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/ExitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 920
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 921
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 922
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    const-string v1, "showHome"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 924
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 441
    invoke-static {p0}, Lano;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;IZ)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 360
    invoke-static {p0, v2}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 363
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0b0224

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 364
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 365
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 367
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 368
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f0b021e

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 370
    new-instance v1, Lmyg;

    invoke-direct {v1, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 371
    new-instance v1, Lmyh;

    invoke-direct {v1, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 373
    const v1, 0x7f10071c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmyf;

    invoke-direct {v2, v0, p2, p0}, Lmyf;-><init>(Landroid/app/Dialog;ZLandroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-object v0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    const-string v2, "DialogUtil"

    const-string v3, "Erro showLoading"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 722
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 724
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 725
    const v0, 0x7f040128

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 726
    const v0, 0x7f1005ee

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 727
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    const v0, 0x7f1005f0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 730
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 731
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    const v0, 0x7f1005ef

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 734
    invoke-virtual {v0, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 735
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 739
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 741
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 743
    return-object v1
.end method

.method private static b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 643
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 645
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 646
    const v0, 0x7f040128

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 648
    const v0, 0x7f1005ed

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 649
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    const v0, 0x7f1005ee

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 652
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    const v0, 0x7f1005f0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 655
    invoke-virtual {v0, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 656
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    const v0, 0x7f1005ef

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 659
    invoke-virtual {v0, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 660
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 664
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 666
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 668
    return-object v1
.end method

.method public static b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 747
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 749
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 750
    const v0, 0x7f040279

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 751
    const v0, 0x7f100772

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 752
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 755
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 756
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 760
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 762
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 764
    return-object v1
.end method

.method private static b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 556
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 557
    const v0, 0x7f040128

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 558
    const v0, 0x7f1005ee

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 559
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    const v0, 0x7f1005f0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 562
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 563
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    const v0, 0x7f1005ef

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 566
    invoke-virtual {v0, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 567
    new-instance v2, Lmxr;

    invoke-direct {v2, v1}, Lmxr;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 576
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 578
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 580
    return-object v1
.end method

.method private static b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 587
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 588
    const v0, 0x7f040128

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 589
    const v0, 0x7f1005ee

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 590
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    const v0, 0x7f1005f0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 593
    invoke-virtual {v0, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 594
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    const v0, 0x7f1005ef

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 597
    invoke-virtual {v0, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 598
    new-instance v2, Lmxs;

    invoke-direct {v2, p2, p3, v1}, Lmxs;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 608
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 610
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 612
    return-object v1
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 768
    invoke-static {p0, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 770
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 771
    const v0, 0x7f040192

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 772
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 774
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0b021e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 776
    const v0, 0x7f1005ed

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 777
    const v1, 0x7f100772

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 779
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    const-string v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    const-string v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 783
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object p2, v0, v3

    .line 785
    :cond_0
    invoke-static {p2}, Lhav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    const v0, 0x7f1002da

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 789
    if-eqz p3, :cond_2

    .line 790
    sput-object p0, Lmxn;->b:Landroid/app/Activity;

    .line 791
    new-instance v1, Lmxt;

    invoke-direct {v1, v2}, Lmxt;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    :goto_0
    if-eqz p4, :cond_1

    .line 808
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 811
    :cond_1
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 813
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 815
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 817
    return-object v2

    .line 800
    :cond_2
    new-instance v1, Lmxu;

    invoke-direct {v1, v2}, Lmxu;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0903b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid response datahash"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception occurred evaluating xpath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    :cond_0
    const v1, 0x7f09051e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 69
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lmxn;->c:Landroid/app/Dialog;

    .line 70
    return-void
.end method

.method public static c(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 846
    invoke-static {p0, v2}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 848
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 849
    const v0, 0x7f040172

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 850
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 852
    const v0, 0x7f10072f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 853
    const-string v2, "<b>Contas de \u00e1gua, luz e telefone:</b> \u00faltimos 10 anos (apartir de 2010)"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    const v0, 0x7f100730

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 855
    const-string v2, "<b>T\u00edtulos:</b> 24 meses para t\u00edtulos Santander e 18 meses para t\u00edtulos de outros bancos"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    const v0, 0x7f100731

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 857
    const-string v2, "<b>Telefone Pr\u00e9-Pago:</b> 10 anos (a partir de 2010)"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    const v0, 0x7f100732

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 859
    const-string v2, "<b>Cart\u00e3o de Cr\u00e9dito:</b> 12 meses e para AMEX \u00faltimos 10 anos (a partir de 2010)"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    const v0, 0x7f100733

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 861
    const-string v2, "<b>Transfer\u00eancia entre Contas Santander:</b> 24 meses"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    const v0, 0x7f100734

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 863
    const-string v2, "<b>DOC:</b> 18 meses"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    const v0, 0x7f100735

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 865
    const-string v2, "<b>TED:</b> 12 meses"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    const v0, 0x7f100736

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 868
    new-instance v2, Lmxv;

    invoke-direct {v2, v1}, Lmxv;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 876
    return-object v1
.end method

.method private static c(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 619
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 620
    const v0, 0x7f040128

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 621
    const v0, 0x7f1005ee

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 622
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    const v0, 0x7f1005f0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 625
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 626
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    const v0, 0x7f1005ef

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 629
    invoke-virtual {v0, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 630
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 634
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 636
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 638
    return-object v1
.end method

.method private static c(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 673
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 675
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 676
    const v0, 0x7f040128

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 678
    const v0, 0x7f1005ed

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 679
    const-string v2, "Erro"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    const v0, 0x7f1005ee

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 682
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    const v0, 0x7f1005f0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 685
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 686
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 690
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 692
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 694
    return-object v1
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 73
    .line 74
    const-string v0, "[|]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_0

    .line 75
    const-string v0, "[|]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, v1

    .line 77
    :cond_0
    invoke-static {p0, p1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0903b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0903b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
