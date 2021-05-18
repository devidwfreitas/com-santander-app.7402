.class public Lcom/santander/app/homenaologada/presentation/HomeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lium;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "HomeActivity"


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;

.field private f:Landroid/widget/ImageButton;

.field private g:Liun;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/app/Dialog;

.field private j:Landroid/app/Dialog;

.field private k:Lism;

.field private l:Landroid/app/AlertDialog$Builder;

.field private m:Landroid/app/Dialog;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 86
    iput-boolean v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->b:Z

    .line 90
    iput-boolean v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->d:Z

    .line 107
    iput v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->o:I

    return-void
.end method

.method private A()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 522
    new-instance v0, Litx;

    invoke-direct {v0, p0}, Litx;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V

    return-object v0
.end method

.method private B()V
    .locals 4

    .prologue
    .line 616
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 617
    const-string v1, "Aten\u00e7\u00e3o"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Para melhorar sua experi\u00eancia, habilite o GPS para podermos mandar ofertas especiais."

    .line 618
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 619
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Litz;

    invoke-direct {v3, p0}, Litz;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V

    .line 620
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090199

    new-instance v3, Lity;

    invoke-direct {v3, p0}, Lity;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V

    .line 626
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 631
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 632
    new-instance v1, Liua;

    invoke-direct {v1, p0, v0}, Liua;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 640
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 641
    return-void
.end method

.method private C()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 652
    new-instance v0, Liub;

    invoke-direct {v0, p0}, Liub;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/homenaologada/presentation/HomeActivity;I)I
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->o:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/homenaologada/presentation/HomeActivity;)Liun;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->g:Liun;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/homenaologada/presentation/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/homenaologada/presentation/HomeActivity;Z)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->c(Z)V

    return-void
.end method

.method private b(I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 283
    new-instance v0, Liug;

    invoke-direct {v0, p0, p1}, Liug;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;I)V

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 356
    new-instance v0, Liuj;

    invoke-direct {v0, p0, p1, p2}, Liuj;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/homenaologada/presentation/HomeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/homenaologada/presentation/HomeActivity;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->o:I

    return v0
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 464
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v0

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    :goto_0
    invoke-static {p0, v1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 472
    :goto_1
    return-void

    .line 465
    :cond_0
    const/16 v0, 0xb

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->i()V

    goto :goto_1

    .line 470
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->i()V

    goto :goto_1
.end method

.method public static synthetic d(Lcom/santander/app/homenaologada/presentation/HomeActivity;)I
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->o:I

    return v0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 140
    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->setTheme(I)V

    .line 143
    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->setContentView(I)V

    .line 145
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->a(Landroid/content/Context;)V

    .line 147
    invoke-static {}, Lcom/santander/app/MinhaConta;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmyn;->c(Landroid/app/Application;)V

    .line 149
    const v0, 0x7f100322

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->e:Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;

    .line 150
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->e:Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;

    invoke-direct {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->z()Lguh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->setOnItemClickListener(Lguh;)V

    .line 152
    const v0, 0x7f100321

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->f:Landroid/widget/ImageButton;

    .line 153
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->f:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->w()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->l:Landroid/app/AlertDialog$Builder;

    .line 157
    const v0, 0x7f100323

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 158
    new-instance v1, Litw;

    invoke-direct {v1, p0}, Litw;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v0, Liuo;

    invoke-direct {v0, p0}, Liuo;-><init>(Lium;)V

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->g:Liun;

    .line 166
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->r()V

    .line 167
    return-void
.end method

.method private w()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Liud;

    invoke-direct {v0, p0}, Liud;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V

    return-object v0
.end method

.method private x()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 235
    new-instance v0, Liue;

    invoke-direct {v0, p0}, Liue;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V

    return-object v0
.end method

.method private y()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 274
    new-instance v0, Liuf;

    invoke-direct {v0, p0}, Liuf;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V

    return-object v0
.end method

.method private z()Lguh;
    .locals 1

    .prologue
    .line 321
    new-instance v0, Liui;

    invoke-direct {v0, p0}, Liui;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02031a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 217
    const v1, 0x7f0204a4

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 218
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 219
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 221
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 264
    .line 266
    invoke-direct {p0, p1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->b(I)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 267
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09018e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-static {p0, v0, v1, v2, v3}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->j:Landroid/app/Dialog;

    .line 271
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 339
    invoke-static {p0, p1}, Lmyo;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 382
    invoke-static {p0, p1}, Lmyo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 645
    if-eqz p2, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->C()Landroid/view/View$OnClickListener;

    move-result-object v0

    const-string v1, "OK"

    const-string v2, "Cancelar"

    invoke-static {p0, v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 649
    :goto_0
    return-void

    .line 648
    :cond_0
    invoke-static {p0, p1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 3
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
    .line 302
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->e:Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;

    new-instance v1, Liul;

    invoke-direct {v1, p0, p1}, Liul;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->setAdapter(Landroid/widget/Adapter;)V

    .line 303
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 304
    const/4 v1, 0x0

    iput v1, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->o:I

    .line 306
    iget-object v1, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->e:Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;

    invoke-virtual {v1}, Lcom/santander/app/components/view/scrollcolumnlayout/ScrollColumnLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Liuh;

    invoke-direct {v2, p0, v0}, Liuh;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 318
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 496
    invoke-static {}, Lirw;->a()Lirw;

    move-result-object v0

    const-string v1, "INPUT_TYPE_SENHA"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lirw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    iput-boolean p1, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->b:Z

    .line 499
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 542
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 225
    .line 227
    invoke-direct {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->x()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09018e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-static {p0, v0, v1, v2, v3}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->i:Landroid/app/Dialog;

    .line 232
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 387
    invoke-static {p0, p1}, Lmyo;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 594
    :try_start_0
    new-instance v0, Lism;

    iget-object v1, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->n:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lism;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/santander/app/homenaologada/presentation/HomeActivity;)V

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->k:Lism;

    .line 595
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 596
    const v1, 0x7f100320

    iget-object v2, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->k:Lism;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 597
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    const-string v1, "MONTAR_LOGIN"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v1, "Outros_Login_Tratamento_Excecao"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "montarTelaLogin() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->i:Landroid/app/Dialog;

    .line 249
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 392
    invoke-static {p0, p1}, Lmyo;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    .line 253
    .line 255
    invoke-direct {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->y()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09018e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-static {p0, v0, v1, v2, v3}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->j:Landroid/app/Dialog;

    .line 260
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 576
    const/4 v0, 0x1

    sput-boolean v0, Lism;->b:Z

    .line 578
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/integrationway/presentation/IntegrationWayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    const-string v1, "dlb-ticket"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const/high16 v1, 0x44000000    # 512.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 581
    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 582
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->finish()V

    .line 583
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->j:Landroid/app/Dialog;

    .line 298
    :cond_0
    return-void
.end method

.method public f()V
    .locals 7

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_PopUp_Acao"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Continuar"

    .line 346
    invoke-direct {p0, v0, v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_PopUp_Acao"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cancelar"

    .line 349
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090133

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090533

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 351
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f090531

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 344
    invoke-static/range {v0 .. v6}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->h:Landroid/app/Dialog;

    .line 353
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->h:Landroid/app/Dialog;

    .line 371
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 375
    const-string v0, "Login_Acao"

    const-string v1, "SelecionarAjudaHomeNaoLogada"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/faq/presentation/FaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 378
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 476
    const-string v0, "Login_Acao"

    const-string v1, "MapaAgencias"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 479
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 480
    const-string v1, "from"

    const-string v2, "home"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 483
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->b:Z

    return v0
.end method

.method public k()V
    .locals 4

    .prologue
    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->l:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 505
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->l:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04027b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 506
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->l:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090191

    invoke-direct {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->A()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 507
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->l:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 508
    new-instance v1, Liuk;

    invoke-direct {v1, p0, v0}, Liuk;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 515
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 552
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->m:Landroid/app/Dialog;

    .line 553
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->m:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->m:Landroid/app/Dialog;

    .line 561
    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 565
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 566
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 570
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/boasvindas/BoasVindasActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x26c0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 571
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 532
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 533
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->g:Liun;

    invoke-interface {v0, p1, p2, p3}, Liun;->a(IILandroid/content/Intent;)V

    .line 534
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->k:Lism;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->k:Lism;

    invoke-virtual {v0}, Lism;->t()V

    .line 489
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    const-string v1, "msg_noti_stimulum_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->p:Ljava/lang/String;

    .line 120
    const-string v1, "msg_noti_intent_extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->q:Ljava/lang/String;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->q:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    const v0, 0x1030011

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->setTheme(I)V

    .line 130
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->finish()V

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->v()V

    goto :goto_0

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->v()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 452
    invoke-static {p0}, Lmyz;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const v0, 0x7f09089a

    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->a(Ljava/lang/String;Z)V

    .line 458
    :goto_0
    return v2

    .line 455
    :cond_0
    invoke-direct {p0, v2}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->c(Z)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 427
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 429
    iput-boolean v2, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->d:Z

    .line 431
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/datami/smi/SmiSdk;->appVisibility(Landroid/content/Context;Z)V

    .line 433
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 435
    invoke-static {p0}, Lbla;->b(Landroid/content/Context;)V

    .line 438
    :cond_0
    iget-boolean v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->c:Z

    if-nez v0, :cond_1

    .line 439
    invoke-static {v2}, Lcom/santander/app/MinhaConta;->a(Z)V

    .line 441
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 546
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 547
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->g:Liun;

    invoke-interface {v0, p1, p2, p3, p0}, Liun;->a(I[Ljava/lang/String;[ILandroid/app/Activity;)V

    .line 548
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 399
    iput-boolean v2, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->d:Z

    .line 401
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/datami/smi/SmiSdk;->appVisibility(Landroid/content/Context;Z)V

    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 405
    invoke-static {p0}, Lbla;->a(Landroid/content/Context;)V

    .line 408
    :cond_0
    iget-boolean v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->c:Z

    if-nez v0, :cond_1

    .line 409
    invoke-static {v2}, Lcom/santander/app/MinhaConta;->a(Z)V

    .line 412
    :cond_1
    invoke-static {}, Lcom/santander/app/MinhaConta;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/ExitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 417
    const-string v1, "errorMessage"

    invoke-static {}, Lcom/santander/app/MinhaConta;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v1, "showHome"

    invoke-static {}, Lcom/santander/app/MinhaConta;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 423
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 445
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->d:Z

    .line 447
    return-void
.end method

.method public p()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public q()V
    .locals 2

    .prologue
    .line 606
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 607
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->c(Z)V

    .line 612
    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 671
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 673
    invoke-static {}, Lcom/santander/app/MinhaConta;->a()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Liuc;

    invoke-direct {v1, p0}, Liuc;-><init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V

    invoke-static {v0, v1}, Lmyn;->a(Landroid/app/Application;Lala;)V

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->g:Liun;

    invoke-interface {v0}, Liun;->l()V

    goto :goto_0
.end method

.method public s()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 695
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v6

    const/16 v1, 0xd

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 722
    :goto_0
    return-void

    .line 699
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "SantanderBrasil/Analytics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 701
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 702
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v1, "MBBPFlog.txt"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 703
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 706
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 707
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 710
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 711
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    if-eqz v3, :cond_3

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 713
    :cond_3
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -c"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 714
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "logcat"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "-f"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    const-string v3, "*:I"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "APM:D *:S"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 715
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/analytics/util/TriggerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 716
    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Storage permission needed"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 719
    const-string v1, "ERROR"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 712
    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 710
    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 712
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_5

    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    :goto_2
    :try_start_7
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2
.end method

.method public t()V
    .locals 3

    .prologue
    .line 726
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/analytics/util/TriggerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 727
    invoke-virtual {p0, v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->stopService(Landroid/content/Intent;)Z

    .line 728
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->k:Lism;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/santander/app/homenaologada/presentation/HomeActivity;->k:Lism;

    invoke-virtual {v0}, Lism;->P()Litf;

    move-result-object v0

    invoke-interface {v0}, Litf;->K()V

    .line 735
    :cond_0
    return-void
.end method
