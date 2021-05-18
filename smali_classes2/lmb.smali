.class public Llmb;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llly;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Llly;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Llmb;->a:Llly;

    .line 131
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 132
    invoke-direct {p0, p2}, Llmb;->a(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method static synthetic a(Llmb;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Llmb;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 136
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llmb;->b:Landroid/widget/TextView;

    .line 137
    return-void
.end method
