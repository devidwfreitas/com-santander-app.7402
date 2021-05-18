.class public Lgpu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = null

.field private static final b:Ljava/lang/String; = "Cancelar"

.field private static final c:Ljava/lang/String; = "Continuar"

.field private static d:Landroid/app/Activity;

.field private static e:Landroid/widget/ExpandableListView;

.field private static f:Ljov;

.field private static g:Ljqc;

.field private static h:Ljava/lang/Boolean;

.field private static i:Landroid/app/Dialog;

.field private static j:I

.field private static k:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private static l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljow;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljow;",
            ">;>;"
        }
    .end annotation
.end field

.field private static n:Landroid/app/Dialog;

.field private static o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const-string v0, "MenuCreator"

    sput-object v0, Lgpu;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 163
    sput-object p0, Lgpu;->i:Landroid/app/Dialog;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/high16 v2, 0x4000000

    .line 460
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 467
    :goto_0
    return-object v0

    .line 464
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 465
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lgpu;->h:Ljava/lang/Boolean;

    invoke-static {v0}, Lgpu;->a(Ljava/lang/Boolean;)V

    .line 204
    return-void
.end method

.method public static a(ILandroid/support/v7/app/ActionBar;)V
    .locals 5

    .prologue
    const v4, 0x7f0205f8

    const v2, 0x7f0e0019

    .line 407
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000c3

    .line 408
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 409
    packed-switch p0, :pswitch_data_0

    .line 442
    :pswitch_0
    sput v2, Lgpu;->k:I

    .line 443
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    sget v3, Lgpu;->k:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    const v1, 0x7f0205fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    :goto_0
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    sget v1, Lgpu;->k:I

    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/MSG;->setToolbarColor(I)V

    .line 449
    return-void

    .line 411
    :pswitch_1
    sput v2, Lgpu;->k:I

    .line 412
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    sget v3, Lgpu;->k:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 418
    :pswitch_2
    sput v2, Lgpu;->k:I

    .line 419
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    sget v3, Lgpu;->k:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    const v1, 0x7f020679

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 424
    :pswitch_3
    const v1, 0x7f0e003e

    sput v1, Lgpu;->k:I

    .line 425
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    sget v3, Lgpu;->k:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    const v1, 0x7f020602

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 430
    :pswitch_4
    const v1, 0x7f0e01b1

    sput v1, Lgpu;->k:I

    .line 431
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    sget v3, Lgpu;->k:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    const v1, 0x7f020675

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 436
    :pswitch_5
    const v1, 0x7f0e0001

    sput v1, Lgpu;->k:I

    .line 437
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    sget v3, Lgpu;->k:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 221
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .line 222
    sput-object p0, Lgpu;->d:Landroid/app/Activity;

    .line 223
    new-instance v0, Ljqc;

    invoke-direct {v0}, Ljqc;-><init>()V

    sput-object v0, Lgpu;->g:Ljqc;

    .line 224
    sget-object v0, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 225
    sget-object v0, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 226
    sget-object v0, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0a0112

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    .line 227
    sget-object v0, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f020607

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 228
    sget-object v0, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0a011b

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffsetRes(I)V

    .line 229
    sget-object v0, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 230
    sget-object v0, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    .line 231
    sget-object v0, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0401b0

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 232
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v1, 0x7f10084c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lgpv;

    invoke-direct {v1}, Lgpv;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v1, 0x7f100845

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lgql;

    invoke-direct {v1}, Lgql;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-static {}, Lgpu;->q()V

    .line 245
    new-instance v0, Ljov;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    sget-object v2, Lgpu;->l:Ljava/util/List;

    sget-object v3, Lgpu;->m:Ljava/util/HashMap;

    sget-object v4, Lgpu;->h:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3, v4}, Ljov;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Ljava/lang/Boolean;)V

    sput-object v0, Lgpu;->f:Ljov;

    .line 246
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v1, 0x7f10084d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    sput-object v0, Lgpu;->e:Landroid/widget/ExpandableListView;

    .line 247
    sget-object v0, Lgpu;->e:Landroid/widget/ExpandableListView;

    sget-object v1, Lgpu;->f:Ljov;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 248
    sget-object v0, Lgpu;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lgqw;

    invoke-direct {v1}, Lgqw;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 266
    sget-object v0, Lgpu;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lgre;

    invoke-direct {v1}, Lgre;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 283
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const-string v1, "homeLogadaWidget"

    invoke-virtual {v0, v1, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 285
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v2, 0x7f100846

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ol\u00e1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v2, 0x7f100847

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    .line 289
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v4

    invoke-virtual {v4}, Lmiq;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->k()Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {v4}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    const/16 v4, 0xb

    const-string v5, "***.***"

    .line 289
    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v2, 0x7f10084b

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u00daltima conex\u00e3o: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lastConecctionDate"

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd/MM/yyyy, HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmym;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lgpu;->a(Landroid/graphics/Bitmap;)V

    .line 294
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 295
    invoke-static {}, Lmzr;->d()I

    move-result v1

    .line 296
    const v0, 0x7f04001b

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 297
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1000c2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 298
    new-instance v2, Lgrf;

    invoke-direct {v2}, Lgrf;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    invoke-static {v1, p1}, Lgpu;->a(ILandroid/support/v7/app/ActionBar;)V

    .line 314
    invoke-static {p1}, Lgpu;->b(Landroid/support/v7/app/ActionBar;)V

    .line 315
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Landroid/view/View;III)V
    .locals 4

    .prologue
    .line 1673
    sput-object p0, Lgpu;->d:Landroid/app/Activity;

    .line 1674
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1675
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 1676
    if-nez p2, :cond_1

    .line 1677
    packed-switch v0, :pswitch_data_0

    .line 1700
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    .line 1701
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1700
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1713
    :cond_0
    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1714
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1715
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020304

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1716
    if-nez p2, :cond_3

    .line 1717
    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1723
    :goto_1
    return-void

    .line 1679
    :pswitch_0
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    .line 1680
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1679
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1685
    :pswitch_1
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    .line 1686
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1685
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1690
    :pswitch_2
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    .line 1691
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1690
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1695
    :pswitch_3
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    .line 1696
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1695
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1706
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1707
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1708
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1709
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    .line 1710
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1709
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1719
    :cond_3
    const v0, 0x7f100065

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1720
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1721
    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_1

    .line 1677
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 319
    invoke-static {p0, p1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;)V

    .line 320
    if-eqz p2, :cond_0

    .line 321
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    invoke-static {p1, p2}, Lgpu;->b(Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    sget-object v0, Lgpu;->a:Ljava/lang/String;

    const-string v1, "Avoid creating menu after crash"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 452
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v1, 0x7f100845

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 453
    if-eqz p0, :cond_0

    .line 454
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 455
    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 456
    return-void
.end method

.method public static a(Landroid/support/v7/app/ActionBar;)V
    .locals 5

    .prologue
    .line 214
    invoke-static {}, Lgpu;->q()V

    .line 215
    new-instance v0, Ljov;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    sget-object v2, Lgpu;->l:Ljava/util/List;

    sget-object v3, Lgpu;->m:Ljava/util/HashMap;

    sget-object v4, Lgpu;->h:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3, v4}, Ljov;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Ljava/lang/Boolean;)V

    sput-object v0, Lgpu;->f:Ljov;

    .line 216
    sget-object v0, Lgpu;->e:Landroid/widget/ExpandableListView;

    sget-object v1, Lgpu;->f:Ljov;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 217
    invoke-static {p0}, Lgpu;->b(Landroid/support/v7/app/ActionBar;)V

    .line 218
    return-void
.end method

.method public static a(Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 331
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 333
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 334
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 335
    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1000c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 337
    invoke-static {p0, p1}, Lgpu;->b(Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 339
    :cond_0
    invoke-static {v0, p0}, Lgpu;->a(ILandroid/support/v7/app/ActionBar;)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_1
    sget-object v0, Lgpu;->a:Ljava/lang/String;

    const-string v1, "Avoid creating menu after crash"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/support/v7/app/AppCompatActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 346
    new-instance v0, Lgrg;

    invoke-direct {v0, p0}, Lgrg;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    invoke-static {p0, p1, v0}, Lgpu;->a(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;Lgrk;)V

    .line 356
    return-void
.end method

.method public static a(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;Lgrk;)V
    .locals 2
    .param p0    # Landroid/support/v7/app/AppCompatActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 360
    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-static {v0, p1}, Lgpu;->a(Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 364
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 365
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 366
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 367
    const v1, 0x7f0203f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    new-instance v1, Lgrh;

    invoke-direct {v1, p2}, Lgrh;-><init>(Lgrk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private static a(Lipp;Lfoh;)V
    .locals 3

    .prologue
    .line 1784
    sget-object v0, Lgpu;->n:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lgpu;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1785
    sget-object v0, Lgpu;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1787
    :cond_0
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lgpu;->n:Landroid/app/Dialog;

    .line 1788
    new-instance v0, Lmzn;

    invoke-direct {v0}, Lmzn;-><init>()V

    .line 1789
    invoke-static {p0}, Lgpu;->a(Lipp;)[Lmzp;

    move-result-object v1

    new-instance v2, Lgqz;

    invoke-direct {v2, p1}, Lgqz;-><init>(Lfoh;)V

    invoke-virtual {v0, v1, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 1799
    return-void
.end method

.method public static a(Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 207
    sput-object p0, Lgpu;->h:Ljava/lang/Boolean;

    .line 208
    invoke-static {}, Lgpu;->q()V

    .line 209
    new-instance v0, Ljov;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    sget-object v2, Lgpu;->l:Ljava/util/List;

    sget-object v3, Lgpu;->m:Ljava/util/HashMap;

    sget-object v4, Lgpu;->h:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3, v4}, Ljov;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Ljava/lang/Boolean;)V

    sput-object v0, Lgpu;->f:Ljov;

    .line 210
    sget-object v0, Lgpu;->e:Landroid/widget/ExpandableListView;

    sget-object v1, Lgpu;->f:Ljov;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 211
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1645
    new-instance v1, Landroid/app/Dialog;

    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1646
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1647
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1648
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1649
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1650
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1653
    sget-object v3, Lgpu;->d:Landroid/app/Activity;

    const v4, 0x7f09016b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    new-instance v4, Lgqx;

    invoke-direct {v4, v1, p0}, Lgqx;-><init>(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 1661
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v3, 0x7f09016a

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1662
    new-instance v5, Lgqy;

    invoke-direct {v5, v1}, Lgqy;-><init>(Landroid/app/Dialog;)V

    .line 1668
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    const v3, 0x7f090aac

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lgpu;->d:Landroid/app/Activity;

    const v6, 0x7f090133

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 1670
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V
    .locals 6

    .prologue
    .line 1489
    new-instance v1, Landroid/app/Dialog;

    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1490
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1491
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1492
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1493
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1494
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1497
    const-string v3, "Confirmar"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1498
    new-instance v4, Lgqq;

    invoke-direct {v4, v1}, Lgqq;-><init>(Landroid/app/Dialog;)V

    .line 1506
    const-string v0, "Cancelar"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1507
    new-instance v5, Lgqr;

    invoke-direct {v5, p1, v1}, Lgqr;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;Landroid/app/Dialog;)V

    .line 1514
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const-string v2, "Aten\u00e7\u00e3o"

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 1515
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1307
    const v0, 0x7f090540

    invoke-static {v0}, Lmyo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    invoke-static {p0, p1, p2, p3, p3}, Lgpu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :goto_0
    return-void

    .line 1310
    :cond_0
    invoke-static {}, Lgpu;->r()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1382
    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1384
    const/4 v0, 0x0

    sput-object v0, Lgpu;->i:Landroid/app/Dialog;

    .line 1386
    :cond_0
    new-instance v1, Lgqk;

    invoke-direct {v1, p4}, Lgqk;-><init>(Ljava/lang/String;)V

    .line 1394
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    .line 1398
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v2

    invoke-virtual {v2}, Lmiq;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    const v3, 0x7f09013b

    .line 1399
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1400
    :goto_0
    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    const v4, 0x7f090191

    .line 1401
    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    const v5, 0x7f09018e

    .line 1402
    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p3

    .line 1394
    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lgpu;->i:Landroid/app/Dialog;

    .line 1404
    return-void

    .line 1399
    :cond_1
    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    const v3, 0x7f09013a

    .line 1400
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljox;)V
    .locals 7

    .prologue
    .line 1407
    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1409
    const/4 v0, 0x0

    sput-object v0, Lgpu;->i:Landroid/app/Dialog;

    .line 1411
    :cond_0
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    new-instance v1, Lgqm;

    invoke-direct {v1, p4, p3}, Lgqm;-><init>(Ljox;Ljava/lang/String;)V

    new-instance v2, Lgqn;

    invoke-direct {v2, p4}, Lgqn;-><init>(Ljox;)V

    .line 1428
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lgpu;->d:Landroid/app/Activity;

    const v4, 0x7f090134

    .line 1429
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1430
    :goto_0
    sget-object v4, Lgpu;->d:Landroid/app/Activity;

    const v5, 0x7f090191

    .line 1431
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lgpu;->d:Landroid/app/Activity;

    const v6, 0x7f09018e

    .line 1432
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1411
    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lgpu;->i:Landroid/app/Dialog;

    .line 1434
    return-void

    .line 1429
    :cond_1
    sget-object v3, Lgpu;->d:Landroid/app/Activity;

    const v4, 0x7f090133

    .line 1430
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lzx;)V
    .locals 3

    .prologue
    const v2, 0x7f090b89

    .line 1315
    invoke-static {v2}, Lmyo;->a(I)Z

    move-result v0

    .line 1316
    if-eqz v0, :cond_0

    .line 1317
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lmyo;->a(Landroid/app/Activity;Ljava/lang/String;Lzx;)V

    .line 1321
    :goto_0
    return-void

    .line 1319
    :cond_0
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmyo;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljow;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1865
    .line 1866
    invoke-virtual {p0}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    .line 1867
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    .line 1868
    sget-object v5, Lgrd;->a:[I

    invoke-virtual {v0}, Ljow;->g()Ljox;

    move-result-object v6

    invoke-virtual {v6}, Ljox;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_1
    move v1, v0

    .line 1892
    goto :goto_0

    .line 1870
    :sswitch_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v5

    invoke-virtual {v5}, Lmiq;->f()Lmir;

    move-result-object v5

    invoke-virtual {v5}, Lmir;->s()Lght;

    move-result-object v5

    invoke-interface {v5}, Lght;->h()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1871
    invoke-virtual {v0, v2}, Ljow;->b(I)V

    move v0, v3

    .line 1872
    goto :goto_1

    .line 1880
    :sswitch_1
    invoke-static {}, Lmzr;->a()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v5

    invoke-virtual {v5}, Lmiq;->f()Lmir;

    move-result-object v5

    invoke-virtual {v5}, Lmir;->s()Lght;

    move-result-object v5

    invoke-interface {v5}, Lght;->h()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1881
    :cond_1
    invoke-virtual {v0, v2}, Ljow;->b(I)V

    move v0, v3

    .line 1882
    goto :goto_1

    .line 1886
    :sswitch_2
    invoke-static {}, Lmzr;->a()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v5

    invoke-virtual {v5}, Lmiq;->f()Lmir;

    move-result-object v5

    invoke-virtual {v5}, Lmir;->s()Lght;

    move-result-object v5

    invoke-interface {v5}, Lght;->g()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1887
    :cond_2
    invoke-virtual {v0, v2}, Ljow;->b(I)V

    move v0, v3

    .line 1888
    goto :goto_1

    .line 1893
    :cond_3
    if-eqz v1, :cond_4

    .line 1894
    sget-object v0, Lgpu;->f:Ljov;

    invoke-virtual {v0}, Ljov;->notifyDataSetChanged()V

    .line 1895
    :cond_4
    return-void

    .line 1868
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0x2c -> :sswitch_1
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Ljox;)V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/high16 v6, 0x4000000

    .line 476
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v1

    .line 477
    sget-object v4, Lgrd;->a:[I

    invoke-virtual {p0}, Ljox;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1304
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 479
    :pswitch_1
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lgpu;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 480
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 484
    :pswitch_2
    invoke-static {}, Ljor;->a()V

    .line 485
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 486
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 487
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 491
    :pswitch_3
    sput v3, Lgpu;->j:I

    .line 492
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_Acao"

    const-string v1, "ConhecaAppWay"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v0, "cart-way-ml-start"

    const-string v1, "cart-way-ml-cont"

    const-string v2, "cart-way-ml-canc"

    const-string v3, "HOME"

    invoke-static {v0, v1, v2, v3}, Lgpu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :pswitch_4
    sput v2, Lgpu;->j:I

    .line 498
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_Acao"

    const-string v1, "UltimasCompras"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v0, "cart-way-ml-ultComp-start"

    const-string v1, "cart-way-ml-ultComp-cont"

    const-string v2, "cart-way-ml-ultComp-canc"

    const-string v3, "TIMELINE"

    invoke-static {v0, v1, v2, v3}, Lgpu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :pswitch_5
    const/4 v0, 0x3

    sput v0, Lgpu;->j:I

    .line 504
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_Acao"

    const-string v1, "GerarCartaoVirtual"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v0, "cart-way-ml-crtVirt-start"

    const-string v1, "cart-way-ml-crtVirt-cont"

    const-string v2, "cart-way-ml-crtVirt-canc"

    const-string v3, "VIRTUAL_CARD"

    invoke-static {v0, v1, v2, v3}, Lgpu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :pswitch_6
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_Acao"

    const-string v1, "PontosEsfera"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, "cart-way-ml-ponEsf-start"

    const-string v1, "cart-way-ml-ponEsf-cont"

    const-string v2, "cart-way-ml-ponEsf-canc"

    const-string v3, "ESFERA_POINTS"

    invoke-static {v0, v1, v2, v3}, Lgpu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :pswitch_7
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_Acao"

    const-string v1, "Fatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 518
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 522
    :pswitch_8
    const-string v0, "Cartoes_PagamentoDeFatura"

    const-string v1, "Cartoes"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_Acao"

    const-string v1, "PagamentoDeFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 525
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 526
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 530
    :pswitch_9
    const-string v0, "Cartoes_ParcelamentoDeFatura"

    const-string v1, "Cartoes"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_Acao"

    const-string v1, "ParcelamentoDeFatura"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 533
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 534
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 538
    :pswitch_a
    const-string v0, "Fatura"

    const-string v1, "Cartoes"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_Acao"

    const-string v1, "CadastrarFaturaPorEmail"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 542
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 546
    :pswitch_b
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    const-string v0, "Cartoes_DesbloqueioDeCartao"

    const-string v1, "Cartoes"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_Acao"

    const-string v1, "Desbloqueio"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartoesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 551
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 553
    :cond_1
    sget-object v0, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d(Z)V

    .line 554
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const-string v1, "Voc\u00ea n\u00e3o possui cart\u00e3o"

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 559
    :pswitch_c
    const-string v1, "Pagamento"

    const-string v2, "Pagamentos"

    invoke-static {v1, v2}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v1, "Pagamentos_Pagamento_MenuLateral_Pagamentos_Submenu_Acao"

    const-string v2, "CodigoDeBarras"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sput-boolean v0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->b:Z

    .line 562
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 563
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 564
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 568
    :pswitch_d
    const-string v0, "Pagamento"

    const-string v1, "Pagamentos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v0, "Pagamentos_Pagamento_MenuLateral_Pagamentos_Submenu_Acao"

    const-string v1, "TitulosEmCartorio"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/FazerPagamentoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 572
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 576
    :pswitch_e
    const-string v0, "Pagamento"

    const-string v1, "Pagamentos"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v0, "Pagamentos_Pagamento_MenuLateral_Pagamentos_Submenu_Acao"

    const-string v1, "CadastroEmDebitoAutomatico"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 580
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 584
    :pswitch_f
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/FazerPagamentoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 586
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 590
    :pswitch_10
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 591
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 592
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 593
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    .line 594
    invoke-static {}, Lmzr;->a()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-instance v6, Lgri;

    invoke-direct {v6}, Lgri;-><init>()V

    .line 590
    invoke-virtual/range {v0 .. v6}, Ladh;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Ljava/lang/Boolean;Ladi;)V

    .line 611
    const-string v0, "Pagamentos_Pagamento_MenuLateral_Pagamentos_Submenu_Acao"

    const-string v1, "DDA"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    :pswitch_11
    const-string v0, "Transferencia"

    const-string v1, "Transferencias"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v0, "Transferencia_Acao"

    const-string v1, "Menu"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 623
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 627
    :pswitch_12
    const-string v0, "RecargaDeTelefone"

    const-string v1, "Outros"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v0, "Outros_MenuLateral_Acao"

    const-string v1, "RecargaDeTelefone"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/recargatelefone/presentation/RecargaTelefoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 630
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 631
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 635
    :pswitch_13
    const-string v0, "Outros_MenuLateral_Acao"

    const-string v1, "Agendamentos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 637
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 638
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 645
    :pswitch_14
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Ljcw;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 649
    :pswitch_15
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Ljcw;->c(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 656
    :pswitch_16
    const-string v0, "Outros_MenuLateral_Acao"

    const-string v1, "Agencias"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lgpu;->t()V

    goto/16 :goto_0

    .line 661
    :pswitch_17
    const-string v0, "Outros_MenuLateral_Acao"

    const-string v1, "Ajuda"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/faq/presentation/FaqActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 664
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 669
    :pswitch_18
    new-instance v0, Lieu;

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lieu;-><init>(Landroid/content/Context;)V

    .line 670
    const-string v1, ""

    invoke-virtual {v0, v1}, Lieu;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    const-string v0, "Biometria_Desabilitar"

    const-string v1, "Outros"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :goto_1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 676
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 677
    const-string v1, "action"

    sget-object v2, Liev;->MENU:Liev;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 678
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 673
    :cond_2
    const-string v0, "Biometria_Habilitar"

    const-string v1, "Outros"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 682
    :pswitch_19
    const-string v0, "TrocarSenha"

    const-string v1, "Outros"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v0, "Outros_MenuLateral_MeuPerfil_Submenu_Acao"

    const-string v1, "TrocarSenha"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 685
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 686
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 690
    :pswitch_1a
    new-instance v1, Ljrm;

    new-instance v2, Lgrj;

    invoke-direct {v2}, Lgrj;-><init>()V

    sget-object v3, Lgpu;->d:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Ljrm;-><init>(Ljrn;Landroid/app/Activity;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 696
    invoke-virtual {v1, v0}, Ljrm;->c([Ljava/lang/Object;)Lgne;

    goto/16 :goto_0

    .line 700
    :pswitch_1b
    new-instance v1, Ljrm;

    new-instance v2, Lgpw;

    invoke-direct {v2}, Lgpw;-><init>()V

    sget-object v3, Lgpu;->d:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Ljrm;-><init>(Ljrn;Landroid/app/Activity;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 706
    invoke-virtual {v1, v0}, Ljrm;->c([Ljava/lang/Object;)Lgne;

    goto/16 :goto_0

    .line 710
    :pswitch_1c
    const-string v0, "InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa"

    const-string v1, "Outros"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v0, "Outros_MenuLateral_Acao"

    const-string v1, "InvestimentosNoATM"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/perfil/activity/InvestimentosNoAtmActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 713
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 714
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 718
    :pswitch_1d
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmyl;->c(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 722
    :pswitch_1e
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmyl;->b(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 726
    :pswitch_1f
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmyl;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 730
    :pswitch_20
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    const-class v3, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 734
    :pswitch_21
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    const-class v3, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 738
    :pswitch_22
    const-string v0, "Outros_MenuLateral_Acao"

    const-string v1, "Comprovantes"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 740
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 741
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 745
    :pswitch_23
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 747
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 751
    :pswitch_24
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->a(Landroid/app/Activity;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 755
    :pswitch_25
    invoke-static {}, Lgpu;->d()V

    goto/16 :goto_0

    .line 759
    :pswitch_26
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v1, 0x7f090133

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 760
    sget-object v1, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0, v1}, Lgpu;->a(Ljava/lang/String;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    goto/16 :goto_0

    .line 764
    :pswitch_27
    const-string v0, "Investimentos_MenuLateral_Acao"

    const-string v1, "Poupanca"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0, v2}, Ljcw;->a(Landroid/app/Activity;Z)V

    goto/16 :goto_0

    .line 772
    :pswitch_28
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_Acao"

    const-string v1, "HabilitarParaUsoNoExterior"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v0, "ENABLE_ABROAD"

    invoke-static {v7, v7, v7, v0}, Lgpu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 782
    :pswitch_29
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 783
    invoke-static {}, Lgpu;->k()V

    goto/16 :goto_0

    .line 786
    :cond_3
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 788
    const/4 v2, 0x3

    new-instance v3, Lgpx;

    invoke-direct {v3, v0, v1}, Lgpx;-><init>(Landroid/app/Dialog;Lhya;)V

    invoke-interface {v1, v2, v3}, Lhya;->a(ILhxy;)V

    goto/16 :goto_0

    .line 826
    :pswitch_2a
    const-string v0, "CreditoFinanciamento_MenuLateral_Submenu_Acao"

    const-string v2, "Antecipar13o"

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 828
    invoke-static {}, Lgpu;->k()V

    goto/16 :goto_0

    .line 831
    :cond_4
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 833
    const/4 v2, 0x7

    new-instance v3, Lgpy;

    invoke-direct {v3, v0, v1}, Lgpy;-><init>(Landroid/app/Dialog;Lhya;)V

    invoke-interface {v1, v2, v3}, Lhya;->a(ILhxy;)V

    goto/16 :goto_0

    .line 865
    :pswitch_2b
    const-string v0, "CreditoFinanciamento_MenuLateral_Submenu_Acao"

    const-string v2, "AnteciparIR"

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 867
    invoke-static {}, Lgpu;->k()V

    goto/16 :goto_0

    .line 870
    :cond_5
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 872
    const/16 v2, 0x8

    new-instance v3, Lgpz;

    invoke-direct {v3, v0, v1}, Lgpz;-><init>(Landroid/app/Dialog;Lhya;)V

    invoke-interface {v1, v2, v3}, Lhya;->a(ILhxy;)V

    goto/16 :goto_0

    .line 904
    :pswitch_2c
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_Acao"

    const-string v1, "SoliciteSeuCartao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-static {}, Lgpu;->s()V

    goto/16 :goto_0

    .line 909
    :pswitch_2d
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 910
    invoke-static {}, Lgpu;->k()V

    goto/16 :goto_0

    .line 913
    :cond_6
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 915
    const/16 v2, 0x9

    new-instance v3, Lgqa;

    invoke-direct {v3, v0, v1}, Lgqa;-><init>(Landroid/app/Dialog;Lhya;)V

    invoke-interface {v1, v2, v3}, Lhya;->a(ILhxy;)V

    .line 934
    invoke-static {}, Lhxi;->d()V

    goto/16 :goto_0

    .line 938
    :pswitch_2e
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lhvr;->a(Landroid/content/Context;)V

    .line 939
    invoke-static {}, Lhxi;->e()V

    goto/16 :goto_0

    .line 943
    :pswitch_2f
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 944
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 945
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 946
    invoke-static {}, Lhnj;->c()V

    goto/16 :goto_0

    .line 950
    :pswitch_30
    const-string v0, "Cartoes_BloqueioDeCartao"

    const-string v1, "Cartoes"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_Acao"

    const-string v1, "Bloqueio"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 953
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 954
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 958
    :pswitch_31
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 959
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 960
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 964
    :pswitch_32
    const-string v0, "Cambio_TransferenciaParaOExterior"

    const-string v1, "ServicosInternacionais_Cambio_MenuLateral_Cambio_Submenu_Acao"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v0, "ServicosInternacionais_Cambio_MenuLateral_Cambio_Submenu_Acao"

    const-string v1, "TransferenciaParaOExterior"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/cambio/transferenciaexterior/presentation/DadosOperacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 967
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 968
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 972
    :pswitch_33
    const-string v0, "Outros_MenuLateral_Acao"

    const-string v1, "PoliticaDePrivacidadeGoogle"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/meuperfil/activity/PoliticaPrivacidadeGoogleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 974
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 975
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 979
    :pswitch_34
    const-string v0, "Outros_MenuLateral_MeuPerfil_Acao"

    const-string v1, "ConfiguracoesNotificacoes"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/MSG;->initConfigPanel(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 987
    :pswitch_35
    const-string v0, "Seguros_MenuLateral_SubMenu_Acao"

    const-string v1, "BtoMeusSeguros"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 989
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 990
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 995
    :pswitch_36
    const-string v0, "Seguros_MenuLateral_SubMenu_Acao"

    const-string v1, "BtoMeusSinistros"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 997
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 998
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1004
    :pswitch_37
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1005
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1006
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1011
    :pswitch_38
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1012
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1013
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1023
    :pswitch_39
    const-string v0, "CreditoFinanciamento_MenuLateral_Acao"

    const-string v1, "CreditoImobiliario"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v0, "clkImob.ML"

    const-string v1, "clkImob.ML.Con"

    const-string v2, "clkImob.ML.Can"

    sget-object v3, Lgpu;->d:Landroid/app/Activity;

    const v4, 0x7f090753

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljox;->MENU_ITEM_CREDITO_IMOBILIARIO:Ljox;

    invoke-static {v0, v1, v2, v3, v4}, Lgpu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljox;)V

    goto/16 :goto_0

    .line 1030
    :pswitch_3a
    const-string v0, "CreditoFinanciamento_MenuLateral_Acao"

    const-string v1, "Vermelhinha"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    sget-object v3, Lgpu;->d:Landroid/app/Activity;

    const v4, 0x7f090754

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljox;->MENU_ITEM_VERMELHINHA:Ljox;

    invoke-static {v0, v1, v2, v3, v4}, Lgpu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljox;)V

    goto/16 :goto_0

    .line 1037
    :pswitch_3b
    const-string v4, "clkCapi.ML."

    const-string v5, "clkCapi.ML."

    const-string v6, "clkCapi.ML."

    .line 1038
    invoke-static {}, Lmzr;->c()Ljava/lang/String;

    move-result-object v7

    .line 1039
    const/4 v1, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_7
    move v0, v1

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 1056
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v1, 0x7f090750

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1057
    const-string v0, "PF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1058
    const-string v0, "PF.Con"

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1059
    const-string v0, "PF.Can"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    :goto_3
    const-string v4, "Investimentos_Capitalizacao_MenuLateral_Acao"

    const-string v5, "Capitalizacao"

    invoke-static {v4, v5}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    sget-object v4, Ljox;->MENU_ITEM_CAPITALIZACAO:Ljox;

    invoke-static {v2, v1, v0, v3, v4}, Lgpu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljox;)V

    goto/16 :goto_0

    .line 1039
    :sswitch_0
    const-string v2, "VG"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :sswitch_1
    const-string v0, "VGUN"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_2

    :sswitch_2
    const-string v0, "SE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_2

    .line 1042
    :pswitch_3c
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v1, 0x7f090752

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1043
    const-string v0, "VG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1044
    const-string v0, "VG.Con"

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1045
    const-string v0, "VG.Can"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1049
    :pswitch_3d
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v1, 0x7f090751

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1050
    const-string v0, "SL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1051
    const-string v0, "SL.Con"

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1052
    const-string v0, "SL.Can"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1070
    :pswitch_3e
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v1, 0x7f090b8a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/santander/app/webview/presentation/WebViewActivity;->b:Ljava/lang/String;

    .line 1071
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lgpu;->d:Landroid/app/Activity;

    const-class v4, Lcom/santander/app/webview/presentation/WebViewActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1076
    :pswitch_3f
    const-string v0, "ContaCorrente_Acao"

    const-string v1, "MenuSaldo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/SaldoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1078
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1079
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1083
    :pswitch_40
    const-string v0, "ContaCorrente_Acao"

    const-string v1, "MenuExtrato"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/ContaMovementActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1085
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1086
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1090
    :pswitch_41
    const-string v0, "ContaCorrente_Acao"

    const-string v1, "MenuLancFuturos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/FuturosActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1092
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1093
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1097
    :pswitch_42
    const-string v0, "Outros_MenuLateral_Acao"

    const-string v1, "PropostasEmAberto"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1099
    invoke-static {}, Lgpu;->k()V

    goto/16 :goto_0

    .line 1102
    :cond_8
    const-string v0, "Formalizacao"

    const-string v1, "Outros"

    invoke-static {v0, v1}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1104
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1105
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1110
    :pswitch_43
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/MSG;->initNotifications(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1114
    :pswitch_44
    const-string v0, "Transferencia_MiniApp_MenuLateral_MeuPerfil_Submenu"

    const-string v1, "HabilitarTransferenciaPorMensagem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-static {}, Lmwe;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1116
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmwe;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1118
    :cond_9
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmwe;->c(Landroid/content/Context;)V

    .line 1119
    invoke-static {}, Lgpu;->a()V

    goto/16 :goto_0

    .line 1124
    :pswitch_45
    const-string v0, "Transferencia_MiniApp_MenuLateral_MeuPerfil_Submenu"

    const-string v1, "DesabilitarTransferenciaPorMensagem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-static {}, Lmwe;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1126
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmwe;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1128
    :cond_a
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0}, Lmwe;->d(Landroid/content/Context;)V

    .line 1129
    invoke-static {}, Lgpu;->a()V

    goto/16 :goto_0

    .line 1134
    :pswitch_46
    const-string v0, "Investimentos_MenuLateral_Acao"

    const-string v1, "CarteiraDiaria"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1136
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1140
    :pswitch_47
    new-instance v4, Lgqb;

    invoke-direct {v4}, Lgqb;-><init>()V

    .line 1224
    const-string v0, "CreditoFinanciamento_MenuLateral_Submenu_Acao"

    const-string v1, "GestaoDeCredito"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    invoke-virtual {v0}, Lgnp;->b()Lie;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    invoke-virtual {v0}, Lnab;->f()Lji;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1228
    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v0

    invoke-virtual {v0}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1229
    invoke-static {}, Lmzr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1230
    invoke-static {}, Lafw;->a()Lafw;

    move-result-object v0

    .line 1231
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v1

    invoke-virtual {v1}, Lgnp;->b()Lie;

    move-result-object v1

    .line 1232
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-virtual {v2}, Lnab;->f()Lji;

    move-result-object v2

    .line 1233
    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v3

    invoke-virtual {v3}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v3

    .line 1235
    invoke-static {}, Lmzr;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1236
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    .line 1230
    invoke-virtual/range {v0 .. v6}, Lafw;->a(Lie;Lji;Ljava/util/Properties;Lafx;Ljava/lang/String;Z)Z

    .line 1237
    invoke-static {}, Lafw;->a()Lafw;

    move-result-object v0

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lafw;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1242
    :pswitch_48
    new-instance v4, Lgqh;

    invoke-direct {v4}, Lgqh;-><init>()V

    .line 1273
    const-string v0, "CreditoFinanciamento_MenuLateral_Submenu_Acao"

    const-string v1, "GestaoDeCredito"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    invoke-virtual {v0}, Lgnp;->b()Lie;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1275
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    invoke-virtual {v0}, Lnab;->f()Lji;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1276
    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v0

    invoke-virtual {v0}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1277
    invoke-static {}, Lmzr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1279
    invoke-static {}, Lafw;->a()Lafw;

    move-result-object v0

    .line 1280
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v1

    invoke-virtual {v1}, Lgnp;->b()Lie;

    move-result-object v1

    .line 1281
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-virtual {v2}, Lnab;->f()Lji;

    move-result-object v2

    .line 1282
    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v3

    invoke-virtual {v3}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v3

    .line 1284
    invoke-static {}, Lmzr;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1285
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    .line 1279
    invoke-virtual/range {v0 .. v6}, Lafw;->a(Lie;Lji;Ljava/util/Properties;Lafx;Ljava/lang/String;Z)Z

    .line 1286
    invoke-static {}, Lafw;->a()Lafw;

    move-result-object v0

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lafw;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_0
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_48
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1039
    :sswitch_data_0
    .sparse-switch
        0xa52 -> :sswitch_2
        0xab1 -> :sswitch_0
        0x282d0a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3c
        :pswitch_3d
    .end packed-switch
.end method

.method public static a(Ljox;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V
    .locals 0

    .prologue
    .line 471
    invoke-virtual {p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->i()V

    .line 472
    invoke-static {p0}, Lgpu;->a(Ljox;)V

    .line 473
    return-void
.end method

.method static synthetic a(Ljqj;)V
    .locals 0

    .prologue
    .line 163
    invoke-static {p0}, Lgpu;->c(Ljqj;)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    .prologue
    .line 163
    invoke-static {p0}, Lgpu;->b(Z)V

    return-void
.end method

.method private static a(Lipp;)[Lmzp;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1802
    const/4 v0, 0x0

    .line 1803
    sget-object v1, Lgrd;->b:[I

    invoke-virtual {p0}, Lipp;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1813
    :goto_0
    return-object v0

    .line 1805
    :pswitch_0
    new-array v0, v4, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_POUPANCA:Lmzp;

    aput-object v1, v0, v3

    goto :goto_0

    .line 1808
    :pswitch_1
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v1, v0, v3

    sget-object v1, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    aput-object v1, v0, v4

    goto :goto_0

    .line 1803
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 163
    sput-object p0, Lgpu;->n:Landroid/app/Dialog;

    return-object p0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1726
    sput-object p0, Lgpu;->d:Landroid/app/Activity;

    .line 1727
    return-void
.end method

.method public static b(Landroid/support/v7/app/ActionBar;)V
    .locals 3

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    return-void
.end method

.method public static b(Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    .line 379
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 380
    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 385
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 387
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method static synthetic b(Ljow;)V
    .locals 0

    .prologue
    .line 163
    invoke-static {p0}, Lgpu;->d(Ljow;)V

    return-void
.end method

.method static synthetic b(Ljox;)V
    .locals 0

    .prologue
    .line 163
    invoke-static {p0}, Lgpu;->d(Ljox;)V

    return-void
.end method

.method static synthetic b(Ljqj;)V
    .locals 0

    .prologue
    .line 163
    invoke-static {p0}, Lgpu;->d(Ljqj;)V

    return-void
.end method

.method private static b(Z)V
    .locals 2

    .prologue
    .line 1358
    const-string v0, ""

    .line 1359
    const-string v1, ""

    .line 1360
    sget v1, Lgpu;->j:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    .line 1372
    :goto_0
    if-eqz p0, :cond_0

    .line 1373
    const-string v0, "Continuar"

    .line 1377
    :goto_1
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    return-void

    .line 1362
    :pswitch_0
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_ConhecaAppWay_PopUp_Acao"

    move-object v1, v0

    .line 1363
    goto :goto_0

    :pswitch_1
    move-object v1, v0

    .line 1365
    goto :goto_0

    .line 1367
    :pswitch_2
    const-string v0, "Cartoes_MenuLateral_Cartoes_Submenu_UltimasCompras_PopUp_Acao"

    move-object v1, v0

    .line 1368
    goto :goto_0

    .line 1375
    :cond_0
    const-string v0, "Cancelar"

    goto :goto_1

    .line 1360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->z()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 403
    sget v0, Lgpu;->k:I

    return v0
.end method

.method static synthetic c(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .prologue
    .line 163
    sput-object p0, Lgpu;->d:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Ljow;)V
    .locals 0

    .prologue
    .line 163
    invoke-static {p0}, Lgpu;->e(Ljow;)V

    return-void
.end method

.method static synthetic c(Ljox;)V
    .locals 0

    .prologue
    .line 163
    invoke-static {p0}, Lgpu;->e(Ljox;)V

    return-void
.end method

.method private static c(Ljqj;)V
    .locals 3

    .prologue
    .line 1563
    const/4 v0, 0x0

    .line 1564
    sget-object v1, Lgpu;->g:Ljqc;

    invoke-virtual {v1, p0}, Ljqc;->a(Ljqj;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1565
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoNovamenteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1573
    :goto_0
    if-eqz v0, :cond_0

    .line 1574
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1576
    :cond_0
    return-void

    .line 1567
    :cond_1
    sget-object v1, Lgpu;->g:Ljqc;

    invoke-virtual {v1, p0}, Ljqc;->e(Ljqj;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lgpu;->g:Ljqc;

    invoke-virtual {v1, p0}, Ljqc;->f(Ljqj;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lgpu;->g:Ljqc;

    invoke-virtual {v1, p0}, Ljqc;->g(Ljqj;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1568
    :cond_2
    invoke-static {}, Lgpu;->f()V

    goto :goto_0

    .line 1570
    :cond_3
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1519
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1520
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1521
    :cond_0
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    invoke-static {v0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1528
    :goto_0
    return-void

    .line 1523
    :cond_1
    invoke-static {}, Lgpu;->e()V

    goto :goto_0

    .line 1526
    :cond_2
    invoke-static {}, Lgpu;->e()V

    goto :goto_0
.end method

.method private static d(Ljow;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1817
    sget-object v0, Lgrd;->a:[I

    invoke-virtual {p0}, Ljow;->g()Ljox;

    move-result-object v1

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 1861
    :cond_0
    :goto_0
    return-void

    .line 1819
    :sswitch_0
    invoke-virtual {p0}, Ljow;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1820
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1821
    sget-object v0, Lipp;->CARTAO_MENU_ITEM:Lipp;

    new-instance v1, Lgra;

    invoke-direct {v1, p0}, Lgra;-><init>(Ljow;)V

    invoke-static {v0, v1}, Lgpu;->a(Lipp;Lfoh;)V

    goto :goto_0

    .line 1828
    :cond_1
    invoke-static {p0}, Lgpu;->a(Ljow;)V

    goto :goto_0

    .line 1833
    :sswitch_1
    invoke-virtual {p0}, Ljow;->e()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1834
    invoke-virtual {p0}, Ljow;->g()Ljox;

    move-result-object v0

    sget-object v1, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0, v1}, Lgpu;->a(Ljox;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    goto :goto_0

    .line 1837
    :sswitch_2
    invoke-virtual {p0}, Ljow;->e()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1838
    sget-object v0, Lipp;->POUPANCA_MENU_ITEM:Lipp;

    new-instance v1, Lgrb;

    invoke-direct {v1, p0}, Lgrb;-><init>(Ljow;)V

    invoke-static {v0, v1}, Lgpu;->a(Lipp;Lfoh;)V

    goto :goto_0

    .line 1846
    :sswitch_3
    const-string v0, "Pagamentos_Pagamento_MenuLateral_Acao"

    const-string v1, "Pagamentos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    invoke-virtual {p0}, Ljow;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1848
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1849
    sget-object v0, Lipp;->CARTAO_MENU_ITEM:Lipp;

    new-instance v1, Lgrc;

    invoke-direct {v1, p0}, Lgrc;-><init>(Ljow;)V

    invoke-static {v0, v1}, Lgpu;->a(Lipp;Lfoh;)V

    goto :goto_0

    .line 1856
    :cond_2
    invoke-static {p0}, Lgpu;->a(Ljow;)V

    goto :goto_0

    .line 1817
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0x11 -> :sswitch_0
        0x12 -> :sswitch_3
        0x2b -> :sswitch_2
    .end sparse-switch
.end method

.method private static d(Ljox;)V
    .locals 2

    .prologue
    .line 1960
    sget-object v0, Lgrd;->a:[I

    invoke-virtual {p0}, Ljox;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1974
    :goto_0
    return-void

    .line 1962
    :pswitch_0
    const-string v0, "Investimentos_Capitalizacao_MenuLateral_Capitalizacao_PopUp_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1966
    :pswitch_1
    const-string v0, "CreditoFinanciamento_MenuLateral_PopupCreditoImobiliario_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1970
    :pswitch_2
    const-string v0, "Outros_MenuLateral_Vermelhinha_PopUp_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1960
    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static d(Ljqj;)V
    .locals 4

    .prologue
    .line 1579
    sget-object v0, Lgpu;->g:Ljqc;

    invoke-virtual {v0, p0}, Ljqc;->f(Ljqj;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgpu;->g:Ljqc;

    invoke-virtual {v0, p0}, Ljqc;->g(Ljqj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1580
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1581
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1582
    const-string v2, "xxx"

    invoke-virtual {p0}, Ljqj;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1584
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1592
    :goto_0
    return-void

    .line 1585
    :cond_1
    sget-object v0, Lgpu;->g:Ljqc;

    invoke-virtual {v0, p0}, Ljqc;->e(Ljqj;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1586
    invoke-static {}, Lgpu;->g()V

    goto :goto_0

    .line 1587
    :cond_2
    sget-object v0, Lgpu;->g:Ljqc;

    invoke-virtual {v0, p0}, Ljqc;->h(Ljqj;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1588
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v1, 0x7f040198

    invoke-static {v0, v1}, Lmxn;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    goto :goto_0

    .line 1590
    :cond_3
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v1, 0x7f040197

    invoke-static {v0, v1}, Lmxn;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public static e()V
    .locals 3

    .prologue
    .line 1533
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1534
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1535
    const v1, 0x7f04019c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1536
    const v1, 0x7f1007a6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lgqs;

    invoke-direct {v2, v0}, Lgqs;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1550
    const v1, 0x7f1007a8

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lgqt;

    invoke-direct {v2, v0}, Lgqt;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1558
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1559
    return-void
.end method

.method private static e(Ljow;)V
    .locals 2

    .prologue
    .line 1898
    sget-object v0, Lgrd;->a:[I

    invoke-virtual {p0}, Ljow;->g()Ljox;

    move-result-object v1

    invoke-virtual {v1}, Ljox;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 1957
    :goto_0
    :sswitch_0
    return-void

    .line 1900
    :sswitch_1
    const-string v0, "ContaCorrente_Acao"

    const-string v1, "Menu"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1903
    :sswitch_2
    const-string v0, "Cartoes_MenuLateral_Acao"

    const-string v1, "Cartoes"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1922
    :sswitch_3
    const-string v0, "CreditoFinanciamento_MenuLateral_Acao"

    const-string v1, "Emprestimos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1927
    :sswitch_4
    const-string v0, "Investimentos_MenuLateral_Acao"

    const-string v1, "Investimentos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1946
    :sswitch_5
    const-string v0, "Seguros_MenuLateral_Acao"

    const-string v1, "BtoSeguros"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1953
    :sswitch_6
    invoke-static {}, Lhxi;->c()V

    goto :goto_0

    .line 1898
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x11 -> :sswitch_2
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_4
        0x19 -> :sswitch_3
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x35 -> :sswitch_0
        0x39 -> :sswitch_5
        0x40 -> :sswitch_0
        0x41 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x47 -> :sswitch_0
        0x52 -> :sswitch_6
        0x55 -> :sswitch_1
    .end sparse-switch
.end method

.method private static e(Ljox;)V
    .locals 2

    .prologue
    .line 1977
    sget-object v0, Lgrd;->a:[I

    invoke-virtual {p0}, Ljox;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1991
    :goto_0
    return-void

    .line 1979
    :pswitch_0
    const-string v0, "Investimentos_Capitalizacao_MenuLateral_Capitalizacao_PopUp_Acao"

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1983
    :pswitch_1
    const-string v0, "CreditoFinanciamento_MenuLateral_PopupCreditoImobiliario_Acao"

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1987
    :pswitch_2
    const-string v0, "Outros_MenuLateral_Vermelhinha_PopUp_Acao"

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1977
    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1595
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0, v3}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 1596
    new-instance v1, Landroid/app/Dialog;

    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1597
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1598
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1599
    const v0, 0x7f0401a0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1600
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1601
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1602
    new-instance v0, Lmyg;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1603
    new-instance v0, Lmyh;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1604
    const v0, 0x7f10071c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lgqu;

    invoke-direct {v2, v1}, Lgqu;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1610
    const v0, 0x7f1007c4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1611
    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a4d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1613
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1617
    :goto_0
    return-void

    .line 1614
    :catch_0
    move-exception v0

    .line 1615
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Erro showLoading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1620
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-static {v0, v3}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 1621
    new-instance v1, Landroid/app/Dialog;

    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1622
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1623
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1624
    const v0, 0x7f0401a0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1625
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1626
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1627
    new-instance v0, Lmyg;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1628
    new-instance v0, Lmyh;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1629
    const v0, 0x7f10071c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lgqv;

    invoke-direct {v2, v1}, Lgqv;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1635
    const v0, 0x7f1007c4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1636
    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a1e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1638
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    :goto_0
    return-void

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Erro showLoading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static h()V
    .locals 3

    .prologue
    .line 1742
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1743
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1744
    const-string v1, "from"

    const-string v2, "menu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1745
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1746
    return-void
.end method

.method public static i()V
    .locals 3

    .prologue
    .line 1749
    const-string v0, "CreditoFinanciamento_MenuLateral_Submenu_Acao"

    const-string v1, "SimularEmprestimo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1751
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1752
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1753
    return-void
.end method

.method public static j()V
    .locals 3

    .prologue
    .line 1756
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    invoke-static {}, Lgpu;->k()V

    .line 1766
    :goto_0
    return-void

    .line 1760
    :cond_0
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    invoke-interface {v0}, Lhya;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1761
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1762
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1764
    :cond_1
    invoke-static {}, Lgpu;->u()V

    goto :goto_0
.end method

.method public static k()V
    .locals 3

    .prologue
    .line 1778
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1779
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1780
    sget-object v1, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1781
    return-void
.end method

.method static synthetic l()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lgpu;->o:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method static synthetic m()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic n()V
    .locals 0

    .prologue
    .line 163
    invoke-static {}, Lgpu;->u()V

    return-void
.end method

.method static synthetic o()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic p()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lgpu;->n:Landroid/app/Dialog;

    return-object v0
.end method

.method private static q()V
    .locals 5

    .prologue
    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgpu;->l:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgpu;->m:Ljava/util/HashMap;

    .line 189
    invoke-static {}, Lhat;->v()Ljoy;

    move-result-object v0

    invoke-virtual {v0}, Ljoy;->a()Ljava/util/List;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    const/4 v0, 0x0

    .line 192
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljow;

    .line 193
    sget-object v3, Lgpu;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v0}, Ljow;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    sget-object v3, Lgpu;->m:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Ljow;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 198
    goto :goto_0

    .line 200
    :cond_1
    return-void
.end method

.method private static r()V
    .locals 7

    .prologue
    .line 1324
    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1326
    const/4 v0, 0x0

    sput-object v0, Lgpu;->i:Landroid/app/Dialog;

    .line 1328
    :cond_0
    new-instance v1, Lgqi;

    invoke-direct {v1}, Lgqi;-><init>()V

    .line 1337
    new-instance v2, Lgqj;

    invoke-direct {v2}, Lgqj;-><init>()V

    .line 1345
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    .line 1349
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lgpu;->d:Landroid/app/Activity;

    const v4, 0x7f090137

    .line 1350
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1351
    :goto_0
    sget-object v4, Lgpu;->d:Landroid/app/Activity;

    const v5, 0x7f090191

    .line 1352
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lgpu;->d:Landroid/app/Activity;

    const v6, 0x7f09018e

    .line 1353
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1345
    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lgpu;->i:Landroid/app/Dialog;

    .line 1355
    return-void

    .line 1350
    :cond_1
    sget-object v3, Lgpu;->d:Landroid/app/Activity;

    const v4, 0x7f090136

    .line 1351
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static s()V
    .locals 7

    .prologue
    .line 1437
    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    sget-object v0, Lgpu;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1439
    const/4 v0, 0x0

    sput-object v0, Lgpu;->i:Landroid/app/Dialog;

    .line 1441
    :cond_0
    invoke-static {}, Lmzr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1442
    new-instance v1, Lgqo;

    invoke-direct {v1, v0}, Lgqo;-><init>(Ljava/lang/String;)V

    .line 1465
    new-instance v2, Lgqp;

    invoke-direct {v2, v0}, Lgqp;-><init>(Ljava/lang/String;)V

    .line 1476
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090134

    move v4, v0

    .line 1479
    :goto_0
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const-string v3, "Aten\u00e7\u00e3o"

    sget-object v5, Lgpu;->d:Landroid/app/Activity;

    .line 1483
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Continuar"

    const-string v6, "Cancelar"

    .line 1479
    invoke-static/range {v0 .. v6}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lgpu;->i:Landroid/app/Dialog;

    .line 1486
    return-void

    .line 1476
    :cond_1
    const v0, 0x7f090133

    move v4, v0

    goto :goto_0
.end method

.method private static t()V
    .locals 4

    .prologue
    .line 1730
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1731
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1732
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1739
    :goto_0
    return-void

    .line 1734
    :cond_0
    invoke-static {}, Lgpu;->h()V

    goto :goto_0

    .line 1737
    :cond_1
    invoke-static {}, Lgpu;->h()V

    goto :goto_0
.end method

.method private static u()V
    .locals 4

    .prologue
    .line 1769
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    invoke-interface {v0}, Lhya;->d()Z

    move-result v0

    .line 1770
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lgpu;->d:Landroid/app/Activity;

    const-class v3, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1771
    const-string v2, "extra_type_emprestimo"

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1773
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1774
    sget-object v0, Lgpu;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1775
    return-void

    .line 1771
    :cond_0
    const/16 v0, 0xd

    goto :goto_0
.end method
