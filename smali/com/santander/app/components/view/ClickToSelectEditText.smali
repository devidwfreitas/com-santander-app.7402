.class public Lcom/santander/app/components/view/ClickToSelectEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lgkz;",
        ">",
        "Landroid/widget/EditText;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:[Ljava/lang/String;

.field private c:Ljava/lang/CharSequence;

.field private d:I

.field private e:Z

.field private f:Lgrz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgrz",
            "<TT;>;"
        }
    .end annotation
.end field

.field private g:Lgpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgpd",
            "<TT;>;"
        }
    .end annotation
.end field

.field private h:Lgkz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->a(Landroid/util/AttributeSet;)V

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/components/view/ClickToSelectEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->c:Ljava/lang/CharSequence;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/components/view/ClickToSelectEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->c:Ljava/lang/CharSequence;

    .line 68
    invoke-direct {p0, p2}, Lcom/santander/app/components/view/ClickToSelectEditText;->a(Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-direct {p0, p2}, Lcom/santander/app/components/view/ClickToSelectEditText;->a(Landroid/util/AttributeSet;)V

    .line 75
    invoke-virtual {p0}, Lcom/santander/app/components/view/ClickToSelectEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->c:Ljava/lang/CharSequence;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    invoke-direct {p0, p2}, Lcom/santander/app/components/view/ClickToSelectEditText;->a(Landroid/util/AttributeSet;)V

    .line 83
    invoke-virtual {p0}, Lcom/santander/app/components/view/ClickToSelectEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->c:Ljava/lang/CharSequence;

    .line 84
    return-void
.end method

.method private a(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 150
    const v0, 0x7f040148

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 151
    const v0, 0x7f1003fa

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v0, 0x7f1006a9

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 154
    const v1, 0x7f1006aa

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 156
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 158
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    const/16 v4, 0x11

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 162
    const/4 v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 163
    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 165
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 169
    iget-boolean v2, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->e:Z

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    :cond_0
    const v0, 0x7f1006ab

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 174
    new-instance v2, Lgrz;

    iget-object v3, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/santander/app/components/view/ClickToSelectEditText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgrz;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->f:Lgrz;

    .line 175
    iget-object v2, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->f:Lgrz;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    new-instance v2, Lgpa;

    invoke-direct {v2, p0, p1}, Lgpa;-><init>(Lcom/santander/app/components/view/ClickToSelectEditText;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    const v0, 0x7f10069c

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 193
    new-instance v2, Lgpb;

    invoke-direct {v2, p0, p1}, Lgpb;-><init>(Lcom/santander/app/components/view/ClickToSelectEditText;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v0, Lgpc;

    invoke-direct {v0, p0, v1}, Lgpc;-><init>(Lcom/santander/app/components/view/ClickToSelectEditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/components/view/ClickToSelectEditText;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/ClickToSelectEditText;->a(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/components/view/ClickToSelectEditText;Lgkz;)Lgkz;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->h:Lgkz;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/components/view/ClickToSelectEditText;)Lgpd;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->g:Lgpd;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/components/view/ClickToSelectEditText;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->a:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 91
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/santander/app/components/view/ClickToSelectEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lflv;->SantanderTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/santander/app/components/view/ClickToSelectEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 97
    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/ClickToSelectEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/components/view/ClickToSelectEditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/ClickToSelectEditText;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->f:Lgrz;

    invoke-virtual {v0, p1}, Lgrz;->a(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/components/view/ClickToSelectEditText;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->i:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lgoz;

    invoke-direct {v0, p0}, Lgoz;-><init>(Lcom/santander/app/components/view/ClickToSelectEditText;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method


# virtual methods
.method public a()Lgkz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->h:Lgkz;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->setFocusable(Z)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->setClickable(Z)V

    .line 109
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->a:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->i:Ljava/util/List;

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->b:[Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgkz;

    .line 120
    iget-object v4, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->b:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Lgkz;->Y()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move v1, v2

    .line 121
    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/components/view/ClickToSelectEditText;->b()V

    .line 124
    return-void
.end method

.method public setOnItemSelectedListener(Lgpd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgpd",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    iput-object p1, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->g:Lgpd;

    .line 142
    return-void
.end method

.method public setResLayoutDialog(I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->d:I

    .line 88
    return-void
.end method

.method public setSearch(Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/santander/app/components/view/ClickToSelectEditText;->e:Z

    .line 128
    return-void
.end method
