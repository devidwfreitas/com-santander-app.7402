.class Llvc;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lluv;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lluv;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Llvc;->a:Lluv;

    .line 294
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 295
    invoke-direct {p0, p2}, Llvc;->a(Landroid/view/View;)V

    .line 296
    return-void
.end method

.method static synthetic a(Llvc;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Llvc;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 299
    const v0, 0x7f1002d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llvc;->b:Landroid/widget/Button;

    .line 300
    return-void
.end method
