.class public Lllo;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public a:Lcom/santander/app/components/view/SantanderTextView;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/LinearLayout;

.field final synthetic d:Lllm;


# direct methods
.method public constructor <init>(Lllm;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lllo;->d:Lllm;

    .line 82
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    invoke-direct {p0, p2}, Lllo;->a(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f10038a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lllo;->a:Lcom/santander/app/components/view/SantanderTextView;

    .line 88
    const v0, 0x7f100157

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lllo;->b:Landroid/view/View;

    .line 89
    const v0, 0x7f1006e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lllo;->c:Landroid/widget/LinearLayout;

    .line 90
    return-void
.end method
