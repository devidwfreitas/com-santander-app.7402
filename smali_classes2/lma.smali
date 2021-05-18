.class public Llma;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llly;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Llly;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Llma;->a:Llly;

    .line 145
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 146
    invoke-direct {p0, p2}, Llma;->a(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method static synthetic a(Llma;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Llma;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 150
    const v0, 0x7f100453

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llma;->b:Landroid/widget/Button;

    .line 151
    return-void
.end method
