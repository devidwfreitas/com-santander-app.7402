.class public Llft;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "family-key"


# instance fields
.field b:Lkst;

.field private c:Landroid/support/v7/widget/AppCompatRadioButton;

.field private d:Landroid/support/v7/widget/AppCompatRadioButton;

.field private e:Landroid/support/v7/widget/AppCompatRadioButton;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Llge;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Llgd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 58
    new-instance v0, Lkst;

    invoke-direct {v0}, Lkst;-><init>()V

    iput-object v0, p0, Llft;->b:Lkst;

    return-void
.end method

.method static synthetic a(Llft;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Llft;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Llgd;)Llft;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string v1, "family-key"

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Llft;

    invoke-direct {v1}, Llft;-><init>()V

    .line 73
    invoke-virtual {v1, v0}, Llft;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 177
    const-string v0, "0000000002"

    .line 179
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 180
    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Lksl;

    const-string v2, "0000000001"

    const-string v3, "69"

    invoke-direct {v1, v2, v3, v0}, Lksl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 125
    const v0, 0x7f100096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llft;->o:Landroid/widget/ImageView;

    .line 126
    const v0, 0x7f100763

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Llft;->c:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 127
    const v0, 0x7f100766

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Llft;->d:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 128
    const v0, 0x7f100769

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Llft;->e:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 129
    const v0, 0x7f10076b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llft;->g:Landroid/widget/Button;

    .line 130
    const v0, 0x7f10076c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llft;->f:Landroid/widget/Button;

    .line 131
    const v0, 0x7f100762

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llft;->i:Landroid/widget/FrameLayout;

    .line 132
    const v0, 0x7f100765

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llft;->j:Landroid/widget/FrameLayout;

    .line 133
    const v0, 0x7f100768

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llft;->k:Landroid/widget/FrameLayout;

    .line 134
    const v0, 0x7f100764

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llft;->l:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f100767

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llft;->m:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f10076a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llft;->n:Landroid/widget/TextView;

    .line 138
    invoke-direct {p0}, Llft;->b()V

    .line 140
    iget-object v0, p0, Llft;->g:Landroid/widget/Button;

    new-instance v1, Llfu;

    invoke-direct {v1, p0}, Llfu;-><init>(Llft;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Llft;->f:Landroid/widget/Button;

    new-instance v1, Llfv;

    invoke-direct {v1, p0}, Llfv;-><init>(Llft;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void
.end method

.method static synthetic b(Llft;)Llge;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Llft;->h:Llge;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Llft;->c:Landroid/support/v7/widget/AppCompatRadioButton;

    new-instance v1, Llfw;

    invoke-direct {v1, p0}, Llfw;-><init>(Llft;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 213
    iget-object v0, p0, Llft;->d:Landroid/support/v7/widget/AppCompatRadioButton;

    new-instance v1, Llfx;

    invoke-direct {v1, p0}, Llfx;-><init>(Llft;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 227
    iget-object v0, p0, Llft;->e:Landroid/support/v7/widget/AppCompatRadioButton;

    new-instance v1, Llfy;

    invoke-direct {v1, p0}, Llfy;-><init>(Llft;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    iget-object v0, p0, Llft;->i:Landroid/widget/FrameLayout;

    new-instance v1, Llfz;

    invoke-direct {v1, p0}, Llfz;-><init>(Llft;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Llft;->j:Landroid/widget/FrameLayout;

    new-instance v1, Llga;

    invoke-direct {v1, p0}, Llga;-><init>(Llft;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Llft;->k:Landroid/widget/FrameLayout;

    new-instance v1, Llgb;

    invoke-direct {v1, p0}, Llgb;-><init>(Llft;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-void
.end method

.method static synthetic c(Llft;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Llft;->c:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method static synthetic d(Llft;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Llft;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Llft;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Llft;->d:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method static synthetic f(Llft;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Llft;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Llft;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Llft;->e:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method static synthetic h(Llft;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Llft;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Llft;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Llft;->a()V

    return-void
.end method


# virtual methods
.method public a(Llge;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Llft;->h:Llge;

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p0}, Llft;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "family-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Llgd;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgd;

    iput-object v0, p0, Llft;->r:Llgd;

    .line 84
    sget-object v0, Llgc;->a:[I

    iget-object v1, p0, Llft;->r:Llgd;

    invoke-virtual {v1}, Llgd;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const-string v0, "Seguros_Cancelamento_Residencia_CorrerRisco_PopUp_Acao"

    iput-object v0, p0, Llft;->p:Ljava/lang/String;

    .line 87
    const v0, 0x7f020457

    iput v0, p0, Llft;->q:I

    goto :goto_0

    .line 90
    :pswitch_1
    const-string v0, "Seguros_Cancelamento_Vida_AP_CorrerRisco_PopUp_Acao"

    iput-object v0, p0, Llft;->p:Ljava/lang/String;

    .line 91
    const v0, 0x7f0203d0

    iput v0, p0, Llft;->q:I

    goto :goto_0

    .line 94
    :pswitch_2
    const-string v0, "Seguros_Cancelamento_Vida_AP_CorrerRisco_PopUp_Acao"

    iput-object v0, p0, Llft;->p:Ljava/lang/String;

    .line 95
    const v0, 0x7f020330

    iput v0, p0, Llft;->q:I

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 118
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 119
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 120
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 106
    const v0, 0x7f040181

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Llft;->a(Landroid/view/View;)V

    .line 108
    iget v1, p0, Llft;->q:I

    if-lez v1, :cond_0

    .line 109
    iget-object v1, p0, Llft;->o:Landroid/widget/ImageView;

    iget v2, p0, Llft;->q:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :cond_0
    return-object v0
.end method
