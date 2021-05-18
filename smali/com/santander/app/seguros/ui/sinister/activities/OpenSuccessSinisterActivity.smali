.class public Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "insurance_response_key"

.field public static final b:Ljava/lang/String; = "inputed_client_data_key"

.field public static final c:Ljava/lang/String; = "insurance_family_key"

.field public static final d:Ljava/lang/String; = "all_client_coverages_key"

.field public static final e:Ljava/lang/String; = "phone-assistance"

.field private static final f:I = 0xb26e


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private G:Landroid/widget/LinearLayout;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Lkve;

.field private K:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkuy;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lkva;

.field private x:Ljava/lang/String;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkup;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lbr/com/zup/multistatelayout/MultiStateLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->I:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkux;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 361
    const-string v0, ""

    move v1, v2

    move-object v3, v0

    .line 363
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 365
    const-string v4, "%1$-23s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkux;

    invoke-virtual {v0}, Lkux;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 366
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkux;

    invoke-virtual {v0}, Lkux;->d()Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x30

    const/4 v6, 0x6

    invoke-static {v0, v5, v6}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 363
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 373
    :cond_0
    const-string v0, "%1$-290s"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 376
    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;Lkve;)Lkve;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->J:Lkve;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->e()V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->z:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const v4, 0x7f0907c2

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 122
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020664

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 125
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 126
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 127
    const v2, 0x7f100071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 128
    invoke-virtual {p0, v4}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 132
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->z:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 133
    const v0, 0x7f1003c3

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->A:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f1003c4

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->B:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f1003c5

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->C:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f1003c6

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->D:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f100217

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->E:Landroid/widget/Button;

    .line 138
    const v0, 0x7f1002d5

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->F:Landroid/widget/Button;

    .line 139
    const v0, 0x7f1003c2

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->G:Landroid/widget/LinearLayout;

    .line 140
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->d()V

    .line 141
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->F:Landroid/widget/Button;

    new-instance v1, Llqt;

    invoke-direct {v1, p0}, Llqt;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->E:Landroid/widget/Button;

    new-instance v1, Llqu;

    invoke-direct {v1, p0}, Llqu;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Lkve;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->J:Lkve;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const v1, 0xb26e

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->G:Landroid/widget/LinearLayout;

    invoke-static {v0, p0}, Lmhj;->a(Landroid/view/View;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090af9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmhj;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/4 v3, 0x6

    const/4 v2, 0x2

    .line 210
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->H:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->H:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->H:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 214
    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->H:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 216
    new-instance v5, Lkvd;

    invoke-direct {v5}, Lkvd;-><init>()V

    .line 217
    invoke-virtual {v5, v0}, Lkvd;->b(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v5, v1}, Lkvd;->c(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvd;->a(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v5, v3}, Lkvd;->d(Ljava/lang/String;)V

    .line 221
    const-string v0, "0"

    invoke-virtual {v5, v0}, Lkvd;->e(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvd;->f(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvd;->g(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvd;->h(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    invoke-static {}, Lmzr;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvd;->i(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v1}, Lkva;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvd;->j(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v0}, Lkva;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvd;->k(Ljava/lang/String;)V

    .line 228
    const-string v0, ""

    invoke-virtual {v5, v0}, Lkvd;->l(Ljava/lang/String;)V

    .line 229
    const-string v0, ""

    invoke-virtual {v5, v0}, Lkvd;->m(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v0}, Lkva;->j()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvd;->n(Ljava/lang/String;)V

    .line 231
    const-string v0, ""

    invoke-virtual {v5, v0}, Lkvd;->o(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v0}, Lkva;->b()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvd;->p(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v0}, Lkva;->m()Lkvf;

    move-result-object v0

    sget-object v1, Lkvf;->AM:Lkvf;

    if-ne v0, v1, :cond_2

    const-string v0, "Manha"

    :goto_0
    invoke-virtual {v5, v0}, Lkvd;->q(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v0}, Lkva;->k()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/."

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvd;->r(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v0}, Lkva;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v0}, Lkva;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v0}, Lkva;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvd;->m(Ljava/lang/String;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->z:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 242
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 244
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_1
    const/4 v1, 0x0

    .line 252
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {v0, v5}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    :goto_2
    if-nez v4, :cond_3

    .line 271
    :cond_1
    :goto_3
    return-void

    .line 233
    :cond_2
    const-string v0, "Tarde"

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 253
    :catch_1
    move-exception v0

    .line 254
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v1

    goto :goto_2

    .line 259
    :cond_3
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Lkwr;->NOTIFY_SINISTER:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 260
    new-instance v1, Lgnv;

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->k()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 262
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 265
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 266
    :catch_2
    move-exception v0

    .line 267
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static synthetic g(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->B:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 276
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuy;

    .line 277
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v1}, Lkva;->r()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkup;

    .line 279
    invoke-virtual {v1}, Lkup;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Lkuy;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkup;

    invoke-virtual {v1}, Lkup;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v4, v1, :cond_1

    .line 282
    invoke-virtual {v0}, Lkuy;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkup;

    invoke-virtual {v0}, Lkup;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic h(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 8

    .prologue
    .line 290
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuy;

    .line 291
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v1}, Lkva;->r()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkup;

    .line 294
    invoke-virtual {v1}, Lkup;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Lkuy;->f()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkup;

    invoke-virtual {v2}, Lkup;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v5, v2, :cond_1

    .line 295
    invoke-virtual {v1}, Lkup;->f()Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 6

    .prologue
    .line 303
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuy;

    .line 304
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v4}, Lkva;->r()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 305
    invoke-virtual {v0}, Lkuy;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkup;

    invoke-virtual {v0}, Lkup;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Ljava/lang/String;
    .locals 6

    .prologue
    .line 312
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuy;

    .line 313
    invoke-virtual {v0}, Lkuy;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    invoke-virtual {v4}, Lkva;->r()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 314
    invoke-virtual {v0}, Lkuy;->e()Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkw",
            "<",
            "Lis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Llqv;

    invoke-direct {v0, p0}, Llqv;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    const-string v1, "sinister-code"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->J:Lkve;

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, "coverage-key"

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "certificate-key"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v1, "phone-assistance"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->finish()V

    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f040090

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->setContentView(I)V

    .line 100
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->c()V

    .line 102
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->b()V

    .line 104
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insurance_response_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "insurance_response_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, [Lkuy;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->g:Ljava/util/List;

    .line 107
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "inputed_client_data_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkva;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkva;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->w:Lkva;

    .line 108
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insurance_family_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->x:Ljava/lang/String;

    .line 109
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "all_client_coverages_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, [Lkup;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->y:Ljava/util/List;

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone-assistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone-assistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->K:Ljava/lang/String;

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->f()V

    .line 117
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Lgrs;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 178
    :pswitch_0
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->e()V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090462

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0xb26e
        :pswitch_0
    .end packed-switch
.end method
