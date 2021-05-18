.class Lgei;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgeg;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lgeg;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lgei;->a:Lgeg;

    .line 61
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 62
    invoke-direct {p0, p2}, Lgei;->a(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lgei;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lgei;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f100e40

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgei;->b:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f100e41

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgei;->c:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f100e42

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgei;->d:Landroid/widget/ImageView;

    .line 69
    return-void
.end method

.method static synthetic b(Lgei;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lgei;->c:Landroid/widget/TextView;

    return-object v0
.end method
