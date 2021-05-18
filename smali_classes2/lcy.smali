.class public Llcy;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Llde;

.field private b:Landroid/support/design/widget/TextInputEditText;

.field private c:Landroid/support/design/widget/TextInputEditText;

.field private d:Landroid/widget/Button;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 36
    iput-boolean v0, p0, Llcy;->e:Z

    .line 37
    iput-boolean v0, p0, Llcy;->f:Z

    return-void
.end method

.method public static a()Llcy;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Llcy;

    invoke-direct {v0}, Llcy;-><init>()V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f10093b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Llcy;->b:Landroid/support/design/widget/TextInputEditText;

    .line 55
    const v0, 0x7f10093c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Llcy;->c:Landroid/support/design/widget/TextInputEditText;

    .line 56
    const v0, 0x7f10093d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llcy;->d:Landroid/widget/Button;

    .line 57
    return-void
.end method

.method static synthetic a(Llcy;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Llcy;->e:Z

    return v0
.end method

.method static synthetic a(Llcy;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Llcy;->e:Z

    return p1
.end method

.method static synthetic b(Llcy;)Landroid/support/design/widget/TextInputEditText;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Llcy;->b:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Llcy;->d:Landroid/widget/Button;

    invoke-static {v0}, Lmhj;->d(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Llcy;->b:Landroid/support/design/widget/TextInputEditText;

    new-instance v1, Lldb;

    invoke-direct {v1, p0}, Lldb;-><init>(Llcy;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    iget-object v0, p0, Llcy;->c:Landroid/support/design/widget/TextInputEditText;

    new-instance v1, Lldc;

    invoke-direct {v1, p0}, Lldc;-><init>(Llcy;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object v0, p0, Llcy;->c:Landroid/support/design/widget/TextInputEditText;

    const-string v1, "(##)#####-####"

    iget-object v2, p0, Llcy;->c:Landroid/support/design/widget/TextInputEditText;

    invoke-static {v1, v2}, Lmhb;->a(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v0, p0, Llcy;->d:Landroid/widget/Button;

    new-instance v1, Lldd;

    invoke-direct {v1, p0}, Lldd;-><init>(Llcy;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method static synthetic b(Llcy;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Llcy;->f:Z

    return p1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Llcy;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llcy;->f:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Llcy;->d:Landroid/widget/Button;

    invoke-static {v0}, Lmhj;->e(Landroid/view/View;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Llcy;->d:Landroid/widget/Button;

    invoke-static {v0}, Lmhj;->d(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic c(Llcy;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Llcy;->f:Z

    return v0
.end method

.method static synthetic d(Llcy;)Landroid/support/design/widget/TextInputEditText;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Llcy;->c:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method static synthetic e(Llcy;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Llcy;->c()V

    return-void
.end method

.method static synthetic f(Llcy;)Llde;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Llcy;->a:Llde;

    return-object v0
.end method


# virtual methods
.method public a(Llde;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Llcy;->a:Llde;

    .line 159
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    const v0, 0x7f0401e1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Llcy;->a(Landroid/view/View;)V

    .line 48
    invoke-direct {p0}, Llcy;->b()V

    .line 50
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 90
    iget-object v0, p0, Llcy;->b:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 91
    iget-object v0, p0, Llcy;->c:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 92
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 63
    sget-object v0, Lldn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Llcy;->b:Landroid/support/design/widget/TextInputEditText;

    sget-object v1, Lldn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    iget-object v0, p0, Llcy;->b:Landroid/support/design/widget/TextInputEditText;

    new-instance v1, Llcz;

    invoke-direct {v1, p0}, Llcz;-><init>(Llcy;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 74
    sget-object v0, Lldn;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Llcy;->c:Landroid/support/design/widget/TextInputEditText;

    sget-object v1, Lldn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_1
    iget-object v0, p0, Llcy;->c:Landroid/support/design/widget/TextInputEditText;

    new-instance v1, Llda;

    invoke-direct {v1, p0}, Llda;-><init>(Llcy;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 84
    return-void
.end method
