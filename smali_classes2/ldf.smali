.class public Lldf;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DATA_CONFIRMATION_VIEW_MODEL_KEY"


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/Button;

.field private l:Lldl;

.field private m:Lldm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lldm;)Lldf;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string v1, "DATA_CONFIRMATION_VIEW_MODEL_KEY"

    invoke-virtual {p0}, Lldm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v1, Lldf;

    invoke-direct {v1}, Lldf;-><init>()V

    .line 54
    invoke-virtual {v1, v0}, Lldf;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v1
.end method

.method static synthetic a(Lldf;)Lldl;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lldf;->l:Lldl;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lldf;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lldf;->m:Lldm;

    invoke-virtual {v1}, Lldm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lldf;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lldf;->m:Lldm;

    invoke-virtual {v1}, Lldm;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lldf;->m:Lldm;

    invoke-virtual {v0}, Lldm;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lldf;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lldf;->m:Lldm;

    invoke-virtual {v1}, Lldm;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lldf;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lldf;->m:Lldm;

    invoke-virtual {v0}, Lldm;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lldf;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lldf;->m:Lldm;

    invoke-virtual {v1}, Lldm;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lldf;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    :cond_1
    iget-object v0, p0, Lldf;->h:Landroid/widget/ImageButton;

    new-instance v1, Lldg;

    invoke-direct {v1, p0}, Lldg;-><init>(Lldf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lldf;->i:Landroid/widget/ImageButton;

    new-instance v1, Lldh;

    invoke-direct {v1, p0}, Lldh;-><init>(Lldf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lldf;->j:Landroid/widget/ImageButton;

    new-instance v1, Lldi;

    invoke-direct {v1, p0}, Lldi;-><init>(Lldf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lldf;->k:Landroid/widget/Button;

    new-instance v1, Lldj;

    invoke-direct {v1, p0}, Lldj;-><init>(Lldf;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f100996

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lldf;->b:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f100999

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lldf;->c:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f10099c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lldf;->d:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f10099e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lldf;->e:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f100998

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lldf;->f:Landroid/widget/LinearLayout;

    .line 84
    const v0, 0x7f10099b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lldf;->g:Landroid/widget/LinearLayout;

    .line 86
    const v0, 0x7f100997

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lldf;->h:Landroid/widget/ImageButton;

    .line 87
    const v0, 0x7f10099a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lldf;->i:Landroid/widget/ImageButton;

    .line 88
    const v0, 0x7f10099d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lldf;->j:Landroid/widget/ImageButton;

    .line 90
    const v0, 0x7f10093d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lldf;->k:Landroid/widget/Button;

    .line 91
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 142
    const v0, 0x7f090a67

    invoke-virtual {p0, v0}, Lldf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Llay;->a(Ljava/lang/String;)Llay;

    move-result-object v0

    .line 144
    new-instance v1, Lldk;

    invoke-direct {v1, p0}, Lldk;-><init>(Lldf;)V

    invoke-virtual {v0, v1}, Llay;->a(Llbb;)V

    .line 159
    invoke-virtual {p0}, Lldf;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llay;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method static synthetic b(Lldf;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lldf;->b()V

    return-void
.end method


# virtual methods
.method public a(Lldl;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lldf;->l:Lldl;

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lldf;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lldf;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DATA_CONFIRMATION_VIEW_MODEL_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lldm;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lldm;

    iput-object v0, p0, Lldf;->m:Lldm;

    .line 65
    :cond_0
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
    .line 69
    const v0, 0x7f0401e9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Lldf;->a(Landroid/view/View;)V

    .line 72
    invoke-direct {p0}, Lldf;->a()V

    .line 74
    return-object v0
.end method
