.class public Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lmfk;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private e:Lmfg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->a(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->a()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->a(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->a()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->a(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->a()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->a(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->a()V

    .line 55
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f1006e5

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->c:Landroid/widget/LinearLayout;

    .line 66
    const v0, 0x7f100e3e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 68
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    const v1, 0x7f0402ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->a:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->addView(Landroid/view/View;)V

    .line 61
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->b:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->b(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method

.method private b(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lmfg;->a()Lmfg;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->e:Lmfg;

    .line 83
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->e:Lmfg;

    invoke-virtual {v0, p0}, Lmfg;->a(Lmfk;)V

    .line 84
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->e:Lmfg;

    const-string v1, "dialog-coverage-values"

    invoke-virtual {v0, p1, v1}, Lmfg;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lmbd;

    invoke-direct {v1, p0, p1}, Lmbd;-><init>(Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->setTextName(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setTextName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
