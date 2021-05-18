.class public Llky;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llkt;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;


# direct methods
.method public constructor <init>(Llkt;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Llky;->a:Llkt;

    .line 172
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 173
    invoke-direct {p0, p2}, Llky;->a(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method static synthetic a(Llky;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Llky;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 177
    const v0, 0x7f1010f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llky;->b:Landroid/widget/FrameLayout;

    .line 178
    const v0, 0x7f1010f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llky;->c:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f1010f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Llky;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 180
    return-void
.end method

.method static synthetic b(Llky;)Lcom/santander/app/seguros/ui/widgets/SegurosTextView;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Llky;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    return-object v0
.end method

.method static synthetic c(Llky;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Llky;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method
