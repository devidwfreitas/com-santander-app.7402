.class public Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lmbc;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/support/v7/widget/AppCompatSeekBar;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->d()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->d()V

    .line 58
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;)Lmbc;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->a:Lmbc;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->e()V

    .line 63
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f1004e6

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->b:Landroid/widget/ImageButton;

    .line 116
    const v0, 0x7f1004e7

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->c:Landroid/widget/ImageButton;

    .line 117
    const v0, 0x7f1004e8

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSeekBar;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->d:Landroid/support/v7/widget/AppCompatSeekBar;

    .line 118
    const v0, 0x7f1004e9

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->e:Landroid/widget/TextView;

    .line 120
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->c()V

    .line 121
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/AppCompatSeekBar;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->d:Landroid/support/v7/widget/AppCompatSeekBar;

    return-object v0
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->b:Landroid/widget/ImageButton;

    new-instance v1, Lmaz;

    invoke-direct {v1, p0}, Lmaz;-><init>(Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->c:Landroid/widget/ImageButton;

    new-instance v1, Lmba;

    invoke-direct {v1, p0}, Lmba;-><init>(Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->d:Landroid/support/v7/widget/AppCompatSeekBar;

    new-instance v1, Lmbb;

    invoke-direct {v1, p0}, Lmbb;-><init>(Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 112
    return-void
.end method

.method public setImageButtonPlay(I)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 131
    return-void
.end method

.method public setListener(Lmbc;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->a:Lmbc;

    .line 47
    return-void
.end method
